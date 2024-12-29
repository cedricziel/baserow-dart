# Baserow Dart Client

A Dart client library for interacting with the [Baserow](https://baserow.io) API. This package provides a simple and intuitive way to work with Baserow databases, tables, and rows in your Dart and Flutter applications.

## Features

- 🔐 Authentication support with API tokens
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
- 🛠️ Type-safe data models for Baserow entities
- ⚡ Efficient HTTP connection management

## Installation

Add this package to your project's `pubspec.yaml`:

```yaml
dependencies:
  baserow: ^1.0.0
```

Then run:

```bash
dart pub get
```

## Usage

### Basic Setup

```dart
import 'package:baserow/baserow.dart';

// Create a client instance
final client = BaserowClient(
  config: BaserowConfig(
    baseUrl: 'https://api.baserow.io',
    token: 'YOUR_API_TOKEN',
  ),
);
```

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

```dart
// List rows from a table
final rows = await client.listRows(tableId);

// Create a new row
final newRow = await client.createRow(
  tableId,
  {
    'Name': 'John Doe',
    'Email': 'john@example.com',
  },
);

// Update an existing row
await client.updateRow(
  tableId,
  rowId,
  {
    'Name': 'Jane Doe',
    'Email': 'jane@example.com',
  },
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

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
