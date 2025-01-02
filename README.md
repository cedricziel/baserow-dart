# Baserow Dart Client

A Dart client library for interacting with the [Baserow](https://baserow.io) API. This package provides a simple and intuitive way to work with Baserow databases, tables, and rows in your Dart and Flutter applications.

## Features

- 🔐 Authentication support
  - API token authentication
  - JWT authentication with refresh capabilities
- 📚 Database management
  - List all accessible databases
  - View database details
- 📋 Table operations
  - List tables in a database
  - View table structure and fields
- 📝 Row operations
  - List rows in a table
  - Create new rows
  - Update existing rows
  - Delete rows
  - Batch operations for creating/updating/deleting multiple rows
- 🔄 Real-time updates via WebSocket
  - Subscribe to table changes
  - Subscribe to workspace events
  - Subscribe to application events
  - Automatic reconnection handling
- 🛠️ Type-safe data models for Baserow entities
- ⚡ Efficient HTTP connection management
- 🧪 Comprehensive testing utilities

## Installation

Add this package to your project's `pubspec.yaml`:

```yaml
dependencies:
  baserow: ^0.1.0
```

Then run:

```bash
dart pub get
```

## Usage

### Authentication

#### API Token Authentication

```dart
import 'package:baserow/baserow.dart';

// Create a client instance with API token
final client = BaserowClient(
  config: BaserowConfig(
    baseUrl: 'https://api.baserow.io',
    token: 'YOUR_API_TOKEN',
  ),
);
```

#### JWT Authentication

```dart
import 'package:baserow/baserow.dart';

// Create a client instance
final client = BaserowClient(
  config: BaserowConfig(
    baseUrl: 'https://api.baserow.io',
    authType: BaserowAuthType.jwt,
  ),
);

// Login to obtain JWT tokens
final authResponse = await client.login('your.email@example.com', 'your_password');
print('JWT Token: ${authResponse.token}');
print('Refresh Token: ${authResponse.refreshToken}');

// Create a new client with the JWT token
final authenticatedClient = BaserowClient(
  config: BaserowConfig(
    baseUrl: 'https://api.baserow.io',
    token: authResponse.token,
    authType: BaserowAuthType.jwt,
  ),
);

// You can verify if the token is still valid
final isValid = await authenticatedClient.verifyToken(authResponse.token);

// When the token expires, you can refresh it
final newToken = await authenticatedClient.refreshToken(authResponse.refreshToken);

// Create a new client with the refreshed token
final refreshedClient = BaserowClient(
  config: BaserowConfig(
    baseUrl: 'https://api.baserow.io',
    token: newToken,
    authType: BaserowAuthType.jwt,
  ),
);
```

The JWT authentication flow provides more security features compared to API tokens, including:

- Token expiration and refresh capabilities
- Token verification
- User information included in the auth response (`authResponse.user`)

### Listing Databases and Tables

```dart
// List all accessible databases
final databases = await client.listDatabases();
for (final db in databases) {
  print('Database: ${db.name} (ID: ${db.id})');

  // List tables in the database
  final tables = await client.listTables(db.id);
  for (final table in tables) {
    print('Table: ${table.name} (ID: ${table.id})');
  }
}
```

### Working with Rows

#### Field Name Formats

Baserow supports two formats for field names:

- Default format: Uses field IDs (e.g., `field_123`)
- User-friendly format: Uses human-readable field names (e.g., `Name`, `Email`)

You can enable user-friendly field names by setting `userFieldNames: true` in the relevant operations.

```dart
// List rows from a table with user-friendly field names
final rows = await client.listRows(
  tableId,
  options: ListRowsOptions(userFieldNames: true),
);

// Create a new row with user-friendly field names
final newRow = await client.createRow(
  tableId,
  {
    'Name': 'John Doe',
    'Email': 'john@example.com',
  },
  userFieldNames: true,
);

// Update an existing row with user-friendly field names
await client.updateRow(
  tableId,
  rowId,
  {
    'Name': 'Jane Doe',
    'Email': 'jane@example.com',
  },
  userFieldNames: true,
);

// Delete a row
await client.deleteRow(tableId, rowId);
```

### Cleanup

Always close the client when you're done to free up resources:

```dart
client.close();
```

## API Documentation

### BaserowConfig

Configuration class for the Baserow client.

```dart
BaserowConfig({
  required String baseUrl,  // The base URL of your Baserow instance
  String? token,           // Optional API token for authentication
})
```

### BaserowClient

Main client class for interacting with the Baserow API.

#### ListRowsOptions

Options for customizing row listing operations:

```dart
ListRowsOptions({
  int? page,                    // The page number to fetch (1-based)
  int? size,                    // The number of rows per page
  String? orderBy,              // The field to order by
  bool? descending,             // Whether to order in descending order
  List<RowFilter>? filters,     // Filters to apply
  bool includeFieldMetadata,    // Whether to include field metadata
  int? viewId,                  // Optional view ID to scope the request
  bool userFieldNames = false,  // Use human-readable field names instead of field_123
})
```

#### Methods

- `Future<List<Database>> listDatabases()`
  - Lists all databases accessible to the authenticated user

- `Future<List<Table>> listTables(int databaseId)`
  - Lists all tables in a specific database

- `Future<List<Map<String, dynamic>>> listRows(int tableId)`
  - Lists all rows in a specific table

- `Future<Map<String, dynamic>> createRow(int tableId, Map<String, dynamic> fields)`
  - Creates a new row in a table

- `Future<Map<String, dynamic>> updateRow(int tableId, int rowId, Map<String, dynamic> fields)`
  - Updates an existing row in a table

- `Future<void> deleteRow(int tableId, int rowId)`
  - Deletes a row from a table

### Models

- `Database` - Represents a Baserow database
- `Table` - Represents a table within a database
- `Field` - Represents a field within a table

## Error Handling

The library throws `BaserowException` for API errors, which includes:

- Error message
- HTTP status code

Example error handling:

```dart
try {
  final databases = await client.listDatabases();
} on BaserowException catch (e) {
  print('Baserow API error: ${e.message} (Status: ${e.statusCode})');
} catch (e) {
  print('Unexpected error: $e');
}
```

## Additional Information

- [GitHub Repository](https://github.com/cedricziel/baserow-dart)
- [Baserow API Documentation](https://baserow.io/docs/apis%2Frest-api)
- [Issue Tracker](https://github.com/cedricziel/baserow-dart/issues)

## Testing Support

The SDK provides built-in testing utilities to help you write tests for applications that use Baserow. These utilities make it easy to mock both REST API calls and WebSocket real-time events.

### Installation

Add the SDK to your dev_dependencies in `pubspec.yaml`:

```yaml
dev_dependencies:
  baserow: ^0.1.0
  test: ^1.24.0
```

### Mocking REST API Calls

```dart
import 'package:baserow/baserow.dart';
import 'package:baserow/src/testing.dart';
import 'package:test/test.dart';

void main() {
  test('fetching rows', () async {
    // Create a mock client
    final mockClient = BaserowTestUtils.createMockClient();

    // Configure mock responses
    when(mockClient.listRows(1)).thenAnswer((_) async => RowsResponse(
          count: 1,
          next: null,
          previous: null,
          results: [
            Row(id: 1, order: 1, fields: {'name': 'Test Row'}),
          ],
        ));

    // Use the mock client
    final rows = await mockClient.listRows(1);
    expect(rows.results.first.fields['name'], equals('Test Row'));
  });
}
```

### Testing Real-time Events

```dart
import 'package:baserow/baserow.dart';
import 'package:baserow/src/testing.dart';
import 'package:test/test.dart';

void main() {
  test('receiving real-time updates', () async {
    // Create a mock WebSocket
    final mockWebSocket = BaserowTestUtils.createMockWebSocket();
    await mockWebSocket.connect();

    // Subscribe to table events
    final subscription = mockWebSocket.subscribeToTable(1);

    // Emit a test event
    mockWebSocket.emitTableEvent(
      1,
      'row_created',
      {
        'row_id': 1,
        'values': {'name': 'New Row'},
      },
    );

    // Verify the event was received
    await expectLater(
      subscription,
      emits(isA<BaserowTableEvent>()
          .having((e) => e.type, 'type', 'row_created')
          .having((e) => e.tableId, 'tableId', 1)),
    );
  });
}
```

### Testing Error Handling

```dart
test('handling WebSocket errors', () async {
  final mockWebSocket = BaserowTestUtils.createMockWebSocket();
  await mockWebSocket.connect();

  var errorReceived = false;
  mockWebSocket.onError = (error) {
    errorReceived = true;
  };

  // Simulate an error
  mockWebSocket.emitError(Exception('Test error'));

  // Verify error was handled
  await Future.delayed(Duration.zero);
  expect(errorReceived, isTrue);
});
```

For more examples, check out the [testing examples](example/testing_example.dart) in the repository.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
