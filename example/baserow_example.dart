import 'package:baserow/baserow.dart';

void main() async {
  // Create a client instance
  final client = BaserowClient(
    config: BaserowConfig(
      baseUrl: 'https://api.baserow.io',
      token: 'YOUR_API_TOKEN', // Replace with your actual token
    ),
  );

  try {
    // List all databases
    final databases = await client.listDatabases();
    print('Found ${databases.length} databases:');
    for (final db in databases) {
      print('- ${db.name} (ID: ${db.id})');

      // List tables in each database
      final tables = await client.listTables(db.id);
      print('  Tables:');
      for (final table in tables) {
        print('  - ${table.name} (ID: ${table.id})');

        // List fields in each table
        print('    Fields:');
        for (final field in table.fields) {
          print('    - ${field.name} (Type: ${field.type})');
        }

        // List some rows from the table
        final rows = await client.listRows(table.id);
        print('    First ${rows.length > 5 ? 5 : rows.length} rows:');
        for (final row in rows.take(5)) {
          print('    - $row');
        }
      }
    }

    // Example of creating a new row (commented out)
    // final newRow = await client.createRow(
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
    // Always close the client when done
    client.close();
  }
}
