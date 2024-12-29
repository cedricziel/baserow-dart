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

        // List some rows from the table
        final rows = await authenticatedClient.listRows(table.id);
        print('    First ${rows.length > 5 ? 5 : rows.length} rows:');
        for (final row in rows.take(5)) {
          print('    - $row');
        }
      }
    }

    // Example of creating a new row (commented out)
    // final newRow = await authenticatedClient.createRow(
    //   123, // Replace with actual table ID
    //   {
    //     'Name': 'John Doe',
    //     'Email': 'john@example.com',
    //   },
    // );
    // print('Created new row: $newRow');
  } catch (e) {
    print('Error: $e');
  } finally {
    // Always close the clients when done
    jwtClient.close();
    tokenClient.close();
  }
}
