import 'package:baserow/baserow.dart';
import 'package:test/test.dart';

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
      );

      final params = options.toQueryParameters();
      expect(params['page'], equals('2'));
      expect(params['size'], equals('10'));
      expect(params['order_by'], equals('-name'));
      expect(params['filters'], isNotEmpty);
      expect(params['include'], equals('field_metadata'));
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
    late BaserowClient tokenClient;
    late BaserowClient jwtClient;

    setUp(() {
      tokenClient = BaserowClient(
        config: BaserowConfig(
          baseUrl: 'https://api.baserow.io',
          token: 'test-token',
          authType: BaserowAuthType.token,
        ),
      );

      jwtClient = BaserowClient(
        config: BaserowConfig(
          baseUrl: 'https://api.baserow.io',
          token: 'jwt-token',
          authType: BaserowAuthType.jwt,
        ),
      );
    });

    tearDown(() {
      tokenClient.close();
      jwtClient.close();
    });

    test('creates instance with token config', () {
      expect(tokenClient.config.baseUrl, equals('https://api.baserow.io'));
      expect(tokenClient.config.token, equals('test-token'));
      expect(tokenClient.config.authType, equals(BaserowAuthType.token));
    });

    test('creates instance with JWT config', () {
      expect(jwtClient.config.baseUrl, equals('https://api.baserow.io'));
      expect(jwtClient.config.token, equals('jwt-token'));
      expect(jwtClient.config.authType, equals(BaserowAuthType.jwt));
    });

    test('creates correct headers for token auth', () {
      final headers = tokenClient.createHeaders();
      expect(headers['Authorization'], equals('Token test-token'));
      expect(headers['Content-Type'], equals('application/json'));
    });

    test('creates correct headers for JWT auth', () {
      final headers = jwtClient.createHeaders();
      expect(headers['Authorization'], equals('JWT jwt-token'));
      expect(headers['Content-Type'], equals('application/json'));
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
    test('creates from JSON', () {
      final json = {
        'id': 1,
        'name': 'Test Table',
        'order': 1,
        'fields': [
          {
            'id': 1,
            'name': 'Name',
            'type': 'text',
            'order': 1,
            'primary': true,
          }
        ],
      };

      final table = Table.fromJson(json);
      expect(table.id, equals(1));
      expect(table.name, equals('Test Table'));
      expect(table.order, equals(1));
      expect(table.fields, hasLength(1));
      expect(table.fields.first.name, equals('Name'));
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
      expect(json['fields'].first['name'], equals('Name'));
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
