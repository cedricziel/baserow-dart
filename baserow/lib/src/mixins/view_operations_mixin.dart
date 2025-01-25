import 'package:http/http.dart' as http;

import '../models.dart';
import '../interfaces/view_operations.dart';

/// Mixin that implements view operations for Baserow
mixin ViewOperationsMixin implements ViewOperations {
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

  /// Function to make a DELETE request
  Future<void> delete(String path, [Map<String, String>? queryParams]);

  @override
  Future<View> createView(
    int tableId, {
    required String name,
    required String type,
    String? ownershipType,
    String? filterType,
    bool? filtersDisabled,
    String? rowIdentifierType,
    bool? public,
  }) async {
    final data = {
      'name': name,
      'type': type,
      if (ownershipType != null) 'ownership_type': ownershipType,
      if (filterType != null) 'filter_type': filterType,
      if (filtersDisabled != null) 'filters_disabled': filtersDisabled,
      if (rowIdentifierType != null) 'row_identifier_type': rowIdentifierType,
      if (public != null) 'public': public,
    };

    final response = await post(
      'database/views/table/$tableId/',
      data,
    );

    return View.fromJson(response as Map<String, dynamic>);
  }

  @override
  Future<List<View>> listViews(
    int tableId, {
    String? type,
    String? include,
  }) async {
    final queryParams = <String, String>{
      if (type != null) 'type': type,
      if (include != null) 'include': include,
    };

    final response = await get(
      'database/views/table/$tableId/',
      queryParams.isNotEmpty ? queryParams : null,
    );

    final List<dynamic> data = response as List<dynamic>;
    return data
        .map((view) => View.fromJson(view as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<View> getView(int viewId) async {
    final response = await get('database/views/$viewId/');
    return View.fromJson(response as Map<String, dynamic>);
  }

  @override
  Future<View> updateView(
    int viewId, {
    String? name,
    String? filterType,
    bool? filtersDisabled,
    bool? public,
  }) async {
    final data = {
      if (name != null) 'name': name,
      if (filterType != null) 'filter_type': filterType,
      if (filtersDisabled != null) 'filters_disabled': filtersDisabled,
      if (public != null) 'public': public,
    };

    final response = await patch(
      'database/views/$viewId/',
      data,
    );

    return View.fromJson(response);
  }

  @override
  Future<void> deleteView(int viewId) async {
    await delete('database/views/$viewId/');
  }
}
