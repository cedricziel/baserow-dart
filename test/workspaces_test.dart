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

    test('listWorkspaces returns paginated list of workspaces', () async {
      final mockResponse = {
        "count": 2,
        "next": null,
        "previous": null,
        "results": [
          {
            "id": 81,
            "name": "Cedric Ziel's workspace",
            "users": [
              {"id": 1, "email": "mail@example.com", "permissions": "ADMIN"}
            ],
            "application_count": 5,
            "row_count": 0,
            "storage_usage": null,
            "seats_taken": null,
            "free_users": null,
            "created_on": "2024-07-27T20:48:01.761786Z"
          },
          {
            "id": 190,
            "name": "Foo",
            "users": [
              {"id": 1, "email": "mail@example.com", "permissions": "ADMIN"}
            ],
            "application_count": 0,
            "row_count": 0,
            "storage_usage": null,
            "seats_taken": null,
            "free_users": null,
            "created_on": "2025-01-05T09:32:23.979228Z"
          }
        ]
      };

      when(mockClient.get(
        Uri.parse('http://localhost/api/workspaces/'),
        headers: argThat(isA<Map<String, String>>(), named: 'headers'),
      )).thenAnswer((_) async => http.Response(
            json.encode(mockResponse),
            200,
          ));

      final workspaces = await client.listWorkspaces();

      expect(workspaces, isA<List<Workspace>>());
      expect(workspaces.length, equals(2));

      // First workspace assertions
      expect(workspaces[0].id, equals(81));
      expect(workspaces[0].name, equals("Cedric Ziel's workspace"));
      expect(workspaces[0].users.length, equals(1));
      expect(workspaces[0].users[0].email, equals("mail@example.com"));
      expect(workspaces[0].users[0].permissions, equals("ADMIN"));
      expect(workspaces[0].applicationCount, equals(5));
      expect(workspaces[0].rowCount, equals(0));
      expect(workspaces[0].storageUsage, isNull);
      expect(workspaces[0].seatsTaken, isNull);
      expect(workspaces[0].freeUsers, isNull);
      expect(workspaces[0].createdOn,
          equals(DateTime.parse("2024-07-27T20:48:01.761786Z")));

      // Second workspace assertions
      expect(workspaces[1].id, equals(190));
      expect(workspaces[1].name, equals("Foo"));
      expect(workspaces[1].applicationCount, equals(0));
      expect(workspaces[1].createdOn,
          equals(DateTime.parse("2025-01-05T09:32:23.979228Z")));
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
