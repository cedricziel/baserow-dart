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

    test('creates a UUID field with description and required flag', () {
      final builder = UUIDFieldBuilder('test_uuid')
        ..description = 'A UUID field'
        ..required = true;
      final config = builder.build();

      expect(config['name'], equals('test_uuid'));
      expect(config['type'], equals('uuid'));
      expect(config['description'], equals('A UUID field'));
      expect(config['required'], isTrue);
    });

    test('integrates with TableBuilder', () {
      final tableBuilder = TableBuilder('test_table')
        ..withUUIDField('id', required: true, description: 'Primary UUID');
      final config = tableBuilder.build();

      expect(config['name'], equals('test_table'));
      expect(config['fields'], isList);
      expect(config['fields'], hasLength(1));

      final field = config['fields'][0] as Map<String, dynamic>;
      expect(field['name'], equals('id'));
      expect(field['type'], equals('uuid'));
      expect(field['required'], isTrue);
      expect(field['description'], equals('Primary UUID'));
    });
  });
}
