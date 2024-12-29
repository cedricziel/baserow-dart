import 'package:baserow/baserow.dart';

void main() async {
  // Example 1: Traditional token-based authentication
  final tokenClient = BaserowClient(
    config: BaserowConfig(
      baseUrl: 'https://api.baserow.io',
      token: 'YOUR_API_TOKEN', // Replace with your actual token
      authType: BaserowAuthType.token,
    ),
  );

  // Example 2: JWT authentication
  final jwtClient = BaserowClient(
    config: BaserowConfig(
      baseUrl: 'https://api.baserow.io',
      authType: BaserowAuthType.jwt,
    ),
  );

  try {
    // Login with email and password to get JWT token
    final authResponse = await jwtClient.login(
      'your.email@example.com',
      'your_password',
    );
    print('Successfully logged in as: ${authResponse.user}');

    // Create a new client with the JWT token
    final authenticatedClient = BaserowClient(
      config: BaserowConfig(
        baseUrl: 'https://api.baserow.io',
        token: authResponse.token,
        authType: BaserowAuthType.jwt,
      ),
    );

    // Verify the token is valid
    final isValid = await authenticatedClient.verifyToken(authResponse.token);
    print('Token is valid: $isValid');

    // If token expires, you can refresh it
    final newToken =
        await authenticatedClient.refreshToken(authResponse.refreshToken);
    print('Received new token: $newToken');

    // Example of using the authenticated client
    // List all databases
    final databases = await authenticatedClient.listDatabases();
    print('Found ${databases.length} databases:');
    for (final db in databases) {
      print('- ${db.name} (ID: ${db.id})');

      // List tables in each database
      final tables = await authenticatedClient.listTables(db.id);
      print('  Tables:');
      for (final table in tables) {
        print('  - ${table.name} (ID: ${table.id})');

        // List fields in each table
        print('    Fields:');
        for (final field in table.fields) {
          print('    - ${field.name} (Type: ${field.type})');
        }

        // Example: List rows with filtering, pagination, and view scoping
        final rowsResponse = await authenticatedClient.listRows(
          table.id,
          options: ListRowsOptions(
            page: 1,
            size: 5,
            orderBy: 'id',
            descending: true,
            filters: [
              RowFilter(
                field: 'status',
                operator: FilterOperator.equal,
                value: 'active',
              ),
            ],
            viewId: 456, // Optional: Scope request to a specific view
          ),
        );

        print('    Found ${rowsResponse.count} total rows');
        print('    First page rows:');
        for (final row in rowsResponse.results) {
          print('    - Row ${row.id}: ${row.fields}');
        }

        // Example: Create multiple rows
        final newRows = await authenticatedClient.createRows(
          table.id,
          [
            {
              'Name': 'John Doe',
              'Email': 'john@example.com',
              'Status': 'active',
            },
            {
              'Name': 'Jane Smith',
              'Email': 'jane@example.com',
              'Status': 'pending',
            },
          ],
        );
        print('Created ${newRows.length} new rows');

        // Example: Update multiple rows
        final updates = {
          newRows[0].id: {'Status': 'inactive'},
          newRows[1].id: {'Status': 'active'},
        };
        final updatedRows =
            await authenticatedClient.updateRows(table.id, updates);
        print('Updated ${updatedRows.length} rows');

        // Example: Delete multiple rows
        await authenticatedClient.deleteRows(
          table.id,
          [newRows[0].id, newRows[1].id],
        );
        print('Deleted the test rows');
      }
    }
  } catch (e) {
    print('Error: $e');
  } finally {
    // Always close the clients when done
    jwtClient.close();
    tokenClient.close();
  }
}
