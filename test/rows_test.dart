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
