import 'dart:convert';

import 'package:baserow/baserow.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<http.Client>()])
import 'field_operations_test.mocks.dart';

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

  group('FieldOperations', () {
    test('createField creates a text field', () async {
      const tableId = 1;
      const fieldName = 'Name';
      when(mockClient.post(
        Uri.parse('http://localhost/api/database/fields/table/$tableId/'),
        headers: anyNamed('headers'),
        body: json.encode({
          'name': fieldName,
          'type': 'text',
          'text_default': 'default value',
        }),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'id': 1,
              'name': fieldName,
              'type': 'text',
              'order': 1,
              'primary': false,
            }),
            200,
          ));

      final field = await client.createField(
        tableId,
        name: fieldName,
        type: 'text',
        options: {'text_default': 'default value'},
      );

      expect(field.id, 1);
      expect(field.name, fieldName);
      expect(field.type, 'text');
      expect(field.order, 1);
      expect(field.primary, false);
    });

    test('createField creates a number field', () async {
      const tableId = 1;
      const fieldName = 'Price';
      when(mockClient.post(
        Uri.parse('http://localhost/api/database/fields/table/$tableId/'),
        headers: anyNamed('headers'),
        body: json.encode({
          'name': fieldName,
          'type': 'number',
          'number_decimal_places': 2,
          'number_negative': true,
        }),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'id': 2,
              'name': fieldName,
              'type': 'number',
              'order': 2,
              'primary': false,
            }),
            200,
          ));

      final field = await client.createField(
        tableId,
        name: fieldName,
        type: 'number',
        options: {
          'number_decimal_places': 2,
          'number_negative': true,
        },
      );

      expect(field.id, 2);
      expect(field.name, fieldName);
      expect(field.type, 'number');
      expect(field.order, 2);
      expect(field.primary, false);
    });

    test('createField throws when user has no access', () async {
      const tableId = 1;
      when(mockClient.post(
        Uri.parse('http://localhost/api/database/fields/table/$tableId/'),
        headers: anyNamed('headers'),
        body: json.encode({
          'name': 'Test Field',
          'type': 'text',
        }),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'error': 'ERROR_USER_NOT_IN_GROUP',
              'detail': 'The user does not belong to the related workspace.',
            }),
            400,
          ));

      expect(
        () => client.createField(tableId, name: 'Test Field', type: 'text'),
        throwsA(isA<BaserowException>()),
      );
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
                  'name': 'Name',
                  'type': 'text',
                  'order': 1,
                  'primary': true,
                },
                {
                  'id': 2,
                  'name': 'Price',
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
      expect(fields[0].name, 'Name');
      expect(fields[0].type, 'text');
      expect(fields[0].primary, true);
      expect(fields[1].id, 2);
      expect(fields[1].name, 'Price');
      expect(fields[1].type, 'number');
      expect(fields[1].primary, false);
    });

    test('getField returns a single field', () async {
      const fieldId = 1;
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/fields/$fieldId/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'id': fieldId,
              'name': 'Name',
              'type': 'text',
              'order': 1,
              'primary': true,
            }),
            200,
          ));

      final field = await client.getField(fieldId);

      expect(field.id, fieldId);
      expect(field.name, 'Name');
      expect(field.type, 'text');
      expect(field.order, 1);
      expect(field.primary, true);
    });

    test('updateField updates field properties', () async {
      const fieldId = 1;
      when(mockClient.patch(
        Uri.parse('http://localhost/api/database/fields/$fieldId/'),
        headers: anyNamed('headers'),
        body: json.encode({
          'name': 'Updated Name',
          'description': 'Updated description',
        }),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'id': fieldId,
              'name': 'Updated Name',
              'type': 'text',
              'order': 1,
              'primary': true,
            }),
            200,
          ));

      final field = await client.updateField(
        fieldId,
        name: 'Updated Name',
        description: 'Updated description',
      );

      expect(field.id, fieldId);
      expect(field.name, 'Updated Name');
      expect(field.type, 'text');
      expect(field.order, 1);
      expect(field.primary, true);
    });

    test('deleteField deletes a field', () async {
      const fieldId = 1;
      when(mockClient.delete(
        Uri.parse('http://localhost/api/database/fields/$fieldId/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response('', 204));

      await client.deleteField(fieldId);

      verify(mockClient.delete(
        Uri.parse('http://localhost/api/database/fields/$fieldId/'),
        headers: anyNamed('headers'),
      )).called(1);
    });
  });
}
