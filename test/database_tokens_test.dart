import 'dart:convert';

import 'package:baserow/baserow.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'database_tokens_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('Database Tokens', () {
    late MockClient mockClient;
    late BaserowClient client;

    setUp(() {
      mockClient = MockClient();
      client = BaserowClient(
        config: BaserowConfig(baseUrl: 'http://localhost'),
        httpClient: mockClient,
      );
    });

    test('getDatabaseToken returns token', () async {
      final mockResponse = {
        'id': 1,
        'name': 'Test Token',
        'workspace': 1,
        'key': 'test-key-123',
        'permissions': {
          'create': true,
          'read': true,
          'update': true,
          'delete': true,
        },
      };

      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tokens/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            jsonEncode(mockResponse),
            200,
          ));

      final token = await client.getDatabaseToken(1);

      expect(token.id, equals(1));
      expect(token.name, equals('Test Token'));
      expect(token.workspace, equals(1));
      expect(token.key, equals('test-key-123'));
      expect(token.permissions.create, isTrue);
      expect(token.permissions.read, isTrue);
      expect(token.permissions.update, isTrue);
      expect(token.permissions.delete, isTrue);
    });

    test('getDatabaseToken throws when user not in workspace', () async {
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tokens/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'error': 'ERROR_USER_NOT_IN_GROUP',
              'detail': 'User not in workspace',
            }),
            400,
          ));

      expect(
        () => client.getDatabaseToken(1),
        throwsA(isA<BaserowException>().having(
          (e) => e.message,
          'message',
          'ERROR_USER_NOT_IN_GROUP',
        )),
      );
    });

    test('getDatabaseToken throws when token does not exist', () async {
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tokens/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'error': 'ERROR_TOKEN_DOES_NOT_EXIST',
              'detail': 'Token does not exist',
            }),
            404,
          ));

      expect(
        () => client.getDatabaseToken(1),
        throwsA(isA<BaserowException>().having(
          (e) => e.message,
          'message',
          'ERROR_TOKEN_DOES_NOT_EXIST',
        )),
      );
    });

    test('listDatabaseTokens returns list of tokens', () async {
      final mockResponse = [
        {
          'id': 1,
          'name': 'Test Token',
          'workspace': 1,
          'key': 'test-key-123',
          'permissions': {
            'create': true,
            'read': true,
            'update': true,
            'delete': true,
          },
        },
        {
          'id': 2,
          'name': 'Limited Token',
          'workspace': 1,
          'key': 'limited-key-456',
          'permissions': {
            'create': false,
            'read': [
              ['database', 1],
              ['table', 10],
            ],
            'update': false,
            'delete': [],
          },
        },
      ];

      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tokens/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            json.encode(mockResponse),
            200,
          ));

      final tokens = await client.listDatabaseTokens();

      expect(tokens.length, 2);

      // Test first token
      expect(tokens[0].id, 1);
      expect(tokens[0].name, 'Test Token');
      expect(tokens[0].workspace, 1);
      expect(tokens[0].key, 'test-key-123');
      expect(tokens[0].permissions.create, true);
      expect(tokens[0].permissions.read, true);
      expect(tokens[0].permissions.update, true);
      expect(tokens[0].permissions.delete, true);

      // Test second token
      expect(tokens[1].id, 2);
      expect(tokens[1].name, 'Limited Token');
      expect(tokens[1].workspace, 1);
      expect(tokens[1].key, 'limited-key-456');
      expect(tokens[1].permissions.create, false);
      expect(
          tokens[1].permissions.read,
          equals([
            ['database', 1],
            ['table', 10],
          ]));
      expect(tokens[1].permissions.update, false);
      expect(tokens[1].permissions.delete, []);
    });

    test('listDatabaseTokens throws on non-list response', () async {
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tokens/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            json.encode({'error': 'Invalid response'}),
            200,
          ));

      expect(
        () => client.listDatabaseTokens(),
        throwsA(isA<BaserowException>().having(
          (e) => e.message,
          'message',
          'Response is not a list: _Map<String, dynamic>',
        )),
      );
    });

    test('createDatabaseToken creates new token', () async {
      final mockResponse = {
        'id': 1,
        'name': 'Test Token',
        'workspace': 1,
        'key': 'test-key-123',
        'permissions': {
          'create': true,
          'read': true,
          'update': true,
          'delete': true,
        },
      };

      when(mockClient.post(
        Uri.parse('http://localhost/api/database/tokens/'),
        headers: anyNamed('headers'),
        body: json.encode({
          'name': 'Test Token',
          'workspace': 1,
        }),
      )).thenAnswer((_) async => http.Response(
            json.encode(mockResponse),
            200,
          ));

      final token = await client.createDatabaseToken(
        name: 'Test Token',
        workspace: 1,
      );

      expect(token.id, 1);
      expect(token.name, 'Test Token');
      expect(token.workspace, 1);
      expect(token.key, 'test-key-123');
      expect(token.permissions.create, true);
      expect(token.permissions.read, true);
      expect(token.permissions.update, true);
      expect(token.permissions.delete, true);
    });

    test('createDatabaseToken throws when user not in workspace', () async {
      when(mockClient.post(
        Uri.parse('http://localhost/api/database/tokens/'),
        headers: anyNamed('headers'),
        body: json.encode({
          'name': 'Test Token',
          'workspace': 999,
        }),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'detail': 'ERROR_USER_NOT_IN_GROUP',
            }),
            400,
          ));

      expect(
        () => client.createDatabaseToken(
          name: 'Test Token',
          workspace: 999,
        ),
        throwsA(isA<BaserowException>().having(
          (e) => e.message,
          'message',
          'ERROR_USER_NOT_IN_GROUP',
        )),
      );
    });

    test('createDatabaseToken throws on validation error', () async {
      when(mockClient.post(
        Uri.parse('http://localhost/api/database/tokens/'),
        headers: anyNamed('headers'),
        body: json.encode({
          'name': 'A' * 101, // Name too long (>100 chars)
          'workspace': 1,
        }),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'detail': 'ERROR_REQUEST_BODY_VALIDATION',
            }),
            400,
          ));

      expect(
        () => client.createDatabaseToken(
          name: 'A' * 101,
          workspace: 1,
        ),
        throwsA(isA<BaserowException>().having(
          (e) => e.message,
          'message',
          'ERROR_REQUEST_BODY_VALIDATION',
        )),
      );
    });

    test('deleteDatabaseToken deletes token successfully', () async {
      when(mockClient.delete(
        Uri.parse('http://localhost/api/database/tokens/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response('', 204));

      await client.deleteDatabaseToken(1);
      // If no exception is thrown, the test passes
    });

    test('deleteDatabaseToken throws when token does not exist', () async {
      when(mockClient.delete(
        Uri.parse('http://localhost/api/database/tokens/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'error': 'ERROR_TOKEN_DOES_NOT_EXIST',
              'detail': 'Token does not exist',
            }),
            404,
          ));

      expect(
        () => client.deleteDatabaseToken(1),
        throwsA(isA<BaserowException>().having(
          (e) => e.message,
          'message',
          'ERROR_TOKEN_DOES_NOT_EXIST',
        )),
      );
    });

    test('deleteDatabaseToken throws when user not in workspace', () async {
      when(mockClient.delete(
        Uri.parse('http://localhost/api/database/tokens/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'error': 'ERROR_USER_NOT_IN_GROUP',
              'detail': 'User not in workspace',
            }),
            400,
          ));

      expect(
        () => client.deleteDatabaseToken(1),
        throwsA(isA<BaserowException>().having(
          (e) => e.message,
          'message',
          'ERROR_USER_NOT_IN_GROUP',
        )),
      );
    });
  });
}
