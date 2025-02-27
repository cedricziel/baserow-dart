import 'dart:convert';

import 'package:baserow/baserow.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'baserow_test.mocks.dart';

void main() {
  group('Row Operations', () {
    late MockClient mockClient;
    late BaserowClient client;

    setUp(() {
      mockClient = MockClient();
      client = BaserowClient(
        config: const BaserowConfig(baseUrl: 'http://localhost'),
        httpClient: mockClient,
      );
    });

    tearDown(() {
      client.close();
    });

    group('listAllRows', () {
      test('fetches all rows with single page', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/')
            .replace(queryParameters: {
          'page': '1',
          'size': '100',
        });
        when(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 2,
              'next': null,
              'previous': null,
              'results': [
                {
                  'id': 1,
                  'order': 1,
                  'field_1': 'Row 1',
                },
                {
                  'id': 2,
                  'order': 2,
                  'field_1': 'Row 2',
                },
              ],
            }),
            200));

        final rows = await client.listAllRows(1);
        expect(rows, hasLength(2));
        expect(rows[0].fields['field_1'], equals('Row 1'));
        expect(rows[1].fields['field_1'], equals('Row 2'));
      });

      test('fetches all rows with multiple pages', () async {
        // First page
        final firstUri =
            Uri.parse('http://localhost/api/database/rows/table/1/')
                .replace(queryParameters: {
          'page': '1',
          'size': '100',
        });
        when(mockClient.get(
          firstUri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 4,
              'next': 'http://localhost/api/database/rows/table/1/?page=2',
              'previous': null,
              'results': [
                {
                  'id': 1,
                  'order': 1,
                  'field_1': 'Row 1',
                },
                {
                  'id': 2,
                  'order': 2,
                  'field_1': 'Row 2',
                },
              ],
            }),
            200));

        // Second page
        final secondUri =
            Uri.parse('http://localhost/api/database/rows/table/1/')
                .replace(queryParameters: {
          'page': '2',
          'size': '100',
        });
        when(mockClient.get(
          secondUri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 4,
              'next': null,
              'previous': 'http://localhost/api/database/rows/table/1/?page=1',
              'results': [
                {
                  'id': 3,
                  'order': 3,
                  'field_1': 'Row 3',
                },
                {
                  'id': 4,
                  'order': 4,
                  'field_1': 'Row 4',
                },
              ],
            }),
            200));

        final rows = await client.listAllRows(1);
        expect(rows, hasLength(4));
        expect(rows[0].fields['field_1'], equals('Row 1'));
        expect(rows[1].fields['field_1'], equals('Row 2'));
        expect(rows[2].fields['field_1'], equals('Row 3'));
        expect(rows[3].fields['field_1'], equals('Row 4'));
      });

      test('correctly handles single and multiple filters with string values',
          () async {
        // Test with single JSON filter (should not include filter_type)
        final uriWithSingleJsonFilter =
            Uri.parse('http://localhost/api/database/rows/table/1/')
                .replace(queryParameters: {
          'page': '1',
          'size': '100',
          'filters': jsonEncode({
            'filters': [
              {
                'field': 'status',
                'type': 'equal',
                'value': 'active',
              }
            ]
          }),
        });

        when(mockClient.get(
          uriWithSingleJsonFilter,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 0,
              'next': null,
              'previous': null,
              'results': [],
            }),
            200));

        await client.listAllRows(
          1,
          options: ListRowsOptions(
            filters: [
              RowFilter(
                field: 'status',
                operator: FilterOperator.equal,
                value: 'active',
              ),
            ],
          ),
        );

        verify(mockClient.get(
          uriWithSingleJsonFilter,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).called(1);

        // Test with single field filter (should not include filter_type)
        final uriWithSingleFieldFilter =
            Uri.parse('http://localhost/api/database/rows/table/1/')
                .replace(queryParameters: {
          'page': '1',
          'size': '100',
          'filter__status__equal': 'active',
        });

        when(mockClient.get(
          uriWithSingleFieldFilter,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 0,
              'next': null,
              'previous': null,
              'results': [],
            }),
            200));

        await client.listAllRows(
          1,
          options: ListRowsOptions(
            fieldFilters: {
              'status': {'equal': 'active'},
            },
          ),
        );

        verify(mockClient.get(
          uriWithSingleFieldFilter,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).called(1);

        // Test with multiple filters (should include filter_type)
        final uriWithMultipleFilters =
            Uri.parse('http://localhost/api/database/rows/table/1/')
                .replace(queryParameters: {
          'page': '1',
          'size': '100',
          'filters': jsonEncode({
            'filter_type': 'OR',
            'filters': [
              {
                'field': 'status',
                'type': 'equal',
                'value': 'active',
              },
              {
                'field': 'priority',
                'type': 'equal',
                'value': 'high',
              }
            ],
          }),
          'filter_type': 'OR',
        });

        when(mockClient.get(
          uriWithMultipleFilters,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 0,
              'next': null,
              'previous': null,
              'results': [],
            }),
            200));

        await client.listAllRows(
          1,
          options: ListRowsOptions(
            filterType: 'OR',
            filters: [
              RowFilter(
                field: 'status',
                operator: FilterOperator.equal,
                value: 'active',
              ),
              RowFilter(
                field: 'priority',
                operator: FilterOperator.equal,
                value: 'high',
              ),
            ],
          ),
        );

        verify(mockClient.get(
          uriWithMultipleFilters,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).called(1);
      });

      test('correctly handles integer values in field filters', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/')
            .replace(queryParameters: {
          'page': '1',
          'size': '100',
          'filter__age__greater_than': '18',
          'filter__rating__equal': '5',
          'filter_type': 'AND',
        });

        when(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 0,
              'next': null,
              'previous': null,
              'results': [],
            }),
            200));

        await client.listAllRows(
          1,
          options: ListRowsOptions(
            fieldFilters: {
              'age': {'greater_than': 18},
              'rating': {'equal': 5},
            },
          ),
        );

        verify(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).called(1);
      });

      test('correctly handles multiple filters with AND/OR operations',
          () async {
        // Test AND operation with multiple filters
        final uriWithAndFilters =
            Uri.parse('http://localhost/api/database/rows/table/1/')
                .replace(queryParameters: {
          'page': '1',
          'size': '100',
          'filters': jsonEncode({
            'filter_type': 'AND',
            'filters': [
              {
                'field': 'status',
                'type': 'equal',
                'value': 'active',
              },
              {
                'field': 'priority',
                'type': 'equal',
                'value': 'high',
              }
            ],
          }),
          'filter_type': 'AND',
        });

        when(mockClient.get(
          uriWithAndFilters,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 0,
              'next': null,
              'previous': null,
              'results': [],
            }),
            200));

        await client.listAllRows(
          1,
          options: ListRowsOptions(
            filterType: 'AND',
            filters: [
              RowFilter(
                field: 'status',
                operator: FilterOperator.equal,
                value: 'active',
              ),
              RowFilter(
                field: 'priority',
                operator: FilterOperator.equal,
                value: 'high',
              ),
            ],
          ),
        );

        verify(mockClient.get(
          uriWithAndFilters,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).called(1);

        // Test OR operation with multiple filters
        final uriWithOrFilters =
            Uri.parse('http://localhost/api/database/rows/table/1/')
                .replace(queryParameters: {
          'page': '1',
          'size': '100',
          'filters': jsonEncode({
            'filter_type': 'OR',
            'filters': [
              {
                'field': 'status',
                'type': 'equal',
                'value': 'active',
              },
              {
                'field': 'status',
                'type': 'equal',
                'value': 'pending',
              }
            ],
          }),
          'filter_type': 'OR',
        });

        when(mockClient.get(
          uriWithOrFilters,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 0,
              'next': null,
              'previous': null,
              'results': [],
            }),
            200));

        await client.listAllRows(
          1,
          options: ListRowsOptions(
            filterType: 'OR',
            filters: [
              RowFilter(
                field: 'status',
                operator: FilterOperator.equal,
                value: 'active',
              ),
              RowFilter(
                field: 'status',
                operator: FilterOperator.equal,
                value: 'pending',
              ),
            ],
          ),
        );

        verify(mockClient.get(
          uriWithOrFilters,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).called(1);
      });

      test('respects provided options', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/')
            .replace(queryParameters: {
          'page': '1',
          'size': '50',
          'order_by': '-field_1',
          'user_field_names': 'true',
        });

        when(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 1,
              'next': null,
              'previous': null,
              'results': [
                {
                  'id': 1,
                  'order': 1,
                  'field_1': 'Row 1',
                },
              ],
            }),
            200));

        await client.listAllRows(
          1,
          options: const ListRowsOptions(
            size: 50,
            orderBy: ['-field_1'],
            userFieldNames: true,
          ),
        );

        verify(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).called(1);
      });
    });

    group('createRow', () {
      test('creates a single row successfully', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/');
        final fields = {'field_1': 'New Value'};

        when(mockClient.post(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode(fields),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'id': 1,
              'order': 1,
              'field_1': 'New Value',
            }),
            200));

        final row = await client.createRow(1, fields);
        expect(row.id, equals(1));
        expect(row.fields['field_1'], equals('New Value'));
      });

      test('respects userFieldNames parameter', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/')
            .replace(queryParameters: {'user_field_names': 'true'});
        final fields = {'Name': 'New Value'};

        when(mockClient.post(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode(fields),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'id': 1,
              'order': 1,
              'Name': 'New Value',
            }),
            200));

        final row = await client.createRow(1, fields, userFieldNames: true);
        expect(row.id, equals(1));
        expect(row.fields['Name'], equals('New Value'));
      });

      test('handles error response', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/');
        final fields = {'field_1': 'New Value'};

        when(mockClient.post(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode(fields),
        )).thenAnswer((_) async => http.Response('Invalid field value', 400));

        expect(
          () => client.createRow(1, fields),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            400,
          )),
        );
      });
    });

    group('updateRow', () {
      test('updates a single row successfully', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/1/');
        final fields = {'field_1': 'Updated Value'};

        when(mockClient.patch(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode(fields),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'id': 1,
              'order': 1,
              'field_1': 'Updated Value',
            }),
            200));

        final row = await client.updateRow(1, 1, fields);
        expect(row.id, equals(1));
        expect(row.fields['field_1'], equals('Updated Value'));
      });

      test('respects userFieldNames parameter', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/1/')
            .replace(queryParameters: {'user_field_names': 'true'});
        final fields = {'Name': 'Updated Value'};

        when(mockClient.patch(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode(fields),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'id': 1,
              'order': 1,
              'Name': 'Updated Value',
            }),
            200));

        final row = await client.updateRow(1, 1, fields, userFieldNames: true);
        expect(row.id, equals(1));
        expect(row.fields['Name'], equals('Updated Value'));
      });

      test('handles error response', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/1/');
        final fields = {'field_1': 'Updated Value'};

        when(mockClient.patch(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
          body: jsonEncode(fields),
        )).thenAnswer((_) async => http.Response('Invalid field value', 400));

        expect(
          () => client.updateRow(1, 1, fields),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            400,
          )),
        );
      });
    });

    group('deleteRow', () {
      test('deletes a row successfully with default webhook behavior',
          () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/1/');

        when(mockClient.delete(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response('', 204));

        await client.deleteRow(1, 1);

        verify(mockClient.delete(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).called(1);
      });

      test('deletes a row with webhooks disabled', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/1/')
            .replace(queryParameters: {'send_webhook_events': 'false'});

        when(mockClient.delete(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response('', 204));

        await client.deleteRow(1, 1, sendWebhookEvents: false);

        verify(mockClient.delete(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).called(1);
      });

      test('handles error response', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/1/');

        when(mockClient.delete(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response('Row not found', 404));

        expect(
          () => client.deleteRow(1, 1),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            404,
          )),
        );
      });
    });

    group('getRow', () {
      test('gets a single row successfully', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/1/');

        when(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'id': 1,
              'order': 1,
              'field_1': 'Test Value',
              'field_2': 42,
            }),
            200));

        final row = await client.getRow(1, 1);
        expect(row.id, equals(1));
        expect(row.fields['field_1'], equals('Test Value'));
        expect(row.fields['field_2'], equals(42));
      });

      test('respects userFieldNames parameter', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/1/')
            .replace(queryParameters: {'user_field_names': 'true'});

        when(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'id': 1,
              'order': 1,
              'Name': 'Test Value',
              'Age': 42,
            }),
            200));

        final row = await client.getRow(1, 1, userFieldNames: true);
        expect(row.id, equals(1));
        expect(row.fields['Name'], equals('Test Value'));
        expect(row.fields['Age'], equals(42));
      });

      test('handles non-existent row error', () async {
        final uri =
            Uri.parse('http://localhost/api/database/rows/table/1/999/');

        when(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'error': 'ERROR_ROW_DOES_NOT_EXIST',
              'detail': 'The requested row does not exist.',
            }),
            404));

        expect(
          () => client.getRow(1, 999),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            404,
          )),
        );
      });

      test('handles permission error', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/1/');

        when(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'error': 'ERROR_USER_NOT_IN_GROUP',
              'detail': 'The user is not in the related workspace.',
            }),
            400));

        expect(
          () => client.getRow(1, 1),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            400,
          )),
        );
      });
    });

    group('streamRows', () {
      test('streams all rows with single page', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/')
            .replace(queryParameters: {
          'page': '1',
          'size': '100',
        });
        when(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 2,
              'next': null,
              'previous': null,
              'results': [
                {
                  'id': 1,
                  'order': 1,
                  'field_1': 'Row 1',
                },
                {
                  'id': 2,
                  'order': 2,
                  'field_1': 'Row 2',
                },
              ],
            }),
            200));

        final rows = await client.streamRows(1).toList();
        expect(rows, hasLength(2));
        expect(rows[0].fields['field_1'], equals('Row 1'));
        expect(rows[1].fields['field_1'], equals('Row 2'));
      });

      test('streams all rows with multiple pages', () async {
        // First page
        final firstUri =
            Uri.parse('http://localhost/api/database/rows/table/1/')
                .replace(queryParameters: {
          'page': '1',
          'size': '100',
        });
        when(mockClient.get(
          firstUri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 4,
              'next': 'http://localhost/api/database/rows/table/1/?page=2',
              'previous': null,
              'results': [
                {
                  'id': 1,
                  'order': 1,
                  'field_1': 'Row 1',
                },
                {
                  'id': 2,
                  'order': 2,
                  'field_1': 'Row 2',
                },
              ],
            }),
            200));

        // Second page
        final secondUri =
            Uri.parse('http://localhost/api/database/rows/table/1/')
                .replace(queryParameters: {
          'page': '2',
          'size': '100',
        });
        when(mockClient.get(
          secondUri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 4,
              'next': null,
              'previous': 'http://localhost/api/database/rows/table/1/?page=1',
              'results': [
                {
                  'id': 3,
                  'order': 3,
                  'field_1': 'Row 3',
                },
                {
                  'id': 4,
                  'order': 4,
                  'field_1': 'Row 4',
                },
              ],
            }),
            200));

        final rows = await client.streamRows(1).toList();
        expect(rows, hasLength(4));
        expect(rows[0].fields['field_1'], equals('Row 1'));
        expect(rows[1].fields['field_1'], equals('Row 2'));
        expect(rows[2].fields['field_1'], equals('Row 3'));
        expect(rows[3].fields['field_1'], equals('Row 4'));
      });

      test('respects provided options', () async {
        final uri = Uri.parse('http://localhost/api/database/rows/table/1/')
            .replace(queryParameters: {
          'page': '1',
          'size': '50',
          'order_by': '-field_1',
          'user_field_names': 'true',
        });

        when(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).thenAnswer((_) async => http.Response(
            jsonEncode({
              'count': 1,
              'next': null,
              'previous': null,
              'results': [
                {
                  'id': 1,
                  'order': 1,
                  'field_1': 'Row 1',
                },
              ],
            }),
            200));

        await client
            .streamRows(
              1,
              options: const ListRowsOptions(
                size: 50,
                orderBy: ['-field_1'],
                userFieldNames: true,
              ),
            )
            .toList();

        verify(mockClient.get(
          uri,
          headers: argThat(isA<Map<String, String>>(), named: 'headers'),
        )).called(1);
      });
    });
  });
}
