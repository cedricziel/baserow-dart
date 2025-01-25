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

// tests for ExportApplicationsJobCreateJob
void main() {
  // final instance = ExportApplicationsJobCreateJob();

  group('test ExportApplicationsJobCreateJob', () {
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // String exportedFileName
    test('to test the property `exportedFileName`', () async {
      // TODO
    });

    // The type of the job.  * `duplicate_application` - duplicate_application * `install_template` - install_template * `create_snapshot` - create_snapshot * `restore_snapshot` - restore_snapshot * `export_applications` - export_applications * `import_applications` - import_applications * `airtable` - airtable * `file_import` - file_import * `duplicate_table` - duplicate_table * `duplicate_field` - duplicate_field * `sync_data_sync_table` - sync_data_sync_table * `duplicate_page` - duplicate_page * `publish_domain` - publish_domain * `audit_log_export` - audit_log_export
    // Type99fEnum type
    test('to test the property `type`', () async {
      // TODO
    });

    // The application IDs to export. If not provided, all the applications for the workspace will be exported.
    // List<int> applicationIds (default value: const [])
    test('to test the property `applicationIds`', () async {
      // TODO
    });

    // If True, only the structure of the applications will be exported. If False, the data will be included as well.
    // bool onlyStructure (default value: false)
    test('to test the property `onlyStructure`', () async {
      // TODO
    });


  });

}
