import '../models.dart';

/// Interface for field related operations in Baserow
abstract class FieldOperations {
  /// Creates a new field in a table
  ///
  /// [tableId] is the ID of the table to create the field in
  /// [name] is the name of the field (required, max 255 chars)
  /// [type] is the type of field to create (e.g., 'text', 'number', etc.)
  /// [description] Optional description of the field
  /// [options] Optional field-specific options (e.g., text_default for text fields)
  ///
  /// Returns the created field
  /// Throws [BaserowException] if the field creation fails or the user doesn't have access
  Future<Field> createField(
    int tableId, {
    required String name,
    required String type,
    String? description,
    Map<String, dynamic>? options,
  });

  /// Lists all fields in a table
  ///
  /// [tableId] is the ID of the table to list fields for
  Future<List<Field>> listFields(int tableId);

  /// Gets a field by its ID
  ///
  /// [fieldId] is the ID of the field to retrieve
  Future<Field> getField(int fieldId);

  /// Updates a field
  ///
  /// [fieldId] is the ID of the field to update
  /// [name] Optional new name for the field
  /// [description] Optional new description
  /// [options] Optional field-specific options to update
  ///
  /// Returns the updated field
  Future<Field> updateField(
    int fieldId, {
    String? name,
    String? description,
    Map<String, dynamic>? options,
  });

  /// Deletes a field
  ///
  /// [fieldId] is the ID of the field to delete
  Future<void> deleteField(int fieldId);
}
