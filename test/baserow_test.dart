import 'dart:convert';
import 'package:baserow/baserow.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<http.Client>()])
import 'baserow_test.mocks.dart';

void main() {
  group('BaserowConfig', () {
    test('creates instance with required baseUrl', () {
      final config = BaserowConfig(baseUrl: 'https://api.baserow.io');
      expect(config.baseUrl, equals('https://api.baserow.io'));
      expect(config.token, isNull);
    });

    test('creates instance with optional token', () {
      final config = BaserowConfig(
        baseUrl: 'https://api.baserow.io',
        token: 'test-token',
      );
      expect(config.baseUrl, equals('https://api.baserow.io'));
      expect(config.token, equals('test-token'));
      expect(config.authType, equals(BaserowAuthType.token));
    });

    test('creates instance with JWT auth type', () {
      final config = BaserowConfig(
        baseUrl: 'https://api.baserow.io',
        token: 'jwt-token',
        authType: BaserowAuthType.jwt,
      );
      expect(config.baseUrl, equals('https://api.baserow.io'));
      expect(config.token, equals('jwt-token'));
      expect(config.authType, equals(BaserowAuthType.jwt));
    });
  });

  group('AuthResponse', () {
    test('creates from JSON', () {
      final json = {
        'token': 'jwt-token',
        'refresh_token': 'refresh-token',
        'user': {
          'id': 1,
          'email': 'test@example.com',
        },
      };

      final response = AuthResponse.fromJson(json);
      expect(response.token, equals('jwt-token'));
      expect(response.refreshToken, equals('refresh-token'));
      expect(response.user['id'], equals(1));
      expect(response.user['email'], equals('test@example.com'));
    });
  });

  group('Row', () {
    test('creates from JSON', () {
      final json = {
        'id': 1,
        'order': 1,
        'fields': {
          'Name': 'John Doe',
          'Email': 'john@example.com',
        },
      };

      final row = Row.fromJson(json);
      expect(row.id, equals(1));
      expect(row.order, equals(1));
      expect(row.fields['Name'], equals('John Doe'));
      expect(row.fields['Email'], equals('john@example.com'));
    });

    test('converts to JSON', () {
      final row = Row(
        id: 1,
        order: 1,
        fields: {
          'Name': 'John Doe',
          'Email': 'john@example.com',
        },
      );

      final json = row.toJson();
      expect(json['id'], equals(1));
      expect(json['order'], equals(1));
      expect(json['fields']['Name'], equals('John Doe'));
      expect(json['fields']['Email'], equals('john@example.com'));
    });
  });

  group('RowFilter', () {
    test('creates filter with value', () {
      final filter = RowFilter(
        field: 'status',
        operator: FilterOperator.equal,
        value: 'active',
      );

      final json = filter.toJson();
      expect(json['field'], equals('status'));
      expect(json['type'], equals('equal'));
      expect(json['value'], equals('active'));
    });

    test('creates filter without value for empty/not_empty operators', () {
      final emptyFilter = RowFilter(
        field: 'status',
        operator: FilterOperator.isEmpty,
      );

      final json = emptyFilter.toJson();
      expect(json['field'], equals('status'));
      expect(json['type'], equals('empty'));
      expect(json.containsKey('value'), isFalse);
    });

    test('converts all filter operators correctly', () {
      final operatorMap = {
        FilterOperator.equal: 'equal',
        FilterOperator.notEqual: 'not_equal',
        FilterOperator.greaterThan: 'greater_than',
        FilterOperator.greaterThanOrEqual: 'greater_than_or_equal',
        FilterOperator.lessThan: 'less_than',
        FilterOperator.lessThanOrEqual: 'less_than_or_equal',
        FilterOperator.contains: 'contains',
        FilterOperator.containsNot: 'contains_not',
        FilterOperator.hasFileType: 'has_file_type',
        FilterOperator.isEmpty: 'empty',
        FilterOperator.isNotEmpty: 'not_empty',
      };

      operatorMap.forEach((operator, expectedStr) {
        final filter = RowFilter(
          field: 'test',
          operator: operator,
          value: operator == FilterOperator.isEmpty ||
                  operator == FilterOperator.isNotEmpty
              ? null
              : 'test',
        );

        final json = filter.toJson();
        expect(json['type'], equals(expectedStr));
      });
    });
  });

  group('ListRowsOptions', () {
    test('creates empty query parameters when no options set', () {
      final options = ListRowsOptions();
      final params = options.toQueryParameters();
      expect(params, isEmpty);
    });

    test('creates query parameters with all options', () {
      final options = ListRowsOptions(
        page: 2,
        size: 10,
        orderBy: 'name',
        descending: true,
        filters: [
          RowFilter(
            field: 'status',
            operator: FilterOperator.equal,
            value: 'active',
          ),
        ],
        includeFieldMetadata: true,
        viewId: 123,
        userFieldNames: true,
      );

      final params = options.toQueryParameters();
      expect(params['page'], equals('2'));
      expect(params['size'], equals('10'));
      expect(params['order_by'], equals('-name'));
      expect(params['filters'], isNotEmpty);
      expect(params['include'], equals('field_metadata'));
      expect(params['view_id'], equals('123'));
      expect(params['user_field_names'], equals('true'));
    });

    test('does not include user_field_names when false', () {
      final options = ListRowsOptions(
        userFieldNames: false,
      );

      final params = options.toQueryParameters();
      expect(params.containsKey('user_field_names'), isFalse);
    });

    test('handles ascending order correctly', () {
      final options = ListRowsOptions(
        orderBy: 'name',
        descending: false,
      );

      final params = options.toQueryParameters();
      expect(params['order_by'], equals('name'));
    });
  });

  group('RowsResponse', () {
    test('creates from JSON', () {
      final json = {
        'count': 2,
        'next': 'http://api.baserow.io/api/database/rows/table/1/?page=2',
        'previous': null,
        'results': [
          {
            'id': 1,
            'order': 1,
            'fields': {'Name': 'John Doe'},
          },
          {
            'id': 2,
            'order': 2,
            'fields': {'Name': 'Jane Smith'},
          },
        ],
      };

      final response = RowsResponse.fromJson(json);
      expect(response.count, equals(2));
      expect(response.next, isNotNull);
      expect(response.previous, isNull);
      expect(response.results, hasLength(2));
      expect(response.results[0].fields['Name'], equals('John Doe'));
      expect(response.results[1].fields['Name'], equals('Jane Smith'));
    });
  });

  group('BaserowClient', () {
    late MockClient mockClient;
    late BaserowClient client;
    late Uri lastUri;

    setUp(() {
      mockClient = MockClient();
      client = BaserowClient(
        config: BaserowConfig(
          baseUrl: 'https://api.baserow.io',
          token: 'test-token',
        ),
        httpClient: mockClient,
      );

      // Setup mock responses
      when(
        mockClient.post(
          any,
          headers: anyNamed('headers'),
          body: anyNamed('body'),
        ),
      ).thenAnswer((invocation) {
        lastUri = invocation.positionalArguments[0] as Uri;

        // Check if this is a batch operation
        if (lastUri.path.contains('batch')) {
          return Future.value(http.Response(
            json.encode({
              'items': [
                {
                  'id': 1,
                  'order': 1,
                  'fields': {'name': 'Test'},
                }
              ],
            }),
            201,
          ));
        }

        return Future.value(http.Response(
          json.encode({
            'id': 1,
            'order': 1,
            'fields': {'name': 'Test'},
          }),
          201,
        ));
      });

      when(
        mockClient.patch(
          any,
          headers: anyNamed('headers'),
          body: anyNamed('body'),
        ),
      ).thenAnswer((invocation) {
        lastUri = invocation.positionalArguments[0] as Uri;

        // Check if this is a batch operation
        if (lastUri.path.contains('batch')) {
          return Future.value(http.Response(
            json.encode({
              'items': [
                {
                  'id': 1,
                  'order': 1,
                  'fields': {'name': 'Test'},
                }
              ],
            }),
            200,
          ));
        }

        return Future.value(http.Response(
          json.encode({
            'id': 1,
            'order': 1,
            'fields': {'name': 'Test'},
          }),
          200,
        ));
      });
    });

    tearDown(() {
      client.close();
    });

    test('calls correct endpoint when listing tables', () async {
      when(
        mockClient.get(
          argThat(predicate((Uri uri) =>
              uri.toString() ==
              'https://api.baserow.io/api/database/tables/database/1/')),
          headers: anyNamed('headers'),
        ),
      ).thenAnswer(
        (_) => Future.value(
          http.Response(
            json.encode([
              {
                'id': 1,
                'name': 'Test Table',
                'order': 1,
                'fields': [],
              }
            ]),
            200,
          ),
        ),
      );

      await client.listTables(1);

      verify(
        mockClient.get(
          argThat(predicate((Uri uri) =>
              uri.toString() ==
              'https://api.baserow.io/api/database/tables/database/1/')),
          headers: anyNamed('headers'),
        ),
      ).called(1);
    });

    test('correctly parses multiple tables from response', () async {
      final expectedTables = [
        {
          'id': 586,
          'name': 'credentials',
          'order': 1,
          'database_id': 165,
          'data_sync': null
        },
        {
          'id': 587,
          'name': 'profiles',
          'order': 2,
          'database_id': 165,
          'data_sync': null
        }
      ];

      when(
        mockClient.get(
          argThat(predicate((Uri uri) =>
              uri.toString() ==
              'https://api.baserow.io/api/database/tables/database/165/')),
          headers: anyNamed('headers'),
        ),
      ).thenAnswer(
        (_) => Future.value(
          http.Response(
            json.encode(expectedTables),
            200,
          ),
        ),
      );

      final tables = await client.listTables(165);

      expect(tables, hasLength(2));
      expect(tables[0].id, equals(586));
      expect(tables[0].name, equals('credentials'));
      expect(tables[0].order, equals(1));
      expect(tables[0].fields, isNull);
    });

    test('lists fields for a table', () async {
      final expectedFields = [
        {'id': 1, 'name': 'Name', 'type': 'text', 'order': 1, 'primary': true},
        {
          'id': 2,
          'name': 'Email',
          'type': 'email',
          'order': 2,
          'primary': false
        }
      ];

      when(
        mockClient.get(
          argThat(predicate((Uri uri) =>
              uri.toString() ==
              'https://api.baserow.io/api/database/fields/table/586/')),
          headers: anyNamed('headers'),
        ),
      ).thenAnswer(
        (_) => Future.value(
          http.Response(
            json.encode({
              'fields': expectedFields,
            }),
            200,
          ),
        ),
      );

      final fields = await client.listFields(586);

      expect(fields, hasLength(2));
      expect(fields[0].id, equals(1));
      expect(fields[0].name, equals('Name'));
      expect(fields[0].type, equals('text'));
      expect(fields[0].primary, isTrue);
      expect(fields[1].name, equals('Email'));
      expect(fields[1].type, equals('email'));
      expect(fields[1].primary, isFalse);
    });

    test('gets table with fields', () async {
      final tableResponse = {
        'id': 586,
        'name': 'credentials',
        'order': 1,
        'database_id': 165,
        'data_sync': null
      };

      final fieldsResponse = {
        'fields': [
          {'id': 1, 'name': 'Name', 'type': 'text', 'order': 1, 'primary': true}
        ]
      };

      when(
        mockClient.get(
          argThat(predicate((Uri uri) =>
              uri.toString() ==
              'https://api.baserow.io/api/database/tables/586/')),
          headers: anyNamed('headers'),
        ),
      ).thenAnswer(
        (_) => Future.value(
          http.Response(
            json.encode(tableResponse),
            200,
          ),
        ),
      );

      when(
        mockClient.get(
          argThat(predicate((Uri uri) =>
              uri.toString() ==
              'https://api.baserow.io/api/database/fields/table/586/')),
          headers: anyNamed('headers'),
        ),
      ).thenAnswer(
        (_) => Future.value(
          http.Response(
            json.encode(fieldsResponse),
            200,
          ),
        ),
      );

      final table = await client.getTableWithFields(586);

      expect(table.id, equals(586));
      expect(table.name, equals('credentials'));
      expect(table.fields, isNotNull);
      expect(table.fields!, hasLength(1));
      expect(table.fields![0].name, equals('Name'));
      expect(table.fields![0].type, equals('text'));
      expect(table.fields![0].primary, isTrue);
    });

    test('includes user_field_names in createRow when enabled', () async {
      await client.createRow(1, {'name': 'Test'}, userFieldNames: true);
      expect(lastUri.queryParameters['user_field_names'], equals('true'));
    });

    test('excludes user_field_names in createRow when disabled', () async {
      await client.createRow(1, {'name': 'Test'}, userFieldNames: false);
      expect(lastUri.queryParameters.containsKey('user_field_names'), isFalse);
    });

    test('includes user_field_names in createRows when enabled', () async {
      await client.createRows(
          1,
          [
            {'name': 'Test'}
          ],
          userFieldNames: true);
      expect(lastUri.queryParameters['user_field_names'], equals('true'));
    });

    test('includes user_field_names in updateRow when enabled', () async {
      await client.updateRow(1, 1, {'name': 'Test'}, userFieldNames: true);
      expect(lastUri.queryParameters['user_field_names'], equals('true'));
    });

    test('includes user_field_names in updateRows when enabled', () async {
      await client.updateRows(
          1,
          {
            1: {'name': 'Test'}
          },
          userFieldNames: true);
      expect(lastUri.queryParameters['user_field_names'], equals('true'));
    });

    test('creates correct headers', () {
      final headers = client.createHeaders();
      expect(headers['Authorization'], equals('Token test-token'));
      expect(headers['Content-Type'], equals('application/json'));
    });

    test('creates correct headers with JWT auth', () {
      final jwtClient = BaserowClient(
        config: BaserowConfig(
          baseUrl: 'https://api.baserow.io',
          token: 'jwt-token',
          authType: BaserowAuthType.jwt,
        ),
      );
      final headers = jwtClient.createHeaders();
      expect(headers['Authorization'], equals('JWT jwt-token'));
      expect(headers['Content-Type'], equals('application/json'));
      jwtClient.close();
    });
  });

  group('Database', () {
    test('creates from JSON', () {
      final json = {
        'id': 1,
        'name': 'Test Database',
        'type': 'database',
      };

      final database = Database.fromJson(json);
      expect(database.id, equals(1));
      expect(database.name, equals('Test Database'));
      expect(database.type, equals('database'));
    });

    test('converts to JSON', () {
      final database = Database(
        id: 1,
        name: 'Test Database',
        type: 'database',
      );

      final json = database.toJson();
      expect(json['id'], equals(1));
      expect(json['name'], equals('Test Database'));
      expect(json['type'], equals('database'));
    });
  });

  group('Table', () {
    test('creates from JSON without fields', () {
      final json = {
        'id': 1,
        'name': 'Test Table',
        'order': 1,
      };

      final table = Table.fromJson(json);
      expect(table.id, equals(1));
      expect(table.name, equals('Test Table'));
      expect(table.order, equals(1));
      expect(table.fields, isNull);
    });

    test('creates with fields when constructed directly', () {
      final table = Table(
        id: 1,
        name: 'Test Table',
        order: 1,
        fields: [
          Field(
            id: 1,
            name: 'Name',
            type: 'text',
            order: 1,
            primary: true,
          ),
        ],
      );

      expect(table.id, equals(1));
      expect(table.name, equals('Test Table'));
      expect(table.order, equals(1));
      expect(table.fields, isNotNull);
      expect(table.fields!, hasLength(1));
      expect(table.fields!.first.name, equals('Name'));
    });

    test('converts to JSON', () {
      final table = Table(
        id: 1,
        name: 'Test Table',
        order: 1,
        fields: [
          Field(
            id: 1,
            name: 'Name',
            type: 'text',
            order: 1,
            primary: true,
          ),
        ],
      );

      final json = table.toJson();
      expect(json['id'], equals(1));
      expect(json['name'], equals('Test Table'));
      expect(json['order'], equals(1));
      expect(json['fields'], hasLength(1));
      expect(table.fields, isNotNull);
      final fieldJson =
          (json['fields'] as List<dynamic>).first as Map<String, dynamic>;
      final expectedFieldJson = table.fields!.first.toJson();
      expect(fieldJson, equals(expectedFieldJson));
    });
  });

  group('Field', () {
    test('creates from JSON', () {
      final json = {
        'id': 1,
        'name': 'Name',
        'type': 'text',
        'order': 1,
        'primary': true,
      };

      final field = Field.fromJson(json);
      expect(field.id, equals(1));
      expect(field.name, equals('Name'));
      expect(field.type, equals('text'));
      expect(field.order, equals(1));
      expect(field.primary, isTrue);
    });

    test('converts to JSON', () {
      final field = Field(
        id: 1,
        name: 'Name',
        type: 'text',
        order: 1,
        primary: true,
      );

      final json = field.toJson();
      expect(json['id'], equals(1));
      expect(json['name'], equals('Name'));
      expect(json['type'], equals('text'));
      expect(json['order'], equals(1));
      expect(json['primary'], isTrue);
    });
  });

  group('BaserowException', () {
    test('creates with message and status code', () {
      final exception = BaserowException('Test error', 400);
      expect(exception.message, equals('Test error'));
      expect(exception.statusCode, equals(400));
    });

    test('converts to string', () {
      final exception = BaserowException('Test error', 400);
      expect(
        exception.toString(),
        equals('BaserowException: Test error (Status Code: 400)'),
      );
    });
  });
}
