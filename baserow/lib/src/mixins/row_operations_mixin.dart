import '../interfaces/row_operations.dart';
import '../rows.dart';

/// Mixin that implements row related operations for Baserow
mixin RowOperationsMixin implements RowOperations {
  /// Function to perform a GET request
  Future<dynamic> get(String path, [Map<String, String>? queryParams]);

  /// Function to perform a POST request
  Future<dynamic> post(String path, Map<String, dynamic> data,
      [Map<String, String>? queryParams]);

  /// Function to perform a PATCH request
  Future<Map<String, dynamic>> patch(String path, Map<String, dynamic> data,
      [Map<String, String>? queryParams]);

  /// Function to perform a DELETE request
  Future<void> delete(String path, [Map<String, String>? queryParams]);

  @override
  Future<RowsResponse> listRows(
    int tableId, {
    ListRowsOptions options = const ListRowsOptions(),
  }) async {
    final response = await get(
      'database/rows/table/$tableId/',
      options.toQueryParameters(),
    );

    return RowsResponse.fromJson(response);
  }

  @override
  Future<List<Row>> listAllRows(
    int tableId, {
    ListRowsOptions options = const ListRowsOptions(),
  }) async {
    final allRows = <Row>[];
    var currentPage = 1;

    while (true) {
      final response = await listRows(
        tableId,
        options: ListRowsOptions(
          page: currentPage,
          size: options.size ?? 100,
          orderBy: options.orderBy,
          filterType: options.filterType,
          filters: options.filters,
          fieldFilters: options.fieldFilters,
          include: options.include,
          exclude: options.exclude,
          includeFieldMetadata: options.includeFieldMetadata,
          viewId: options.viewId,
          userFieldNames: options.userFieldNames,
          linkRowJoins: options.linkRowJoins,
          search: options.search,
        ),
      );

      allRows.addAll(response.results);

      if (response.next == null) {
        break;
      }

      currentPage++;
    }

    return allRows;
  }

  @override
  Stream<Row> streamRows(
    int tableId, {
    ListRowsOptions options = const ListRowsOptions(),
  }) async* {
    var currentPage = 1;

    while (true) {
      final response = await listRows(
        tableId,
        options: ListRowsOptions(
          page: currentPage,
          size: options.size ?? 100,
          orderBy: options.orderBy,
          filterType: options.filterType,
          filters: options.filters,
          fieldFilters: options.fieldFilters,
          include: options.include,
          exclude: options.exclude,
          includeFieldMetadata: options.includeFieldMetadata,
          viewId: options.viewId,
          userFieldNames: options.userFieldNames,
          linkRowJoins: options.linkRowJoins,
          search: options.search,
        ),
      );

      for (final row in response.results) {
        yield row;
      }

      if (response.next == null) {
        break;
      }

      currentPage++;
    }
  }

  @override
  Future<Row> getRow(
    int tableId,
    int rowId, {
    bool userFieldNames = false,
  }) async {
    final queryParams = userFieldNames ? {'user_field_names': 'true'} : null;
    final response = await get(
      'database/rows/table/$tableId/$rowId/',
      queryParams,
    );

    return Row.fromJson(response);
  }

  @override
  Future<Row> createRow(
    int tableId,
    Map<String, dynamic> fields, {
    bool userFieldNames = false,
  }) async {
    final queryParams = userFieldNames ? {'user_field_names': 'true'} : null;
    final response = await post(
      'database/rows/table/$tableId/',
      fields,
      queryParams,
    );

    return Row.fromJson(response);
  }

  @override
  Future<List<Row>> createRows(
    int tableId,
    List<Map<String, dynamic>> fieldsList, {
    bool userFieldNames = false,
  }) async {
    final queryParams = userFieldNames ? {'user_field_names': 'true'} : null;
    final response = await post(
      'database/rows/table/$tableId/batch/',
      {
        'items': fieldsList,
      },
      queryParams,
    );

    final List<dynamic> items = response['items'] as List<dynamic>;
    return items
        .map((item) => Row.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<Row> updateRow(
    int tableId,
    int rowId,
    Map<String, dynamic> fields, {
    bool userFieldNames = false,
  }) async {
    final queryParams = userFieldNames ? {'user_field_names': 'true'} : null;
    final response = await patch(
      'database/rows/table/$tableId/$rowId/',
      fields,
      queryParams,
    );

    return Row.fromJson(response);
  }

  @override
  Future<List<Row>> updateRows(
    int tableId,
    Map<int, Map<String, dynamic>> updates, {
    bool userFieldNames = false,
  }) async {
    final items = updates.entries
        .map((entry) => {
              'id': entry.key,
              ...entry.value,
            })
        .toList();

    final queryParams = userFieldNames ? {'user_field_names': 'true'} : null;
    final response = await patch(
      'database/rows/table/$tableId/batch/',
      {'items': items},
      queryParams,
    );

    final List<dynamic> updatedItems = response['items'] as List<dynamic>;
    return updatedItems
        .map((item) => Row.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> deleteRow(
    int tableId,
    int rowId, {
    bool sendWebhookEvents = true,
  }) async {
    final queryParams =
        !sendWebhookEvents ? {'send_webhook_events': 'false'} : null;
    await delete('database/rows/table/$tableId/$rowId/', queryParams);
  }

  @override
  Future<void> deleteRows(
    int tableId,
    List<int> rowIds, {
    bool sendWebhookEvents = true,
  }) async {
    final queryParams =
        !sendWebhookEvents ? {'send_webhook_events': 'false'} : null;
    await post(
      'database/rows/table/$tableId/batch-delete/',
      {'items': rowIds},
      queryParams,
    );
  }

  @override
  Future<Row> moveRow(
    int tableId,
    int rowId, {
    MoveRowOptions options = const MoveRowOptions(),
  }) async {
    final response = await patch(
      'database/rows/table/$tableId/$rowId/move/',
      {}, // Empty body as all parameters are in query string
      options.toQueryParameters(),
    );

    return Row.fromJson(response);
  }
}
