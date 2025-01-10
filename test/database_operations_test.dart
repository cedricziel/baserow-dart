import 'dart:convert';

import 'package:baserow/baserow.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<http.Client>()])
import 'database_operations_test.mocks.dart';

void main() {
  late MockClient mockClient;
  late BaserowClient client;

  setUp(() {
    mockClient = MockClient();
    client = BaserowClient(
      config: BaserowConfig(baseUrl: 'http://localhost'),
      httpClient: mockClient,
    );
  });

  group('DatabaseOperations', () {
    test('listDatabases returns list of databases', () async {
      when(mockClient.get(
        Uri.parse('http://localhost/api/applications/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'applications': [
                {
                  'id': 1,
                  'name': 'Database 1',
                  'type': 'database',
                  'order': 1,
                },
                {
                  'id': 2,
                  'name': 'Database 2',
                  'type': 'database',
                  'order': 2,
                },
                {
                  'id': 3,
                  'name': 'Not a database',
                  'type': 'other',
                  'order': 3,
                },
              ],
            }),
            200,
          ));

      final databases = await client.listDatabases();

      expect(databases.length, 2);
      expect(databases[0].id, 1);
      expect(databases[0].name, 'Database 1');
      expect(databases[1].id, 2);
      expect(databases[1].name, 'Database 2');
    });
  });

  group('TableOperations', () {
    test('listTables returns list of tables', () async {
      const databaseId = 1;
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tables/database/$databaseId/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            json.encode([
              {
                'id': 1,
                'name': 'Table 1',
                'order': 1,
              },
              {
                'id': 2,
                'name': 'Table 2',
                'order': 2,
              },
            ]),
            200,
          ));

      final tables = await client.listTables(databaseId);

      expect(tables.length, 2);
      expect(tables[0].id, 1);
      expect(tables[0].name, 'Table 1');
      expect(tables[1].id, 2);
      expect(tables[1].name, 'Table 2');
    });

    test('listFields returns list of fields', () async {
      const tableId = 1;
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/fields/table/$tableId/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'fields': [
                {
                  'id': 1,
                  'name': 'Field 1',
                  'type': 'text',
                  'order': 1,
                  'primary': false,
                },
                {
                  'id': 2,
                  'name': 'Field 2',
                  'type': 'number',
                  'order': 2,
                  'primary': false,
                },
              ],
            }),
            200,
          ));

      final fields = await client.listFields(tableId);

      expect(fields.length, 2);
      expect(fields[0].id, 1);
      expect(fields[0].name, 'Field 1');
      expect(fields[0].type, 'text');
      expect(fields[1].id, 2);
      expect(fields[1].name, 'Field 2');
      expect(fields[1].type, 'number');
    });

    test('getTableWithFields returns table with fields', () async {
      const tableId = 1;
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/tables/$tableId/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'id': tableId,
              'name': 'Table 1',
              'order': 1,
            }),
            200,
          ));

      when(mockClient.get(
        Uri.parse('http://localhost/api/database/fields/table/$tableId/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'fields': [
                {
                  'id': 1,
                  'name': 'Field 1',
                  'type': 'text',
                  'order': 1,
                  'primary': false,
                },
                {
                  'id': 2,
                  'name': 'Field 2',
                  'type': 'number',
                  'order': 2,
                  'primary': false,
                },
              ],
            }),
            200,
          ));

      final table = await client.getTableWithFields(tableId);

      expect(table.id, tableId);
      expect(table.name, 'Table 1');
      expect(table.fields?.length, 2);
      expect(table.fields?[0].id, 1);
      expect(table.fields?[0].name, 'Field 1');
      expect(table.fields?[0].type, 'text');
      expect(table.fields?[1].id, 2);
      expect(table.fields?[1].name, 'Field 2');
      expect(table.fields?[1].type, 'number');
    });
  });
}
