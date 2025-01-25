# Baserow Dart Client

A Dart client library for interacting with the [Baserow](https://baserow.io) API. This package provides a simple and intuitive way to work with Baserow databases, tables, and rows in your Dart and Flutter applications.

## Features

- 📤 [File uploads](#file-uploads)
  - Upload files to Baserow
  - Support for images with thumbnails
  - Detailed file metadata
- 🔐 [Authentication support](#authentication)
  - API token authentication
  - JWT authentication with refresh capabilities
- 📚 [Database management](#listing-databases-and-tables)
  - List all accessible databases
  - View database details
- 📋 Table operations
  - List tables in a database
  - View table structure and fields
  - Create new tables with initial data
  - Create and manage table fields
- 📝 [Row operations](#working-with-rows)
  - List rows in a table
  - Create new rows
  - Update existing rows
  - Delete rows
  - Batch operations for creating/updating/deleting multiple rows
- 🔄 Real-time updates via WebSocket
  - Subscribe to table changes
  - Subscribe to workspace events
  - Subscribe to application events
  - Subscribe to user events
  - Automatic reconnection handling
- 🛠️ [Type-safe data models](#models) for Baserow entities
- ⚡ Efficient HTTP connection management
- 🧪 [Comprehensive testing utilities](#testing-support)

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
final authResponse = await client.login(
  'your.email@example.com',
  'your_password',
);
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

// When you're done, you can logout to invalidate the tokens
await authenticatedClient.logout();
// After logout, the client's tokens are cleared and the refresh timer is stopped
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

### File Uploads

```dart
// Upload a local file
final fileBytes = await File('image.png').readAsBytes();
final response = await client.uploadFile(fileBytes, 'image.png');

// Upload a file from a URL
final urlResponse = await client.uploadFileViaUrl('https://example.com/image.png');

// Access file information
print('File URL: ${response.url}');
print('File name: ${response.name}');
print('File size: ${response.size}');
print('MIME type: ${response.mimeType}');

// For images, you can access thumbnails and dimensions
if (response.isImage) {
  print('Image width: ${response.imageWidth}');
  print('Image height: ${response.imageHeight}');

  // Access thumbnails
  for (final entry in response.thumbnails.entries) {
    print('Thumbnail ${entry.key}:');
    print('  URL: ${entry.value.url}');
    print('  Width: ${entry.value.width}');
    print('  Height: ${entry.value.height}');
  }
}
```

Both upload methods return a FileUploadResponse that includes:

- `url`: Direct URL to the uploaded file
- `name`: The file name on the server
- `size`: File size in bytes
- `mimeType`: The file's MIME type
- `isImage`: Whether the file is an image
- `imageWidth` and `imageHeight`: Dimensions for image files
- `thumbnails`: Map of available thumbnails with their URLs and dimensions
- `uploadedAt`: Timestamp of when the file was uploaded

### Database Tokens

Database tokens provide a way to access and manage table data with specific permissions. Each token is associated with a workspace and can have different permissions for creating, reading, updating, and deleting rows.

```dart
// List all database tokens
final tokens = await client.listDatabaseTokens();
for (final token in tokens) {
  print('Token: ${token.name}');
  print('Workspace: ${token.workspace}');
  print('Key: ${token.key}');

  // Check permissions
  final perms = token.permissions;
  print('Can create: ${perms.create}');
  print('Can read: ${perms.read}');
  print('Can update: ${perms.update}');
  print('Can delete: ${perms.delete}');
}

// Get a specific database token by ID
try {
  final token = await client.getDatabaseToken(123);
  print('Token: ${token.name}');
  print('Workspace: ${token.workspace}');
  print('Key: ${token.key}');
} on BaserowException catch (e) {
  if (e.message == 'ERROR_TOKEN_DOES_NOT_EXIST') {
    print('Token not found');
  } else if (e.message == 'ERROR_USER_NOT_IN_GROUP') {
    print('User not authorized to access this token');
  } else {
    print('Error: ${e.message}');
  }
}

// Delete a database token
try {
  await client.deleteDatabaseToken(123);
  print('Token deleted successfully');
} on BaserowException catch (e) {
  if (e.message == 'ERROR_TOKEN_DOES_NOT_EXIST') {
    print('Token not found');
  } else if (e.message == 'ERROR_USER_NOT_IN_GROUP') {
    print('User not authorized to delete this token');
  } else {
    print('Error: ${e.message}');
  }
}

// Check if a database token is valid
try {
  await client.checkDatabaseToken();
  print('Token is valid');
} on BaserowException catch (e) {
  if (e.message == 'ERROR_TOKEN_DOES_NOT_EXIST') {
    print('Token is invalid');
  } else {
    print('Error: ${e.message}');
  }
}
```

Permissions can be either:

- Boolean values (true/false) for full access or no access
- Lists of [["database", id], ["table", id]] for granular access to specific databases or tables

For example:

```dart
// Full access token
{
  "create": true,  // Can create rows in all tables
  "read": true,    // Can read rows from all tables
  "update": true,  // Can update rows in all tables
  "delete": true   // Can delete rows from all tables
}

// Limited access token
{
  "create": false,  // Cannot create rows
  "read": [["database", 1], ["table", 10]],  // Can only read from database 1 and table 10
  "update": false,  // Cannot update rows
  "delete": []     // Cannot delete rows
}
```

### Workspaces

Workspaces are containers that can hold multiple applications like databases. Multiple users can have access to a workspace, and each user can have different permissions within the workspace.

```dart
// List all workspaces
final workspaces = await client.listWorkspaces();
for (final workspace in workspaces) {
  print('Workspace: ${workspace.name}');

  // Access workspace details
  print('ID: ${workspace.id}');
  print('Permissions: ${workspace.permissions}');
  print('Unread Notifications: ${workspace.unreadNotificationsCount}');
  print('AI Models Enabled: ${workspace.generativeAiModelsEnabled}');

  // List workspace users
  for (final user in workspace.users) {
    print('User: ${user.name} (${user.email})');
    print('Role: ${user.permissions}');
    print('Created on: ${user.createdOn}');
  }
}
```

The workspace listing provides:

- Basic workspace information (ID, name, permissions)
- List of workspace users with their details
- User-specific information like unread notification count
- Workspace settings like enabled AI models
- Custom ordering of workspaces per user (configurable via the order_workspaces endpoint)

### View Operations

Views provide different ways to display and interact with table data. Each table can have multiple views (grid, gallery, form, kanban, calendar, timeline) with their own settings.

```dart
// Create a new grid view
final gridView = await client.createView(
  tableId,
  name: "Main Grid",
  type: "grid",
  filterType: "AND",
  filtersDisabled: false,
);

// Create a public gallery view
final galleryView = await client.createView(
  tableId,
  name: "Public Gallery",
  type: "gallery",
  public: true,
);

// List all views for a table
final views = await client.listViews(tableId);
for (final view in views) {
  print('View: ${view.name} (Type: ${view.type})');
  print('Public: ${view.public}');
  print('Slug: ${view.slug}');
}

// Get a specific view
final view = await client.getView(viewId);
print('View name: ${view.name}');
print('Filter type: ${view.filterType}');
print('Filters disabled: ${view.filtersDisabled}');

// Update a view
final updatedView = await client.updateView(
  viewId,
  name: "Updated View",
  filterType: "OR",
  filtersDisabled: true,
);

// Delete a view
await client.deleteView(viewId);
```

Each view type has its own specific features:

- Grid: Traditional spreadsheet-like view with rows and columns
- Gallery: Card-based view ideal for visual content
- Form: Customizable form for data entry
- Kanban: Board view for organizing items into columns
- Calendar: Date-based view for temporal data
- Timeline: Time-based view for project planning

Views can be:

- Public or private (controlled via the `public` parameter)
- Collaborative or personal (set via `ownershipType`)
- Filtered using various conditions (configured with `filterType` and `filtersDisabled`)

### Table Operations

#### Creating and Ensuring Tables

You can create tables in two ways:

1. Basic table creation:

```dart
// Create a new table
final table = await client.createTable(
  databaseId,
  name: "Customers",
  data: [
    ["Name", "Email", "Status"],           // Field names
    ["John Doe", "john@example.com", "Active"],  // Initial data
  ],
  firstRowHeader: true,  // Use first row as field names
);

// Create a table without initial data
final emptyTable = await client.createTable(
  databaseId,
  name: "Products",
);
```

2. Using TableBuilder for declarative table creation and updates:

```dart
// Define a table structure with fields and views
final table = await client.ensureTable(
  databaseId,
  TableBuilder("Customers")
    ..withTextField("Name")
    ..withTextField("Email")
    ..withTextField("Status")
    ..withGridView("Main Grid")
    ..withData([
      ["John Doe", "john@example.com", "Active"],
      ["Jane Smith", "jane@example.com", "Pending"],
    ]),
);

// The ensureTable method will:
// 1. Create the table if it doesn't exist
// 2. Update the table if it exists and updateIfExists is true (default)
// 3. Return the existing table without changes if updateIfExists is false

// You can also use it to ensure a consistent data model across environments:
final customersTable = await client.ensureTable(
  databaseId,
  TableBuilder("Customers")
    ..withTextField("Name", required: true)
    ..withTextField("Email", required: true)
    ..withSelectField("Status", options: ["Active", "Pending", "Inactive"])
    ..withNumberField("Age", description: "Customer's age")
    ..withDateField("JoinDate")
    ..withGridView("All Customers")
    ..withGalleryView("Customer Cards")
    ..withFormView("New Customer"),
);
```

The TableBuilder provides a fluent interface for defining:

- Table name and structure
- Fields with their types and options
- Views (Grid, Gallery, Form, etc.)
- Initial data
- Field validation (required fields, etc.)
- Field descriptions and metadata

This is particularly useful for:

- Setting up consistent table structures across different environments
- Maintaining data models in version control
- Automated table creation and updates in tests
- Ensuring required fields and views exist

#### Managing Fields

```dart
// Create a text field
final nameField = await client.createField(
  tableId,
  name: "Name",
  type: "text",
  options: {"text_default": "New Customer"},
);

// Create a number field
final priceField = await client.createField(
  tableId,
  name: "Price",
  type: "number",
  options: {
    "number_decimal_places": 2,
    "number_negative": true,
  },
);

// List all fields in a table
final fields = await client.listFields(tableId);
for (final field in fields) {
  print('Field: ${field.name} (Type: ${field.type})');
}

// Update a field
final updatedField = await client.updateField(
  fieldId,
  name: "Full Name",
  description: "Customer's full name",
);

// Delete a field
await client.deleteField(fieldId);
```

### Working with Rows

#### Getting a Single Row

```dart
// Get a single row by ID
final row = await client.getRow(tableId, rowId);
print('Row ID: ${row.id}');
print('Field value: ${row.fields['field_1']}');

// Get a row using human-readable field names
final row = await client.getRow(
  tableId,
  rowId,
  userFieldNames: true,
);
print('Name: ${row.fields['Name']}');
print('Email: ${row.fields['Email']}');
```

The getRow method allows you to:

- Fetch a specific row by its ID
- Use human-readable field names with `userFieldNames: true`
- Access all field values through the `fields` property
- Handle common errors like non-existent rows or permission issues

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

// Delete a single row
await client.deleteRow(tableId, rowId);  // with webhooks
await client.deleteRow(tableId, rowId, sendWebhookEvents: false);  // without webhooks

// Delete multiple rows in batch
await client.deleteRows(tableId, [123, 456]);  // with webhooks
await client.deleteRows(tableId, [123, 456], sendWebhookEvents: false);  // without webhooks

// Move a row to a new position
final movedRow = await client.moveRow(
  tableId,
  rowId,
  options: MoveRowOptions(
    beforeId: 456,  // Move before this row
    userFieldNames: true,  // Use human-readable field names
    sendWebhookEvents: true,  // Trigger webhooks after move
  ),
);

// Move a row to the end of the table
final movedToEnd = await client.moveRow(
  tableId,
  rowId,
);
```

#### MoveRowOptions

Options for customizing row move operations:

```dart
MoveRowOptions({
  bool userFieldNames = false,  // Use human-readable field names
  int? beforeId,               // ID of row to move before (null = move to end)
  bool sendWebhookEvents = true, // Whether to trigger webhooks after move
})
```

The move operation allows you to:

- Move a row before another specific row using `beforeId`
- Move a row to the end of the table by omitting `beforeId`
- Control webhook event triggering with `sendWebhookEvents`
- Use human-readable field names in the response with `userFieldNames`

### Cleanup

Always close the client when you're done to free up resources:

```dart
client.close();
```

## API Documentation

### BaserowConfig {#baserowconfig}

Configuration class for the Baserow client.

```dart
BaserowConfig({
  required String baseUrl,  // The base URL of your Baserow instance
  String? token,           // Optional API token for authentication
})
```

### BaserowClient {#baserowclient}

Main client class for interacting with the Baserow API.

#### ListRowsOptions

Options for customizing row listing operations:

```dart
ListRowsOptions({
  int? page,                    // The page number to fetch (1-based)
  int? size,                    // The number of rows per page
  String? search,               // Search term to filter rows
  List<String>? orderBy,        // Fields to order by, with optional direction prefix (+ or -)
  String filterType = 'AND',    // Filter type - AND/OR for combining multiple filters
  List<RowFilter>? filters,     // JSON format filters
  Map<String, Map<String, dynamic>>? fieldFilters,  // Individual field filters (supports strings and integers)
  List<String>? include,        // Fields to include in the response
  List<String>? exclude,        // Fields to exclude from the response
  bool includeFieldMetadata,    // Whether to include field metadata
  int? viewId,                  // Optional view ID to scope the request
  bool userFieldNames = false,  // Use human-readable field names instead of field_123
  Map<String, List<String>>? linkRowJoins,  // Link row field joins for related table data
})
```

##### Ordering Rows

You can order rows by multiple fields using the `orderBy` parameter:

```dart
// Order by single field descending
options: ListRowsOptions(
  orderBy: ['-name'],
)

// Order by multiple fields
options: ListRowsOptions(
  orderBy: ['+first_name', '-last_name', 'age'],
)

// With special characters in field names
options: ListRowsOptions(
  orderBy: ['First, Name', 'Last "Name"'],  // Will be properly escaped
)
```

##### Filtering Rows

There are two ways to filter rows:

1. Using the JSON format with `filters`:

```dart
options: ListRowsOptions(
  filterType: 'OR',  // Use OR to match any filter, AND to match all
  filters: [
    RowFilter(
      field: 'age',
      operator: FilterOperator.higherThan,
      value: 18,
    ),
    RowFilter(
      field: 'status',
      operator: FilterOperator.equal,
      value: 'active',
    ),
  ],
)
```

2. Using individual field filters:

```dart
options: ListRowsOptions(
  fieldFilters: {
    'status': {'equal': 'active'},
    'age': {'greater_than': 18},      // Integer values are supported directly
    'rating': {'equal': 5},           // No need to convert to strings
  },
)
```

##### Including/Excluding Fields

Control which fields are returned in the response:

```dart
options: ListRowsOptions(
  include: ['name', 'email'],  // Only include these fields
  exclude: ['sensitive_data'], // Exclude these fields
)
```

##### Link Row Joins

Fetch related table data through link row fields:

```dart
options: ListRowsOptions(
  linkRowJoins: {
    'company': ['name', 'address'],  // Get company name and address
    'department': ['title'],         // Get department title
  },
)
```

##### Search

Filter rows using a search term:

```dart
options: ListRowsOptions(
  search: 'search term',  // Will search across all searchable fields
)
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

- `Future<void> deleteRow(int tableId, int rowId, {bool sendWebhookEvents = true})`
  - Deletes a row from a table
  - Optional `sendWebhookEvents` parameter controls webhook triggering (defaults to true)

- `Future<void> deleteRows(int tableId, List<int> rowIds, {bool sendWebhookEvents = true})`
  - Deletes multiple rows from a table in batch mode
  - Takes a list of row IDs to delete
  - Optional `sendWebhookEvents` parameter controls webhook triggering (defaults to true)

### Models {#models}

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

### Testing Real-time Events {#testing-real-time-events}

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

### User Stream {#user-stream}

The client provides a stream of the current user that you can listen to for authentication state changes:

```dart
// Get access to the user stream
Stream<User?> userStream = client.userStream;

// Listen for user changes
userStream.listen((user) {
  if (user != null) {
    print('User is logged in: ${user.name}');
    print('Email: ${user.email}');
  } else {
    print('User has logged out');
  }
});
```

The user stream emits:

- A User object when the user logs in or when their information changes
- null when the user logs out

This is particularly useful for:

- Tracking authentication state changes
- Updating UI based on user login status
- Accessing current user information in real-time

### Testing Error Handling {#testing-error-handling}

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
