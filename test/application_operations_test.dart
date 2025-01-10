import 'dart:convert';

import 'package:baserow/baserow.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<http.Client>()])
import 'application_operations_test.mocks.dart';

void main() {
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

  group('ApplicationOperations', () {
    test('listAllApplications returns list of applications', () async {
      final mockResponse = [
        {
          'id': 1,
          'name': 'Test App',
          'order': 1,
          'type': 'database',
          'workspace': {
            'id': 1,
            'name': 'Test Workspace',
            'users': [],
            'order': 1,
            'permissions': 'ADMIN',
            'unread_notifications_count': 0,
            'generative_ai_models_enabled': {}
          },
          'created_on': '2023-01-01T00:00:00Z',
          'tables': [
            {
              'id': 1,
              'name': 'Test Table',
              'order': 1,
              'database_id': 1,
              'data_sync': null
            }
          ]
        }
      ];

      when(mockClient.get(
        Uri.parse('http://localhost/api/applications/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            jsonEncode(mockResponse),
            200,
          ));

      final applications = await client.listAllApplications();

      expect(applications, hasLength(1));
      expect(applications[0].id, equals(1));
      expect(applications[0].name, equals('Test App'));
      expect(applications[0].type, equals('database'));
      expect(applications[0].workspace.id, equals(1));
      expect(applications[0].tables, hasLength(1));
      expect(applications[0].tables[0].id, equals(1));
      expect(applications[0].tables[0].name, equals('Test Table'));
    });

    test('listAllApplications handles error response', () async {
      when(mockClient.get(
        Uri.parse('http://localhost/api/applications/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            jsonEncode({'error': 'ERROR_USER_NOT_IN_GROUP'}),
            400,
          ));

      expect(
        () => client.listAllApplications(),
        throwsA(isA<BaserowException>()),
      );
    });
  });
}
