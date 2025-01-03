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

    group('uploadFile', () {
      test('successfully uploads file', () async {
        final fileBytes = utf8.encode('test file content');
        final filename = 'test.txt';
        final uploadResponse = {
          'url': 'https://files.baserow.io/user_files/test.txt',
          'thumbnails': {
            'tiny': {
              'url': 'https://files.baserow.io/thumbnails/tiny/test.txt',
              'width': 21,
              'height': 21
            },
            'small': {
              'url': 'https://files.baserow.io/thumbnails/small/test.txt',
              'width': 48,
              'height': 48
            }
          },
          'name': 'test.txt',
          'size': 16,
          'mime_type': 'text/plain',
          'is_image': false,
          'uploaded_at': '2024-01-01T12:00:00.000Z'
        };

        final uri = Uri.parse('http://localhost/api/user-files/upload-file/');

        when(mockClient.send(any)).thenAnswer((_) async {
          final response = http.StreamedResponse(
            Stream.value(utf8.encode(json.encode(uploadResponse))),
            200,
          );
          return response;
        });

        final response = await client.uploadFile(fileBytes, filename);

        expect(response.url, equals(uploadResponse['url']));
        expect(response.name, equals(uploadResponse['name']));
        expect(response.size, equals(uploadResponse['size']));
        expect(response.mimeType, equals(uploadResponse['mime_type']));
        expect(response.isImage, equals(uploadResponse['is_image']));
        expect(response.uploadedAt, equals(uploadResponse['uploaded_at']));
        expect(response.thumbnails.length, equals(2));
        expect(response.thumbnails['tiny']?.width, equals(21));
        expect(response.thumbnails['small']?.height, equals(48));
      });

      test('handles upload error', () async {
        final fileBytes = utf8.encode('test file content');
        final filename = 'test.txt';

        final uri = Uri.parse('http://localhost/api/user-files/upload-file/');

        when(mockClient.send(any)).thenAnswer((_) async {
          final response = http.StreamedResponse(
            Stream.value(utf8.encode('{"error": "File too large"}')),
            413,
          );
          return response;
        });

        expect(
          () => client.uploadFile(fileBytes, filename),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            413,
          )),
        );
      });

      test('parses response with missing optional fields', () async {
        final fileBytes = utf8.encode('test file content');
        final filename = 'test.txt';
        final uploadResponse = {
          'url': 'https://files.baserow.io/user_files/test.txt',
          'thumbnails': {},
          'name': 'test.txt',
          'size': 16,
          'mime_type': 'text/plain',
          'is_image': false,
          'uploaded_at': '2024-01-01T12:00:00.000Z'
        };

        when(mockClient.send(any)).thenAnswer((_) async {
          final response = http.StreamedResponse(
            Stream.value(utf8.encode(json.encode(uploadResponse))),
            200,
          );
          return response;
        });

        final response = await client.uploadFile(fileBytes, filename);

        expect(response.url, equals(uploadResponse['url']));
        expect(response.thumbnails, isEmpty);
        expect(response.imageWidth, isNull);
        expect(response.imageHeight, isNull);
      });
    });

    group('uploadFileViaUrl', () {
      test('successfully uploads file via URL', () async {
        final uploadResponse = {
          'url': 'https://files.baserow.io/user_files/test.png',
          'thumbnails': {
            'tiny': {
              'url': 'https://files.baserow.io/thumbnails/tiny/test.png',
              'width': 21,
              'height': 21
            },
            'small': {
              'url': 'https://files.baserow.io/thumbnails/small/test.png',
              'width': 48,
              'height': 48
            }
          },
          'name': 'test.png',
          'size': 229940,
          'mime_type': 'image/png',
          'is_image': true,
          'image_width': 1280,
          'image_height': 585,
          'uploaded_at': '2024-01-01T12:00:00.000Z'
        };

        final uri =
            Uri.parse('http://localhost/api/user-files/upload-via-url/');
        when(mockClient.post(
          uri,
          headers: anyNamed('headers'),
          body: jsonEncode({'url': 'https://example.com/image.png'}),
        )).thenAnswer((_) async => http.Response(
              jsonEncode(uploadResponse),
              200,
            ));

        final response =
            await client.uploadFileViaUrl('https://example.com/image.png');

        expect(response.url, equals(uploadResponse['url']));
        expect(response.name, equals(uploadResponse['name']));
        expect(response.size, equals(uploadResponse['size']));
        expect(response.mimeType, equals(uploadResponse['mime_type']));
        expect(response.isImage, equals(uploadResponse['is_image']));
        expect(response.imageWidth, equals(uploadResponse['image_width']));
        expect(response.imageHeight, equals(uploadResponse['image_height']));
        expect(response.uploadedAt, equals(uploadResponse['uploaded_at']));
        expect(response.thumbnails.length, equals(2));
        expect(response.thumbnails['tiny']?.width, equals(21));
        expect(response.thumbnails['small']?.height, equals(48));
      });

      test('handles upload error', () async {
        final uri =
            Uri.parse('http://localhost/api/user-files/upload-via-url/');
        when(mockClient.post(
          uri,
          headers: anyNamed('headers'),
          body: jsonEncode({'url': 'https://example.com/invalid.png'}),
        )).thenAnswer((_) async => http.Response(
              '{"error": "Failed to download file"}',
              400,
            ));

        expect(
          () => client.uploadFileViaUrl('https://example.com/invalid.png'),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            400,
          )),
        );
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
