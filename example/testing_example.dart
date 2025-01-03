import 'package:baserow/baserow.dart';

/// Example mock response for testing
final mockRowsResponse = {
  'count': 2,
  'next': null,
  'previous': null,
  'results': [
    {
      'id': 1,
      'order': '1.00000000000000000000',
      'field_123': 'test value 1',
    },
    {
      'id': 2,
      'order': '2.00000000000000000000',
      'field_123': 'test value 2',
    },
  ],
};

/// Example of parsing a RowsResponse
void parseRowsResponse() {
  final response = RowsResponse.fromJson(mockRowsResponse);
  print('Total rows: ${response.count}');
  print('Next page: ${response.next}');
  print('Previous page: ${response.previous}');
  print('Results:');
  for (final row in response.results) {
    print('Row ${row.id}: ${row.fields}');
  }
}

/// Example mock row for testing
final mockRow = {
  'id': 1,
  'order': '1.00000000000000000000',
  'field_123': 'test value',
  'field_456': true,
  'field_789': 42,
};

/// Example of parsing a Row
void parseRow() {
  final row = Row.fromJson(mockRow);
  print('Row ID: ${row.id}');
  print('Row order: ${row.order}');
  print('Row fields: ${row.fields}');
}

/// Example of handling numeric and string IDs
final mockRowsWithMixedTypes = [
  {
    'id': 1, // numeric ID
    'order': 1,
    'field_123': 'test value 1',
  },
  {
    'id': '2', // string ID
    'order': '2.00000000000000000000',
    'field_123': 'test value 2',
  },
];

/// Example of handling different ID types
void handleMixedTypes() {
  for (final mockRow in mockRowsWithMixedTypes) {
    final row = Row.fromJson(mockRow);
    print('Row ID: ${row.id} (${row.id.runtimeType})');
    print('Row order: ${row.order} (${row.order.runtimeType})');
    print('Row fields: ${row.fields}');
  }
}

/// Example of handling missing or invalid fields
final mockInvalidRows = [
  {
    // Missing ID (should throw)
    'order': 1,
    'field_123': 'test value',
  },
  {
    'id': 1,
    // Missing order (should default to 0)
    'field_123': 'test value',
  },
  {
    'id': 1,
    'order': 'invalid', // Invalid order (should default to 0)
    'field_123': 'test value',
  },
];

/// Example of handling invalid data
void handleInvalidData() {
  for (final mockRow in mockInvalidRows) {
    try {
      final row = Row.fromJson(mockRow);
      print('Successfully parsed row:');
      print('ID: ${row.id}');
      print('Order: ${row.order}');
      print('Fields: ${row.fields}');
    } catch (e) {
      print('Failed to parse row: $e');
    }
    print('---');
  }
}

void main() {
  print('Testing RowsResponse parsing:');
  print('---');
  parseRowsResponse();
  print('\nTesting Row parsing:');
  print('---');
  parseRow();
  print('\nTesting mixed ID types:');
  print('---');
  handleMixedTypes();
  print('\nTesting invalid data:');
  print('---');
  handleInvalidData();
}
