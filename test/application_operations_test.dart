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
    test(
        'listAllApplications returns list of database and builder applications',
        () async {
      final mockResponse = [
        {
          'id': 1,
          'name': 'Test Database App',
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
        },
        {
          'id': 2,
          'name': 'Test Builder App',
          'order': 2,
          'type': 'builder',
          'workspace': {
            'id': 1,
            'name': 'Test Workspace',
            'generative_ai_models_enabled': {}
          },
          'created_on': '2023-01-01T00:00:00Z',
          'pages': [
            {
              'id': 1,
              'name': 'Home',
              'path': '/',
              'path_params': [],
              'order': 1,
              'builder_id': 2,
              'shared': true,
              'visibility': 'all',
              'role_type': 'allow_all',
              'roles': null
            }
          ],
          'theme': {'primary_color': '#007bff', 'secondary_color': '#6c757d'},
          'favicon_file': null,
          'login_page_id': null
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

      expect(applications, hasLength(2));

      // Test database application
      final dbApp = applications[0];
      expect(dbApp.id, equals(1));
      expect(dbApp.name, equals('Test Database App'));
      expect(dbApp.type, equals('database'));
      expect(dbApp.workspace.id, equals(1));
      expect(dbApp.tables, hasLength(1));
      expect(dbApp.tables.first.id, equals(1));
      expect(dbApp.tables.first.name, equals('Test Table'));
      expect(dbApp.pages, isNull);
      expect(dbApp.theme, isNull);

      // Test builder application
      final builderApp = applications[1];
      expect(builderApp.id, equals(2));
      expect(builderApp.name, equals('Test Builder App'));
      expect(builderApp.type, equals('builder'));
      expect(builderApp.workspace.id, equals(1));
      expect(builderApp.tables, isEmpty);
      expect(builderApp.pages, hasLength(1));
      expect(builderApp.pages?.first.id, equals(1));
      expect(builderApp.pages?.first.name, equals('Home'));
      expect(builderApp.pages?.first.path, equals('/'));
      expect(builderApp.theme?.primaryColor, equals('#007bff'));
      expect(builderApp.theme?.secondaryColor, equals('#6c757d'));
    });

    test('listAllApplications handles empty list response', () async {
      when(mockClient.get(
        Uri.parse('http://localhost/api/applications/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            jsonEncode([]),
            200,
          ));

      final applications = await client.listAllApplications();
      expect(applications, isEmpty);
    });

    test('listAllApplications throws when response is not a list', () async {
      when(mockClient.get(
        Uri.parse('http://localhost/api/applications/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            jsonEncode({'data': 'not a list'}),
            200,
          ));

      expect(
        () => client.listAllApplications(),
        throwsA(predicate((e) =>
            e is BaserowException &&
            e.statusCode == 0 &&
            e.message.contains('Response is not a list'))),
      );
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

    test('getApplication returns database application', () async {
      final mockResponse = {
        'id': 1,
        'name': 'Test Database App',
        'order': 1,
        'type': 'database',
        'workspace': {
          'id': 1,
          'name': 'Test Workspace',
          'generative_ai_models_enabled': {}
        },
        'created_on': '2023-01-01T00:00:00Z',
        'tables': []
      };

      when(mockClient.get(
        Uri.parse('http://localhost/api/applications/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            jsonEncode(mockResponse),
            200,
          ));

      final application = await client.getApplication(1);

      expect(application.id, equals(1));
      expect(application.name, equals('Test Database App'));
      expect(application.type, equals('database'));
      expect(application.workspace.id, equals(1));
      expect(application.tables, isEmpty);
      expect(application.pages, isNull);
      expect(application.theme, isNull);
    });

    test('getApplication returns builder application', () async {
      final mockResponse = {
        'id': 2,
        'name': 'Test Builder App',
        'order': 2,
        'type': 'builder',
        'workspace': {
          'id': 1,
          'name': 'Test Workspace',
          'generative_ai_models_enabled': {}
        },
        'created_on': '2023-01-01T00:00:00Z',
        'pages': [
          {
            'id': 1,
            'name': 'Home',
            'path': '/',
            'path_params': [],
            'order': 1,
            'builder_id': 2,
            'shared': true,
            'visibility': 'all',
            'role_type': 'allow_all',
            'roles': null
          }
        ],
        'theme': {'primary_color': '#007bff', 'secondary_color': '#6c757d'},
        'favicon_file': null,
        'login_page_id': null
      };

      when(mockClient.get(
        Uri.parse('http://localhost/api/applications/2/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            jsonEncode(mockResponse),
            200,
          ));

      final application = await client.getApplication(2);

      expect(application.id, equals(2));
      expect(application.name, equals('Test Builder App'));
      expect(application.type, equals('builder'));
      expect(application.workspace.id, equals(1));
      expect(application.tables, isEmpty);
      expect(application.pages, hasLength(1));
      expect(application.pages?.first.id, equals(1));
      expect(application.pages?.first.name, equals('Home'));
      expect(application.theme?.primaryColor, equals('#007bff'));
    });

    test('getApplication throws when user not in workspace', () async {
      when(mockClient.get(
        Uri.parse('http://localhost/api/applications/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'error': 'ERROR_USER_NOT_IN_GROUP',
              'detail': 'User not in workspace'
            }),
            200,
          ));

      expect(
        () => client.getApplication(1),
        throwsA(predicate((e) =>
            e is BaserowException &&
            e.statusCode == 400 &&
            e.message == 'User not in workspace')),
      );
    });

    test('getApplication throws when application does not exist', () async {
      when(mockClient.get(
        Uri.parse('http://localhost/api/applications/999/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'error': 'ERROR_APPLICATION_DOES_NOT_EXIST',
              'detail': 'Application does not exist'
            }),
            200,
          ));

      expect(
        () => client.getApplication(999),
        throwsA(predicate((e) =>
            e is BaserowException &&
            e.statusCode == 404 &&
            e.message == 'Application does not exist')),
      );
    });

    test('getApplication handles invalid response format', () async {
      when(mockClient.get(
        Uri.parse('http://localhost/api/applications/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            'invalid json',
            200,
          ));

      expect(
        () => client.getApplication(1),
        throwsA(isA<BaserowException>()),
      );
    });

    group('workspaceListApplications', () {
      test('returns list of applications in workspace', () async {
        final mockResponse = [
          {
            'id': 1,
            'name': 'Test Database App',
            'order': 1,
            'type': 'database',
            'workspace': {
              'id': 1,
              'name': 'Test Workspace',
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
          },
          {
            'id': 2,
            'name': 'Test Builder App',
            'order': 2,
            'type': 'builder',
            'workspace': {
              'id': 1,
              'name': 'Test Workspace',
              'generative_ai_models_enabled': {}
            },
            'created_on': '2023-01-01T00:00:00Z',
            'pages': [
              {
                'id': 1,
                'name': 'Home',
                'path': '/',
                'path_params': [],
                'order': 1,
                'builder_id': 2,
                'shared': true,
                'visibility': 'all',
                'role_type': 'allow_all',
                'roles': null
              }
            ],
            'theme': {'primary_color': '#007bff', 'secondary_color': '#6c757d'}
          }
        ];

        when(mockClient.get(
          Uri.parse('http://localhost/api/applications/workspace/1/'),
          headers: anyNamed('headers'),
        )).thenAnswer((_) async => http.Response(
              jsonEncode(mockResponse),
              200,
            ));

        final applications = await client.workspaceListApplications(1);

        expect(applications, hasLength(2));
        expect(applications[0].id, equals(1));
        expect(applications[0].name, equals('Test Database App'));
        expect(applications[0].type, equals('database'));
        expect(applications[1].id, equals(2));
        expect(applications[1].name, equals('Test Builder App'));
        expect(applications[1].type, equals('builder'));
      });

      test('handles empty list response', () async {
        when(mockClient.get(
          Uri.parse('http://localhost/api/applications/workspace/1/'),
          headers: anyNamed('headers'),
        )).thenAnswer((_) async => http.Response(
              jsonEncode([]),
              200,
            ));

        final applications = await client.workspaceListApplications(1);
        expect(applications, isEmpty);
      });

      test('throws when user not in workspace', () async {
        when(mockClient.get(
          Uri.parse('http://localhost/api/applications/workspace/1/'),
          headers: anyNamed('headers'),
        )).thenAnswer((_) async => http.Response(
              jsonEncode([
                {
                  'error': 'ERROR_USER_NOT_IN_GROUP',
                  'detail': 'User not in workspace'
                }
              ]),
              200,
            ));

        expect(
          () => client.workspaceListApplications(1),
          throwsA(predicate((e) =>
              e is BaserowException &&
              e.statusCode == 400 &&
              e.message == 'User not in workspace')),
        );
      });

      test('throws when workspace does not exist', () async {
        when(mockClient.get(
          Uri.parse('http://localhost/api/applications/workspace/999/'),
          headers: anyNamed('headers'),
        )).thenAnswer((_) async => http.Response(
              jsonEncode([
                {
                  'error': 'ERROR_GROUP_DOES_NOT_EXIST',
                  'detail': 'Workspace does not exist'
                }
              ]),
              200,
            ));

        expect(
          () => client.workspaceListApplications(999),
          throwsA(predicate((e) =>
              e is BaserowException &&
              e.statusCode == 404 &&
              e.message == 'Workspace does not exist')),
        );
      });

      test('throws when response is not a list', () async {
        when(mockClient.get(
          Uri.parse('http://localhost/api/applications/workspace/1/'),
          headers: anyNamed('headers'),
        )).thenAnswer((_) async => http.Response(
              jsonEncode({'data': 'not a list'}),
              200,
            ));

        expect(
          () => client.workspaceListApplications(1),
          throwsA(predicate((e) =>
              e is BaserowException &&
              e.statusCode == 0 &&
              e.message == 'Response is not a list')),
        );
      });
    });
  });
}
