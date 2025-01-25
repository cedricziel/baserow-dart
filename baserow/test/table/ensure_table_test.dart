import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

import 'package:baserow/baserow.dart';

import 'ensure_table_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('TableOperations.ensureTable', () {
    late MockClient mockClient;
    late BaserowClient client;

    setUp(() {
      mockClient = MockClient();
      client = BaserowClient(
        config: BaserowConfig(baseUrl: 'http://localhost'),
        httpClient: mockClient,
      );
    });

    test('creates new table with fields and views when table does not exist',
        () async {
      // Mock list tables response
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tables/database/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response('[]', 200));

      // Mock create table response
      when(mockClient.post(
        Uri.parse('http://localhost/api/database/tables/database/1/'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 1, "name": "Customers", "order": 1, "database_id": 1}', 200));

      // Mock create field responses
      when(mockClient.post(
        Uri.parse('http://localhost/api/database/fields/table/1/'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 1, "name": "Name", "type": "text", "order": 1, "primary": true}',
          200));

      // Mock create view response
      when(mockClient.post(
        Uri.parse('http://localhost/api/database/views/table/1/'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 1, "name": "Grid", "type": "grid", "ownership_type": "collaborative", "slug": "grid-1"}',
          200));

      // Mock get table with fields response
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tables/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 1, "name": "Customers", "order": 1, "database_id": 1}', 200));

      when(mockClient.get(
        Uri.parse('http://localhost/api/database/fields/table/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
          '{"fields": [{"id": 1, "name": "Name", "type": "text", "order": 1, "primary": true}]}',
          200));

      final table = await client.ensureTable(
        1,
        TableBuilder('Customers')
          ..withTextField('Name')
          ..withGridView('Grid'),
      );

      expect(table.name, equals('Customers'));
      expect(table.fields?.length, equals(1));
      expect(table.fields?.first.name, equals('Name'));
    });

    test('updates existing table when table exists and updateIfExists is true',
        () async {
      // Mock list tables response
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tables/database/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
          '[{"id": 1, "name": "Customers", "order": 1, "database_id": 1}]',
          200));

      // Mock update table response
      when(mockClient.patch(
        Uri.parse('http://localhost/api/database/tables/1/'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 1, "name": "Customers", "order": 1, "database_id": 1}', 200));

      // Mock list fields response
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/fields/table/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
          '{"fields": [{"id": 1, "name": "Name", "type": "text", "order": 1, "primary": true}]}',
          200));

      // Mock list views response
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/views/table/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
          '[{"id": 1, "name": "Grid", "type": "grid", "ownership_type": "collaborative", "slug": "grid-1"}]',
          200));

      // Mock update field response
      when(mockClient.patch(
        Uri.parse('http://localhost/api/database/fields/1/'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 1, "name": "Name", "type": "text", "order": 1, "primary": true}',
          200));

      // Mock update view response
      when(mockClient.patch(
        Uri.parse('http://localhost/api/database/views/1/'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 1, "name": "Grid", "type": "grid", "ownership_type": "collaborative", "slug": "grid-1"}',
          200));

      // Mock get table with fields response
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tables/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 1, "name": "Customers", "order": 1, "database_id": 1}', 200));

      final table = await client.ensureTable(
        1,
        TableBuilder('Customers')
          ..withTextField('Name')
          ..withGridView('Grid'),
      );

      expect(table.name, equals('Customers'));
      expect(table.fields?.length, equals(1));
      expect(table.fields?.first.name, equals('Name'));

      // Verify update calls were made
      verify(mockClient.patch(
        Uri.parse('http://localhost/api/database/fields/1/'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).called(1);

      verify(mockClient.patch(
        Uri.parse('http://localhost/api/database/views/1/'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).called(1);
    });

    test('returns existing table without updates when updateIfExists is false',
        () async {
      // Mock list tables response
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tables/database/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
          '[{"id": 1, "name": "Customers", "order": 1, "database_id": 1}]',
          200));

      final table = await client.ensureTable(
        1,
        TableBuilder('Customers')
          ..withTextField('Name')
          ..withGridView('Grid'),
        updateIfExists: false,
      );

      expect(table.name, equals('Customers'));

      // Verify no update calls were made
      verifyNever(mockClient.patch(any, headers: anyNamed('headers')));
    });

    test('sets primary field when creating new table', () async {
      // Mock list tables response
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tables/database/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response('[]', 200));

      // Mock create table response
      when(mockClient.post(
        Uri.parse('http://localhost/api/database/tables/database/1/'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 1, "name": "Users", "order": 1, "database_id": 1}', 200));

      // Mock create field response
      when(mockClient.post(
        Uri.parse('http://localhost/api/database/fields/table/1/'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 1, "name": "ID", "type": "uuid", "order": 1}', 200));

      // Mock set primary field response
      when(mockClient.post(
        Uri.parse(
            'http://localhost/api/database/fields/table/1/change-primary-field/'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 1, "name": "ID", "type": "uuid", "order": 1, "primary": true}',
          200));

      // Mock get table with fields response
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tables/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 1, "name": "Users", "order": 1, "database_id": 1}', 200));

      when(mockClient.get(
        Uri.parse('http://localhost/api/database/fields/table/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
          '{"fields": [{"id": 1, "name": "ID", "type": "uuid", "order": 1, "primary": true}]}',
          200));

      final table = await client.ensureTable(
        1,
        TableBuilder('Users')..withUUIDField('ID', primary: true),
      );

      expect(table.name, equals('Users'));
      expect(table.fields?.length, equals(1));
      expect(table.fields?.first.name, equals('ID'));

      // Verify primary field was set
      verify(mockClient.post(
        Uri.parse(
            'http://localhost/api/database/fields/table/1/change-primary-field/'),
        headers: anyNamed('headers'),
        body: '{"new_primary_field_id":1}',
      )).called(1);
    });

    test('updates primary field when updating existing table', () async {
      // Mock list tables response
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tables/database/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
          '[{"id": 1, "name": "Users", "order": 1, "database_id": 1}]', 200));

      // Mock update table response
      when(mockClient.patch(
        Uri.parse('http://localhost/api/database/tables/1/'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 1, "name": "Users", "order": 1, "database_id": 1}', 200));

      // Mock list fields response
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/fields/table/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
          '{"fields": [{"id": 1, "name": "Name", "type": "text", "order": 1, "primary": true}, {"id": 2, "name": "ID", "type": "uuid", "order": 2}]}',
          200));

      // Mock list views response
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/views/table/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response('[]', 200));

      // Mock update field responses
      when(mockClient.patch(
        Uri.parse('http://localhost/api/database/fields/1/'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 1, "name": "Name", "type": "text", "order": 1}', 200));

      when(mockClient.patch(
        Uri.parse('http://localhost/api/database/fields/2/'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 2, "name": "ID", "type": "uuid", "order": 2}', 200));

      // Mock set primary field response
      when(mockClient.post(
        Uri.parse(
            'http://localhost/api/database/fields/table/1/change-primary-field/'),
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 2, "name": "ID", "type": "uuid", "order": 2, "primary": true}',
          200));

      // Mock get table with fields response
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tables/1/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
          '{"id": 1, "name": "Users", "order": 1, "database_id": 1}', 200));

      final table = await client.ensureTable(
        1,
        TableBuilder('Users')
          ..withTextField('Name')
          ..withUUIDField('ID', primary: true),
      );

      expect(table.name, equals('Users'));

      // Verify primary field was changed
      verify(mockClient.post(
        Uri.parse(
            'http://localhost/api/database/fields/table/1/change-primary-field/'),
        headers: anyNamed('headers'),
        body: '{"new_primary_field_id":2}',
      )).called(1);
    });
  });
}
