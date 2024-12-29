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
