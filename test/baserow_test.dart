import 'package:baserow/baserow.dart';
import 'package:test/test.dart';

void main() {
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

    test('handles non-numeric order field', () {
      final json = {
        'id': '1',
        'order': 'non-numeric',
        'fields': {
          'Name': 'John Doe',
        },
      };

      final row = Row.fromJson(json);
      expect(row.id, equals(1));
      expect(row.order, equals(0));
      expect(row.fields['Name'], equals('John Doe'));
    });

    test('handles complex field types from API', () {
      final json = {
        'id': 0,
        'order': 'non-numeric',
        'fields': {
          'field_1': 'string',
          'field_2': 'string',
          'field_3': 'string',
          'field_4': 'string',
          'field_5': 'pattern',
          'field_6': 0,
          'field_7': false,
          'field_8': '2019-08-24',
          'field_9': '2019-08-24T14:15:22Z',
          'field_10': {'id': 0, 'name': 'string'},
          'field_11': '2019-08-24T14:15:22Z',
          'field_12': {'id': 0, 'name': 'string'},
          'field_13': 0.1,
          'field_14': [
            {'id': 0, 'value': 'string', 'order': 'non-numeric'}
          ],
          'field_15': [
            {
              'url': 'http://example.com',
              'thumbnails': {'property1': null, 'property2': null},
              'visible_name': 'string',
              'name': 'string',
              'size': 0,
              'mime_type': 'string',
              'is_image': true,
              'image_width': 0,
              'image_height': 0,
              'uploaded_at': '2019-08-24T14:15:22Z'
            }
          ],
          'field_16': {'id': 0, 'value': 'string', 'color': 'string'},
          'field_17': [
            {'id': 0, 'value': 'string', 'color': 'string'}
          ],
          'field_18': 'string',
          'field_19': 'string',
          'field_20': 'string',
          'field_21': 'string',
          'field_22': 'string',
          'field_23': [
            {'id': 0, 'name': 'string'}
          ],
          'field_24': 'ac3711cb-e1e2-480d-8b6c-2c05cdca1836',
          'field_25': 0,
          'field_26': true,
          'field_27': 'string'
        }
      };

      final row = Row.fromJson(json);
      expect(row.id, equals(0));
      expect(row.order, equals(0));
      expect(row.fields['field_1'], equals('string'));
      expect(row.fields['field_7'], equals(false));
      expect(row.fields['field_13'], equals(0.1));
      expect(row.fields['field_26'], equals(true));
      expect((row.fields['field_10'] as Map)['name'], equals('string'));
      expect((row.fields['field_15'] as List).first['url'],
          equals('http://example.com'));
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

    test('handles complex API response', () {
      final json = {
        'count': 0,
        'next': 'http://example.com',
        'previous': 'http://example.com',
        'results': [
          {
            'id': 0,
            'order': 'non-numeric',
            'fields': {
              'field_1': 'string',
              'field_7': false,
              'field_13': 0.1,
              'field_26': true
            }
          }
        ]
      };

      final response = RowsResponse.fromJson(json);
      expect(response.count, equals(0));
      expect(response.next, equals('http://example.com'));
      expect(response.previous, equals('http://example.com'));
      expect(response.results, hasLength(1));
      expect(response.results[0].order, equals(0));
      expect(response.results[0].fields['field_1'], equals('string'));
      expect(response.results[0].fields['field_7'], equals(false));
      expect(response.results[0].fields['field_13'], equals(0.1));
      expect(response.results[0].fields['field_26'], equals(true));
    });
  });
}
