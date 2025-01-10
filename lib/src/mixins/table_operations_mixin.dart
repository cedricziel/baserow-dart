import 'package:http/http.dart' as http;

import '../models.dart';
import '../exceptions.dart';
import '../interfaces/table_operations.dart';

/// Mixin that implements table operations for Baserow
mixin TableOperationsMixin implements TableOperations {
  /// The HTTP client used to make requests
  http.Client get httpClient;

  /// Function to make a GET request
  Future<dynamic> get(String path, [Map<String, String>? queryParams]);
  @override
  Future<List<Table>> listTables(int databaseId) async {
    final response = await get('database/tables/database/$databaseId/');
    if (response is! List) {
      throw BaserowException(
          'Response is not a list: ${response.runtimeType}', 0);
    }

    return response.cast<Map<String, dynamic>>().map(Table.fromJson).toList();
  }

  @override
  Future<List<Field>> listFields(int tableId) async {
    final response = await get('database/fields/table/$tableId/');
    final List<dynamic> data = response['fields'] as List<dynamic>;

    return data
        .map((field) => Field.fromJson(field as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<Table> getTableWithFields(int tableId) async {
    final response = await get('database/tables/$tableId/');
    final table = Table.fromJson(response as Map<String, dynamic>);

    // Fetch fields separately
    final fields = await listFields(tableId);
    return Table(
      id: table.id,
      name: table.name,
      order: table.order,
      fields: fields,
    );
  }
}
