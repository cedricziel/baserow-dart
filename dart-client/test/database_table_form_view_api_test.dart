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


/// tests for DatabaseTableFormViewApi
void main() {
  // final instance = DatabaseTableFormViewApi();

  group('tests for DatabaseTableFormViewApi', () {
    // Returns the metadata related to the form view if the form is publicly shared or if the user has access to the related workspace. This data can be used to construct a form with the right fields.
    //
    //Future<PublicFormView> getMetaDatabaseTableFormView(String slug) async
    test('test getMetaDatabaseTableFormView', () async {
      // TODO
    });

    // Submits the form if the form is publicly shared or if the user has access to the related workspace. The provided data will be validated based on the fields that are in the form and the rules per field. If valid, a new row will be created in the table.
    //
    //Future<FormViewSubmitted> submitDatabaseTableFormView(String slug, { ExampleRowRequest exampleRowRequest }) async
    test('test submitDatabaseTableFormView', () async {
      // TODO
    });

    // Uploads a file anonymously to Baserow by uploading the file contents directly. A `file` multipart is expected containing the file contents.
    //
    //Future<UserFile> uploadFileFormView(String slug) async
    test('test uploadFileFormView', () async {
      // TODO
    });

  });
}
