import 'dart:convert';

import 'package:baserow/baserow.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:fake_async/fake_async.dart';

import 'baserow_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('BaserowClient', () {
    late MockClient mockClient;
    late BaserowClient client;

    setUp(() {
      mockClient = MockClient();
      client = BaserowClient(
        config: const BaserowConfig(baseUrl: 'http://localhost'),
        httpClient: mockClient,
      );
    });

    tearDown(() {
      client.close();
    });

    group('listAllRows', () {
      test('fetches all rows with single page', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/')
            .replace(queryParameters: {
          'page': '1',
          'size': '100',
        });
        when(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 2,
              'next': null,
              'previous': null,
              'results': [
                {
                  'id': 1,
                  'order': 1,
                  'field_1': 'Row 1',
                },
                {
                  'id': 2,
                  'order': 2,
                  'field_1': 'Row 2',
                },
              ],
            }),
            200));

        final rows = await client.listAllRows(1);
        expect(rows, hasLength(2));
        expect(rows[0].fields['field_1'], equals('Row 1'));
        expect(rows[1].fields['field_1'], equals('Row 2'));
      });

      test('fetches all rows with multiple pages', () async {
        // First page
        final firstUri =
            Uri.parse('http://localhost/api/database/rows/table/1/')
                .replace(queryParameters: {
          'page': '1',
          'size': '100',
        });
        when(mockClient.get(
          firstUri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 4,
              'next': 'http://localhost/api/database/rows/table/1/?page=2',
              'previous': null,
              'results': [
                {
                  'id': 1,
                  'order': 1,
                  'field_1': 'Row 1',
                },
                {
                  'id': 2,
                  'order': 2,
                  'field_1': 'Row 2',
                },
              ],
            }),
            200));

        // Second page
        final secondUri =
            Uri.parse('http://localhost/api/database/rows/table/1/')
                .replace(queryParameters: {
          'page': '2',
          'size': '100',
        });
        when(mockClient.get(
          secondUri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 4,
              'next': null,
              'previous': 'http://localhost/api/database/rows/table/1/?page=1',
              'results': [
                {
                  'id': 3,
                  'order': 3,
                  'field_1': 'Row 3',
                },
                {
                  'id': 4,
                  'order': 4,
                  'field_1': 'Row 4',
                },
              ],
            }),
            200));

        final rows = await client.listAllRows(1);
        expect(rows, hasLength(4));
        expect(rows[0].fields['field_1'], equals('Row 1'));
        expect(rows[1].fields['field_1'], equals('Row 2'));
        expect(rows[2].fields['field_1'], equals('Row 3'));
        expect(rows[3].fields['field_1'], equals('Row 4'));
      });

      test('respects provided options', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/')
            .replace(queryParameters: {
          'page': '1',
          'size': '50',
          'order_by': '-field_1',
          'user_field_names': 'true',
        });

        when(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 1,
              'next': null,
              'previous': null,
              'results': [
                {
                  'id': 1,
                  'order': 1,
                  'field_1': 'Row 1',
                },
              ],
            }),
            200));

        await client.listAllRows(
          1,
          options: const ListRowsOptions(
            size: 50,
            orderBy: 'field_1',
            descending: true,
            userFieldNames: true,
          ),
        );

        verify(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).called(1);
      });
    });

    group('ListRowsOptions', () {
      test('toQueryParameters includes all parameters correctly', () {
        final options = ListRowsOptions(
          page: 2,
          size: 25,
          orderBy: 'name',
          descending: true,
          filters: [
            RowFilter(
              field: 'age',
              operator: FilterOperator.greaterThan,
              value: 18,
            ),
          ],
          includeFieldMetadata: true,
          viewId: 123,
          userFieldNames: true,
        );

        final params = options.toQueryParameters();

        expect(params['page'], equals('2'));
        expect(params['size'], equals('25'));
        expect(params['order_by'], equals('-name'));
        expect(params['filters'], isNotEmpty);
        expect(params['include'], equals('field_metadata'));
        expect(params['view_id'], equals('123'));
        expect(params['user_field_names'], equals('true'));
      });
    });

    group('JWT Authentication', () {
      test('automatically refreshes token on interval', () {
        return fakeAsync((async) {
          final mockClient = MockClient();
          var tokenRefreshCount = 0;
          var currentToken = 'initial-token';
          final refreshToken = 'refresh-token';

          final refreshUri =
              Uri.parse('http://localhost/api/user/token-refresh/');

          when(mockClient.post(
            refreshUri,
            headers: anyNamed('headers'),
            body: anyNamed('body'),
          )).thenAnswer((_) async {
            tokenRefreshCount++;
            currentToken = 'new-token-$tokenRefreshCount';
            return http.Response(
              jsonEncode({'token': currentToken}),
              200,
            );
          });

          final client = BaserowClient(
            config: BaserowConfig(
              baseUrl: 'http://localhost',
              token: 'initial-token',
              refreshToken: refreshToken,
              authType: BaserowAuthType.jwt,
              refreshInterval: const Duration(minutes: 1),
              onTokenRefresh: (token, _) {
                expect(token, equals(currentToken));
              },
            ),
            httpClient: mockClient,
          );

          async.elapse(const Duration(minutes: 3));

          verify(mockClient.post(
            refreshUri,
            headers: anyNamed('headers'),
            body: anyNamed('body'),
          )).called(3);
          expect(client.config.token, equals('new-token-3'));

          client.close();
        });
      });

      test('sets up refresh timer after successful login', () async {
        final mockClient = MockClient();
        final loginResponse = {
          'token': 'new-token',
          'refresh_token': 'new-refresh-token',
          'user': {'id': 1, 'username': 'test'},
        };

        final loginUri = Uri.parse('http://localhost/api/user/token-auth/');

        when(mockClient.post(
          loginUri,
          headers: anyNamed('headers'),
          body: anyNamed('body'),
        )).thenAnswer((_) async => http.Response(
              jsonEncode(loginResponse),
              200,
            ));

        final client = BaserowClient(
          config: BaserowConfig(
            baseUrl: 'http://localhost',
            authType: BaserowAuthType.jwt,
          ),
          httpClient: mockClient,
        );

        final response = await client.login('test@example.com', 'password');

        expect(response.token, equals('new-token'));
        expect(response.refreshToken, equals('new-refresh-token'));
        expect(client.config.token, equals('new-token'));
        expect(client.config.refreshToken, equals('new-refresh-token'));

        client.close();
      });

      test('handles refresh token failure gracefully', () {
        return fakeAsync((async) {
          final mockClient = MockClient();
          var refreshAttempts = 0;

          final refreshUri =
              Uri.parse('http://localhost/api/user/token-refresh/');

          when(mockClient.post(
            refreshUri,
            headers: anyNamed('headers'),
            body: anyNamed('body'),
          )).thenAnswer((_) async {
            refreshAttempts++;
            return http.Response('Unauthorized', 401);
          });

          final client = BaserowClient(
            config: BaserowConfig(
              baseUrl: 'http://localhost',
              token: 'initial-token',
              refreshToken: 'refresh-token',
              authType: BaserowAuthType.jwt,
              refreshInterval: const Duration(minutes: 1),
            ),
            httpClient: mockClient,
          );

          async.elapse(const Duration(minutes: 1));
          expect(refreshAttempts, equals(1));
          expect(client.config.token, equals('initial-token'));

          client.close();
        });
      });
    });

    group('streamRows', () {
      test('streams all rows with single page', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/')
            .replace(queryParameters: {
          'page': '1',
          'size': '100',
        });
        when(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 2,
              'next': null,
              'previous': null,
              'results': [
                {
                  'id': 1,
                  'order': 1,
                  'field_1': 'Row 1',
                },
                {
                  'id': 2,
                  'order': 2,
                  'field_1': 'Row 2',
                },
              ],
            }),
            200));

        final rows = await client.streamRows(1).toList();
        expect(rows, hasLength(2));
        expect(rows[0].fields['field_1'], equals('Row 1'));
        expect(rows[1].fields['field_1'], equals('Row 2'));
      });

      test('streams all rows with multiple pages', () async {
        // First page
        final firstUri =
            Uri.parse('http://localhost/api/database/rows/table/1/')
                .replace(queryParameters: {
          'page': '1',
          'size': '100',
        });
        when(mockClient.get(
          firstUri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 4,
              'next': 'http://localhost/api/database/rows/table/1/?page=2',
              'previous': null,
              'results': [
                {
                  'id': 1,
                  'order': 1,
                  'field_1': 'Row 1',
                },
                {
                  'id': 2,
                  'order': 2,
                  'field_1': 'Row 2',
                },
              ],
            }),
            200));

        // Second page
        final secondUri =
            Uri.parse('http://localhost/api/database/rows/table/1/')
                .replace(queryParameters: {
          'page': '2',
          'size': '100',
        });
        when(mockClient.get(
          secondUri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 4,
              'next': null,
              'previous': 'http://localhost/api/database/rows/table/1/?page=1',
              'results': [
                {
                  'id': 3,
                  'order': 3,
                  'field_1': 'Row 3',
                },
                {
                  'id': 4,
                  'order': 4,
                  'field_1': 'Row 4',
                },
              ],
            }),
            200));

        final rows = await client.streamRows(1).toList();
        expect(rows, hasLength(4));
        expect(rows[0].fields['field_1'], equals('Row 1'));
        expect(rows[1].fields['field_1'], equals('Row 2'));
        expect(rows[2].fields['field_1'], equals('Row 3'));
        expect(rows[3].fields['field_1'], equals('Row 4'));
      });

      test('respects provided options', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/')
            .replace(queryParameters: {
          'page': '1',
          'size': '50',
          'order_by': '-field_1',
          'user_field_names': 'true',
        });

        when(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 1,
              'next': null,
              'previous': null,
              'results': [
                {
                  'id': 1,
                  'order': 1,
                  'field_1': 'Row 1',
                },
              ],
            }),
            200));

        await client
            .streamRows(
              1,
              options: const ListRowsOptions(
                size: 50,
                orderBy: 'field_1',
                descending: true,
                userFieldNames: true,
              ),
            )
            .toList();

        verify(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).called(1);
      });
    });
  });
}
