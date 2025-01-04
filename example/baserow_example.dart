import 'package:baserow/baserow.dart';

void main() async {
  // Create a client with token authentication
  final client = BaserowClient(
    config: BaserowConfig(
      baseUrl: 'https://api.baserow.io',
      token: 'YOUR_TOKEN',
      authType: BaserowAuthType.token,
    ),
  );

  // Or create a client with JWT authentication
  final jwtClient = BaserowClient(
    config: BaserowConfig(
      baseUrl: 'https://api.baserow.io',
      token: 'YOUR_JWT_TOKEN',
      refreshToken: 'YOUR_REFRESH_TOKEN',
      authType: BaserowAuthType.jwt,
      onTokenRefresh: (token, refreshToken) {
        // Store new tokens
        print('New token: $token');
        print('New refresh token: $refreshToken');
      },
    ),
  );

  // Login to get tokens
  final authClient = BaserowClient(
    config: BaserowConfig(
      baseUrl: 'https://api.baserow.io',
      authType: BaserowAuthType.jwt,
    ),
  );

  try {
    final authResponse = await authClient.login(
      'your.email@example.com',
      'your-password',
    );
    print('Logged in successfully');
    print('User: ${authResponse.user}');
    print('Refresh token: ${authResponse.refreshToken}');

    // List databases
    final databases = await client.listDatabases();
    print('\nDatabases:');
    for (final db in databases) {
      print('${db.name} (${db.id})');

      // List tables in database
      final tables = await client.listTables(db.id);
      print('\nTables in ${db.name}:');
      for (final table in tables) {
        print('${table.name} (${table.id})');

        // Get table with fields
        final tableWithFields = await client.getTableWithFields(table.id);
        print('\nFields in ${table.name}:');
        for (final field in tableWithFields.fields!) {
          print('${field.name} (${field.type})');
        }

        // List rows with options
        final rows = await client.listRows(
          table.id,
          options: ListRowsOptions(
            page: 1,
            size: 10,
            orderBy: ['-id'],
            filters: [
              RowFilter(
                field: 'field_123',
                operator: FilterOperator.equal,
                value: 'test',
              ),
            ],
            includeFieldMetadata: true,
            userFieldNames: true,
            // Example of additional features:
            search: 'search term',
            include: ['field_123', 'field_456'],
            exclude: ['sensitive_field'],
            fieldFilters: {
              'status': {'equal': 'active'},
              'age': {'greater_than': '18'},
            },
            linkRowJoins: {
              'company': ['name', 'address'],
            },
          ),
        );

        print('\nRows in ${table.name}:');
        for (final row in rows.results) {
          print('Row ${row.id}: ${row.fields}');
        }

        // Create a row
        final newRow = await client.createRow(
          table.id,
          {'field_123': 'test value'},
        );
        print('\nCreated row: ${newRow.id}');

        // Update the row
        final updatedRow = await client.updateRow(
          table.id,
          newRow.id,
          {'field_123': 'updated value'},
        );
        print('Updated row: ${updatedRow.id}');

        // Delete the row
        await client.deleteRow(table.id, newRow.id);
        print('Deleted row: ${newRow.id}');
      }
    }
  } catch (e) {
    print('Error: $e');
  } finally {
    // Close the clients
    client.close();
    jwtClient.close();
    authClient.close();
  }
}
