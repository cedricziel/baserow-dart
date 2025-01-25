import 'package:http/http.dart' as http;

import '../models.dart';
import '../exceptions.dart';
import '../interfaces/field_operations.dart';

/// Mixin that implements field operations for Baserow
mixin FieldOperationsMixin implements FieldOperations {
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
  Future<Field> createField(
    int tableId, {
    required String name,
    required String type,
    String? description,
    Map<String, dynamic>? options,
  }) async {
    final data = {
      'name': name,
      'type': type,
      if (description != null) 'description': description,
      if (options != null) ...options,
    };

    final response = await post(
      'database/fields/table/$tableId/',
      data,
    );

    return Field.fromJson(response as Map<String, dynamic>);
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
  Future<Field> getField(int fieldId) async {
    final response = await get('database/fields/$fieldId/');
    return Field.fromJson(response as Map<String, dynamic>);
  }

  @override
  @override
  Future<Field> updateField(
    int fieldId, {
    String? name,
    String? description,
    Map<String, dynamic>? options,
  }) async {
    final data = {
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (options != null) ...options,
    };

    final response = await patch(
      'database/fields/$fieldId/',
      data,
    );

    return Field.fromJson(response as Map<String, dynamic>);
  }

  @override
  Future<void> deleteField(int fieldId) async {
    await delete('database/fields/$fieldId/');
  }
}
