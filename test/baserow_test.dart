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

        when(mockClient.post(
          Uri.parse('http://localhost/api/user-files/upload-via-url/'),
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
        when(mockClient.post(
          Uri.parse('http://localhost/api/user-files/upload-via-url/'),
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

    group('createRow', () {
      test('creates a single row successfully', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/');
        final fields = {'field_1': 'New Value'};

        when(mockClient.post(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode(fields),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'id': 1,
              'order': 1,
              'field_1': 'New Value',
            }),
            200));

        final row = await client.createRow(1, fields);
        expect(row.id, equals(1));
        expect(row.fields['field_1'], equals('New Value'));
      });

      test('respects userFieldNames parameter', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/')
            .replace(queryParameters: {'user_field_names': 'true'});
        final fields = {'Name': 'New Value'};

        when(mockClient.post(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode(fields),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'id': 1,
              'order': 1,
              'Name': 'New Value',
            }),
            200));

        final row = await client.createRow(1, fields, userFieldNames: true);
        expect(row.id, equals(1));
        expect(row.fields['Name'], equals('New Value'));
      });

      test('handles error response', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/');
        final fields = {'field_1': 'New Value'};

        when(mockClient.post(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode(fields),
        )).thenAnswer((_) async => http.Response('Invalid field value', 400));

        expect(
          () => client.createRow(1, fields),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            400,
          )),
        );
      });
    });

    group('createRows', () {
      test('creates multiple rows successfully', () async {
        final uri =
            Uri.parse('http://localhost/api/database/rows/table/1/batch/');
        final fieldsList = [
          {'field_1': 'Value 1'},
          {'field_1': 'Value 2'},
        ];

        when(mockClient.post(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode({'items': fieldsList}),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'items': [
                {
                  'id': 1,
                  'order': 1,
                  'field_1': 'Value 1',
                },
                {
                  'id': 2,
                  'order': 2,
                  'field_1': 'Value 2',
                },
              ],
            }),
            200));

        final rows = await client.createRows(1, fieldsList);
        expect(rows, hasLength(2));
        expect(rows[0].fields['field_1'], equals('Value 1'));
        expect(rows[1].fields['field_1'], equals('Value 2'));
      });

      test('respects userFieldNames parameter', () async {
        final uri =
            Uri.parse('http://localhost/api/database/rows/table/1/batch/')
                .replace(queryParameters: {'user_field_names': 'true'});
        final fieldsList = [
          {'Name': 'Value 1'},
          {'Name': 'Value 2'},
        ];

        when(mockClient.post(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode({'items': fieldsList}),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'items': [
                {
                  'id': 1,
                  'order': 1,
                  'Name': 'Value 1',
                },
                {
                  'id': 2,
                  'order': 2,
                  'Name': 'Value 2',
                },
              ],
            }),
            200));

        final rows =
            await client.createRows(1, fieldsList, userFieldNames: true);
        expect(rows, hasLength(2));
        expect(rows[0].fields['Name'], equals('Value 1'));
        expect(rows[1].fields['Name'], equals('Value 2'));
      });

      test('handles error response', () async {
        final uri =
            Uri.parse('http://localhost/api/database/rows/table/1/batch/');
        final fieldsList = [
          {'field_1': 'Value 1'},
          {'field_1': 'Value 2'},
        ];

        when(mockClient.post(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode({'items': fieldsList}),
        )).thenAnswer((_) async => http.Response('Invalid field values', 400));

        expect(
          () => client.createRows(1, fieldsList),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            400,
          )),
        );
      });
    });

    group('updateRow', () {
      test('updates a single row successfully', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/1/');
        final fields = {'field_1': 'Updated Value'};

        when(mockClient.patch(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode(fields),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'id': 1,
              'order': 1,
              'field_1': 'Updated Value',
            }),
            200));

        final row = await client.updateRow(1, 1, fields);
        expect(row.id, equals(1));
        expect(row.fields['field_1'], equals('Updated Value'));
      });

      test('respects userFieldNames parameter', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/1/')
            .replace(queryParameters: {'user_field_names': 'true'});
        final fields = {'Name': 'Updated Value'};

        when(mockClient.patch(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode(fields),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'id': 1,
              'order': 1,
              'Name': 'Updated Value',
            }),
            200));

        final row = await client.updateRow(1, 1, fields, userFieldNames: true);
        expect(row.id, equals(1));
        expect(row.fields['Name'], equals('Updated Value'));
      });

      test('handles error response', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/1/');
        final fields = {'field_1': 'Updated Value'};

        when(mockClient.patch(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode(fields),
        )).thenAnswer((_) async => http.Response('Invalid field value', 400));

        expect(
          () => client.updateRow(1, 1, fields),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            400,
          )),
        );
      });
    });

    group('updateRows', () {
      test('updates multiple rows successfully', () async {
        final uri =
            Uri.parse('http://localhost/api/database/rows/table/1/batch/');
        final updates = {
          1: {'field_1': 'Updated Value 1'},
          2: {'field_1': 'Updated Value 2'},
        };

        when(mockClient.patch(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode({
            'items': [
              {'id': 1, ...updates[1]!},
              {'id': 2, ...updates[2]!},
            ]
          }),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'items': [
                {
                  'id': 1,
                  'order': 1,
                  'field_1': 'Updated Value 1',
                },
                {
                  'id': 2,
                  'order': 2,
                  'field_1': 'Updated Value 2',
                },
              ],
            }),
            200));

        final rows = await client.updateRows(1, updates);
        expect(rows, hasLength(2));
        expect(rows[0].fields['field_1'], equals('Updated Value 1'));
        expect(rows[1].fields['field_1'], equals('Updated Value 2'));
      });

      test('respects userFieldNames parameter', () async {
        final uri =
            Uri.parse('http://localhost/api/database/rows/table/1/batch/')
                .replace(queryParameters: {'user_field_names': 'true'});
        final updates = {
          1: {'Name': 'Updated Value 1'},
          2: {'Name': 'Updated Value 2'},
        };

        when(mockClient.patch(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode({
            'items': [
              {'id': 1, ...updates[1]!},
              {'id': 2, ...updates[2]!},
            ]
          }),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'items': [
                {
                  'id': 1,
                  'order': 1,
                  'Name': 'Updated Value 1',
                },
                {
                  'id': 2,
                  'order': 2,
                  'Name': 'Updated Value 2',
                },
              ],
            }),
            200));

        final rows = await client.updateRows(1, updates, userFieldNames: true);
        expect(rows, hasLength(2));
        expect(rows[0].fields['Name'], equals('Updated Value 1'));
        expect(rows[1].fields['Name'], equals('Updated Value 2'));
      });

      test('handles error response', () async {
        final uri =
            Uri.parse('http://localhost/api/database/rows/table/1/batch/');
        final updates = {
          1: {'field_1': 'Updated Value 1'},
          2: {'field_1': 'Updated Value 2'},
        };

        when(mockClient.patch(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode({
            'items': [
              {'id': 1, ...updates[1]!},
              {'id': 2, ...updates[2]!},
            ]
          }),
        )).thenAnswer((_) async => http.Response('Invalid field values', 400));

        expect(
          () => client.updateRows(1, updates),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            400,
          )),
        );
      });
    });

    group('logout', () {
      test('successfully logs out with JWT auth', () async {
        final mockClient = MockClient();
        final refreshToken = 'refresh-token';
        var tokenRefreshCount = 0;

        final client = BaserowClient(
          config: BaserowConfig(
            baseUrl: 'http://localhost',
            token: 'test-token',
            refreshToken: refreshToken,
            authType: BaserowAuthType.jwt,
            refreshInterval: const Duration(minutes: 1),
          ),
          httpClient: mockClient,
        );

        final blacklistUri = Uri.parse('http://localhost/api/user/token-blacklist/');
        when(mockClient.post(
          blacklistUri,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({'refresh': refreshToken}),
        )).thenAnswer((_) async => http.Response('', 204));

        await client.logout();

        verify(mockClient.post(
          blacklistUri,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({'refresh': refreshToken}),
        )).called(1);

        expect(client.config.token, isNull);
        expect(client.config.refreshToken, isNull);
      });

      test('throws error when not using JWT auth', () async {
        final client = BaserowClient(
          config: const BaserowConfig(
            baseUrl: 'http://localhost',
            token: 'test-token',
            authType: BaserowAuthType.token,
          ),
          httpClient: MockClient(),
        );

        expect(
          () => client.logout(),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            400,
          )),
        );
      });

      test('throws error when refresh token is missing', () async {
        final client = BaserowClient(
          config: const BaserowConfig(
            baseUrl: 'http://localhost',
            token: 'test-token',
            authType: BaserowAuthType.jwt,
          ),
          httpClient: MockClient(),
        );

        expect(
          () => client.logout(),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            400,
          )),
        );
      });

      test('handles blacklist request failure', () async {
        final mockClient = MockClient();
        final refreshToken = 'refresh-token';

        final client = BaserowClient(
          config: BaserowConfig(
            baseUrl: 'http://localhost',
            token: 'test-token',
            refreshToken: refreshToken,
            authType: BaserowAuthType.jwt,
          ),
          httpClient: mockClient,
        );

        final blacklistUri = Uri.parse('http://localhost/api/user/token-blacklist/');
        when(mockClient.post(
          blacklistUri,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({'refresh': refreshToken}),
        )).thenAnswer((_) async => http.Response('Invalid token', 401));

        expect(
          () => client.logout(),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            401,
          )),
        );

        // Tokens should not be cleared on failed logout
        expect(client.config.token, isNotNull);
        expect(client.config.refreshToken, isNotNull);
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
