import 'package:http/http.dart' as http;

import '../models.dart';
import '../exceptions.dart';
import '../interfaces/table_operations.dart';
import '../builders/base_builders.dart';

/// Mixin that implements table operations for Baserow
mixin TableOperationsMixin implements TableOperations {
  /// The HTTP client used to make requests
  http.Client get httpClient;

  /// Function to make a GET request
  Future<dynamic> get(String path, [Map<String, String>? queryParams]);

  /// Function to make a POST request
  Future<dynamic> post(String path, Map<String, dynamic> data,
      [Map<String, String>? queryParams]);

  /// Function to make a PATCH request
  Future<Map<String, dynamic>> patch(String path, Map<String, dynamic> data,
      [Map<String, String>? queryParams]);

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
      databaseId: table.databaseId,
      dataSync: table.dataSync,
      fields: fields,
    );
  }

  @override
  Future<Table> getDatabaseTable(int tableId) async {
    final response = await get('database/tables/$tableId/');
    return Table.fromJson(response as Map<String, dynamic>);
  }

  @override
  Future<Table> createTable(
    int databaseId, {
    required String name,
    List<List<dynamic>>? data,
    bool firstRowHeader = false,
  }) async {
    final response = await post(
      'database/tables/database/$databaseId/',
      {
        'name': name,
        if (data != null) 'data': data,
        if (data != null) 'first_row_header': firstRowHeader,
      },
    );
    return Table.fromJson(response as Map<String, dynamic>);
  }

  @override
  Future<Table> ensureTable(
    int databaseId,
    TableBuilder builder, {
    bool updateIfExists = true,
  }) async {
    // Validate the builder configuration
    builder.build();

    // Try to find existing table by name
    final tables = await listTables(databaseId);
    final existingTable =
        tables.where((t) => t.name == builder.name).firstOrNull;

    if (existingTable != null) {
      if (!updateIfExists) {
        return existingTable;
      }

      // Update existing table
      final updatedTable = await patch(
        'database/tables/${existingTable.id}/',
        {'name': builder.name},
      );
      final table = Table.fromJson(updatedTable);

      // Get existing fields to compare
      final existingFields = await listFields(table.id);
      final existingFieldsByName = {for (var f in existingFields) f.name: f};

      // Ensure each field exists
      for (final fieldBuilder in builder.fields) {
        final existingField = existingFieldsByName[fieldBuilder.name];
        final fieldConfig = fieldBuilder.build();

        if (existingField == null) {
          // Create new field
          await post(
            'database/fields/table/${table.id}/',
            fieldConfig,
          );
        } else {
          // Update existing field
          await patch(
            'database/fields/${existingField.id}/',
            fieldConfig,
          );
        }
      }

      // Get existing views to compare
      final existingViews = await get('database/views/table/${table.id}/');
      final views = (existingViews as List)
          .cast<Map<String, dynamic>>()
          .map((v) => View.fromJson(v))
          .toList();
      final existingViewsByName = {for (var v in views) v.name: v};

      // Ensure each view exists
      for (final viewBuilder in builder.views) {
        final existingView = existingViewsByName[viewBuilder.name];
        final viewConfig = viewBuilder.build();

        if (existingView == null) {
          // Create new view
          await post(
            'database/views/table/${table.id}/',
            viewConfig,
          );
        } else {
          // Update existing view
          await patch(
            'database/views/${existingView.id}/',
            viewConfig,
          );
        }
      }

      // Apply initial data if provided
      if (builder.initialData != null) {
        await post(
          'database/rows/table/${table.id}/batch/',
          {
            'items': builder.initialData,
          },
        );
      }

      return getTableWithFields(table.id);
    } else {
      // Create new table with fields and views
      final table = await createTable(
        databaseId,
        name: builder.name,
        data: builder.initialData,
        firstRowHeader: builder.firstRowHeader,
      );

      // Create fields
      for (final fieldBuilder in builder.fields) {
        await post(
          'database/fields/table/${table.id}/',
          fieldBuilder.build(),
        );
      }

      // Create views
      for (final viewBuilder in builder.views) {
        await post(
          'database/views/table/${table.id}/',
          viewBuilder.build(),
        );
      }

      return getTableWithFields(table.id);
    }
  }
}
