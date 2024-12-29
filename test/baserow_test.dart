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
    });
  });

  group('BaserowClient', () {
    late BaserowClient client;

    setUp(() {
      client = BaserowClient(
        config: BaserowConfig(
          baseUrl: 'https://api.baserow.io',
          token: 'test-token',
        ),
      );
    });

    tearDown(() {
      client.close();
    });

    test('creates instance with config', () {
      expect(client.config.baseUrl, equals('https://api.baserow.io'));
      expect(client.config.token, equals('test-token'));
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
