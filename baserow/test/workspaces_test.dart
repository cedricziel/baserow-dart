import 'dart:convert';

import 'package:baserow/baserow.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'baserow_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('Workspace Operations', () {
    late MockClient mockClient;
    late BaserowClient client;

    setUp(() {
      mockClient = MockClient();
      client = BaserowClient(
        config: BaserowConfig(
          baseUrl: 'http://localhost',
          token: 'test_token',
        ),
        httpClient: mockClient,
      );
    });

    test('listWorkspaces returns list of workspaces', () async {
      final mockResponse = [
        {
          "id": 1,
          "name": "Acme Corp",
          "users": [
            {
              "id": 10,
              "name": "John Doe",
              "email": "john@example.com",
              "workspace": 1,
              "permissions": "ADMIN",
              "created_on": "2024-01-01T12:00:00Z",
              "user_id": 10,
              "to_be_deleted": false
            }
          ],
          "order": 1,
          "permissions": "ADMIN",
          "unread_notifications_count": 0,
          "generative_ai_models_enabled": {}
        }
      ];

      when(mockClient.get(
        Uri.parse('http://localhost/api/workspaces/'),
        headers: argThat(isA<Map<String, String>>(), named: 'headers'),
      )).thenAnswer((_) async => http.Response(
            json.encode(mockResponse),
            200,
          ));

      final workspaces = await client.listWorkspaces();

      expect(workspaces, isA<List<Workspace>>());
      expect(workspaces.length, equals(1));
      expect(workspaces[0].id, equals(1));
      expect(workspaces[0].name, equals("Acme Corp"));
      expect(workspaces[0].users?.length, equals(1));
      expect(workspaces[0].users?.first.name, equals("John Doe"));
      expect(workspaces[0].permissions, equals("ADMIN"));
      expect(workspaces[0].unreadNotificationsCount, equals(0));
      expect(
          workspaces[0].generativeAiModelsEnabled, isA<Map<String, dynamic>>());
    });

    test('listWorkspaces handles error response', () async {
      when(mockClient.get(
        Uri.parse('http://localhost/api/workspaces/'),
        headers: argThat(isA<Map<String, String>>(), named: 'headers'),
      )).thenAnswer((_) async => http.Response(
            'Server Error',
            500,
          ));

      expect(
        () => client.listWorkspaces(),
        throwsA(isA<BaserowException>()),
      );
    });

    test('listWorkspaces handles invalid response format', () async {
      when(mockClient.get(
        Uri.parse('http://localhost/api/workspaces/'),
        headers: argThat(isA<Map<String, String>>(), named: 'headers'),
      )).thenAnswer((_) async => http.Response(
            '{"key": "value"}', // Not a list
            200,
          ));

      expect(
        () => client.listWorkspaces(),
        throwsA(isA<BaserowException>()),
      );
    });
  });
}
