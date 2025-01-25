//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for DatabaseTableFieldsApi
void main() {
  // final instance = DatabaseTableFieldsApi();

  group('tests for DatabaseTableFieldsApi', () {
    // Changes the primary field of a table to the one provided in the body payload.
    //
    //Future<FieldField> changePrimaryField(int tableId, ChangePrimaryFieldParams changePrimaryFieldParams, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test changePrimaryField', () async {
      // TODO
    });

    // Creates a new field for the table related to the provided `table_id` parameter if the authorized user has access to the related database's workspace. Depending on the type, different properties can optionally be set.If creating the field causes other fields to change then the specificinstances of those fields will be included in the related fields response key.
    //
    //Future<FieldFieldSerializerWithRelatedFields> createDatabaseTableField(int tableId, { String clientSessionId, String clientUndoRedoActionGroupId, FieldCreateField fieldCreateField }) async
    test('test createDatabaseTableField', () async {
      // TODO
    });

    // Deletes the existing field if the authorized user has access to the related database's workspace. Note that all the related data to that field is also deleted. Primary fields cannot be deleted because their value represents the row. If deleting the field causes other fields to change then the specificinstances of those fields will be included in the related fields response key.
    //
    //Future<RelatedFields> deleteDatabaseTableField(int fieldId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test deleteDatabaseTableField', () async {
      // TODO
    });

    // Duplicates the table with the provided `table_id` parameter if the authorized user has access to the database's workspace.
    //
    //Future<DuplicateFieldJobTypeResponse> duplicateTableField(int fieldId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test duplicateTableField', () async {
      // TODO
    });

    // This endpoint generates a Baserow formula for the table related to the provided id, based on the human readable input provided in the request body. This is a **premium** feature.
    //
    //Future<GenerateFormulaWithAIResponse> generateFormulaWithAi(int tableId, GenerateFormulaWithAIRequest generateFormulaWithAIRequest) async
    test('test generateFormulaWithAi', () async {
      // TODO
    });

    // Endpoint that's used by the AI field to start an sync task that will update the cell value of the provided row IDs based on the dynamically constructed prompt configured in the field settings.  This is a **premium** feature.
    //
    //Future<String> generateTableAiFieldValue(int fieldId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test generateTableAiFieldValue', () async {
      // TODO
    });

    // Returns a list of all the unique row values for an existing field, sorted in order of frequency.
    //
    //Future<UniqueRowValues> getDatabaseFieldUniqueRowValues(int fieldId, { int limit, bool splitCommaSeparated }) async
    test('test getDatabaseFieldUniqueRowValues', () async {
      // TODO
    });

    // Returns the existing field if the authorized user has access to the related database's workspace. Depending on the type different properties could be returned.
    //
    //Future<FieldField> getDatabaseTableField(int fieldId) async
    test('test getDatabaseTableField', () async {
      // TODO
    });

    // Lists all the fields of the table related to the provided parameter if the user has access to the related database's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible. A table consists of fields and each field can have a different type. Each type can have different properties. A field is comparable with a regular table's column.
    //
    //Future<List<FieldField>> listDatabaseTableFields(int tableId) async
    test('test listDatabaseTableFields', () async {
      // TODO
    });

    // Calculates and returns the type of the specified formula value. Does not change the state of the field in any way.
    //
    //Future<TypeFormulaResult> typeFormulaField(int tableId, TypeFormulaRequest typeFormulaRequest) async
    test('test typeFormulaField', () async {
      // TODO
    });

    // Updates the existing field if the authorized user has access to the related database's workspace. The type can also be changed and depending on that type, different additional properties can optionally be set. If you change the field type it could happen that the data conversion fails, in that case the `ERROR_CANNOT_CHANGE_FIELD_TYPE` is returned, but this rarely happens. If a data value cannot be converted it is set to `null` so data might go lost.If updated the field causes other fields to change then the specificinstances of those fields will be included in the related fields response key.
    //
    //Future<FieldFieldSerializerWithRelatedFields> updateDatabaseTableField(int fieldId, { String clientSessionId, String clientUndoRedoActionGroupId, PatchedFieldUpdateField patchedFieldUpdateField }) async
    test('test updateDatabaseTableField', () async {
      // TODO
    });

  });
}
