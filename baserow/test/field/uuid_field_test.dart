import 'package:baserow/baserow.dart';
import 'package:test/test.dart';

void main() {
  group('UUIDFieldBuilder', () {
    test('creates a UUID field with basic configuration', () {
      final builder = UUIDFieldBuilder('test_uuid');
      final config = builder.build();

      expect(config['name'], equals('test_uuid'));
      expect(config['type'], equals('uuid'));
    });

    test('creates a UUID field with description', () {
      final builder = UUIDFieldBuilder('test_uuid')
        ..description = 'A UUID field';
      final config = builder.build();

      expect(config['name'], equals('test_uuid'));
      expect(config['type'], equals('uuid'));
      expect(config['description'], equals('A UUID field'));
    });

    test('integrates with TableBuilder', () {
      final tableBuilder = TableBuilder('test_table')
        ..withUUIDField('id', description: 'Primary UUID');
      final config = tableBuilder.build();

      expect(config['name'], equals('test_table'));
      expect(config['fields'], isList);
      expect(config['fields'], hasLength(1));

      final field = config['fields'][0] as Map<String, dynamic>;
      expect(field['name'], equals('id'));
      expect(field['type'], equals('uuid'));
      expect(field['description'], equals('Primary UUID'));
    });
  });
}
