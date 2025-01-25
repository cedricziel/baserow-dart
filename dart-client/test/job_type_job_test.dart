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

// tests for JobTypeJob
void main() {
  // final instance = JobTypeJob();

  group('test JobTypeJob', () {
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // The type of the job.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // A percentage indicating how far along the job is. 100 means that it's finished.
    // int progressPercentage
    test('to test the property `progressPercentage`', () async {
      // TODO
    });

    // Indicates the state of the import job.
    // String state
    test('to test the property `state`', () async {
      // TODO
    });

    // A human readable error message indicating what went wrong.
    // String humanReadableError
    test('to test the property `humanReadableError`', () async {
      // TODO
    });

    // ApplicationApplication originalApplication
    test('to test the property `originalApplication`', () async {
      // TODO
    });

    // ApplicationApplication duplicatedApplication
    test('to test the property `duplicatedApplication`', () async {
      // TODO
    });

    // Workspace workspace
    test('to test the property `workspace`', () async {
      // TODO
    });

    // Template template
    test('to test the property `template`', () async {
      // TODO
    });

    // Object installedApplications
    test('to test the property `installedApplications`', () async {
      // TODO
    });

    // Snapshot snapshot
    test('to test the property `snapshot`', () async {
      // TODO
    });

    // The name of the file that was created by the export job.
    // String exportedFileName
    test('to test the property `exportedFileName`', () async {
      // TODO
    });

    // The URL to download the exported file.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // The date and time when the export job was created.
    // DateTime createdOn
    test('to test the property `createdOn`', () async {
      // TODO
    });

    // The workspace ID where the Airtable base must be imported into.
    // int workspaceId
    test('to test the property `workspaceId`', () async {
      // TODO
    });

    // ImportResource resource
    test('to test the property `resource`', () async {
      // TODO
    });

    // ApplicationApplication database
    test('to test the property `database`', () async {
      // TODO
    });

    // Public ID of the shared Airtable base that must be imported.
    // String airtableShareId
    test('to test the property `airtableShareId`', () async {
      // TODO
    });

    // Database id where the table will be created.
    // int databaseId
    test('to test the property `databaseId`', () async {
      // TODO
    });

    // The name of the new table.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Table id where the data will be imported.
    // int tableId
    test('to test the property `tableId`', () async {
      // TODO
    });

    // bool firstRowHeader (default value: false)
    test('to test the property `firstRowHeader`', () async {
      // TODO
    });

    // Import error report.
    // Report report
    test('to test the property `report`', () async {
      // TODO
    });

    // Table originalTable
    test('to test the property `originalTable`', () async {
      // TODO
    });

    // Table duplicatedTable
    test('to test the property `duplicatedTable`', () async {
      // TODO
    });

    // Field originalField
    test('to test the property `originalField`', () async {
      // TODO
    });

    // FieldSerializerWithRelatedFields duplicatedField
    test('to test the property `duplicatedField`', () async {
      // TODO
    });

    // DataSync dataSync
    test('to test the property `dataSync`', () async {
      // TODO
    });

    // Page originalPage
    test('to test the property `originalPage`', () async {
      // TODO
    });

    // Page duplicatedPage
    test('to test the property `duplicatedPage`', () async {
      // TODO
    });

    // The value used to separate columns in the resulting csv file.  * `,` - , * `;` - ; * `|` - | * `tab` -   * `record_separator` -  * `unit_separator` - 
    // CsvColumnSeparatorEnum csvColumnSeparator (default value: CsvColumnSeparatorEnum.comma)
    test('to test the property `csvColumnSeparator`', () async {
      // TODO
    });

    // Whether or not to generate a header row at the top of the csv file.
    // bool csvFirstRowHeader (default value: true)
    test('to test the property `csvFirstRowHeader`', () async {
      // TODO
    });

    // The character set to use when creating the export file.  * `utf-8` - utf-8 * `iso-8859-6` - iso-8859-6 * `windows-1256` - windows-1256 * `iso-8859-4` - iso-8859-4 * `windows-1257` - windows-1257 * `iso-8859-14` - iso-8859-14 * `iso-8859-2` - iso-8859-2 * `windows-1250` - windows-1250 * `gbk` - gbk * `gb18030` - gb18030 * `big5` - big5 * `koi8-r` - koi8-r * `koi8-u` - koi8-u * `iso-8859-5` - iso-8859-5 * `windows-1251` - windows-1251 * `x-mac-cyrillic` - mac-cyrillic * `iso-8859-7` - iso-8859-7 * `windows-1253` - windows-1253 * `iso-8859-8` - iso-8859-8 * `windows-1255` - windows-1255 * `euc-jp` - euc-jp * `iso-2022-jp` - iso-2022-jp * `shift-jis` - shift-jis * `euc-kr` - euc-kr * `macintosh` - macintosh * `iso-8859-10` - iso-8859-10 * `iso-8859-16` - iso-8859-16 * `windows-874` - cp874 * `windows-1254` - windows-1254 * `windows-1258` - windows-1258 * `iso-8859-1` - iso-8859-1 * `windows-1252` - windows-1252 * `iso-8859-3` - iso-8859-3
    // ExportCharsetEnum exportCharset (default value: ExportCharsetEnum.utf8)
    test('to test the property `exportCharset`', () async {
      // TODO
    });

    // Optional: The user to filter the audit log by.
    // int filterUserId
    test('to test the property `filterUserId`', () async {
      // TODO
    });

    // Optional: The workspace to filter the audit log by.
    // int filterWorkspaceId
    test('to test the property `filterWorkspaceId`', () async {
      // TODO
    });

    // Optional: The action type to filter the audit log by.  * `create_group` - create_group * `delete_group` - delete_group * `update_group` - update_group * `order_groups` - order_groups * `create_application` - create_application * `update_application` - update_application * `delete_application` - delete_application * `order_applications` - order_applications * `duplicate_application` - duplicate_application * `install_template` - install_template * `create_group_invitation` - create_group_invitation * `delete_group_invitation` - delete_group_invitation * `accept_group_invitation` - accept_group_invitation * `reject_group_invitation` - reject_group_invitation * `update_group_invitation_permissions` - update_group_invitation_permissions * `leave_group` - leave_group * `create_initial_workspace` - create_initial_workspace * `export_applications` - export_applications * `import_applications` - import_applications * `create_snapshot` - create_snapshot * `delete_snapshot` - delete_snapshot * `restore_snapshot` - restore_snapshot * `empty_trash` - empty_trash * `restore_from_trash` - restore_from_trash * `create_user` - create_user * `update_user` - update_user * `schedule_user_deletion` - schedule_user_deletion * `cancel_user_deletion` - cancel_user_deletion * `sign_in_user` - sign_in_user * `change_user_password` - change_user_password * `send_reset_user_password` - send_reset_user_password * `reset_user_password` - reset_user_password * `send_verify_email` - send_verify_email * `verify_email` - verify_email * `create_db_token` - create_db_token * `update_db_token_name` - update_db_token_name * `update_db_token_permissions` - update_db_token_permissions * `rotate_db_token_key` - rotate_db_token_key * `delete_db_token_key` - delete_db_token_key * `create_webhook` - create_webhook * `delete_webhook` - delete_webhook * `update_webhook` - update_webhook * `export_table` - export_table * `import_database_from_airtable` - import_database_from_airtable * `create_table` - create_table * `delete_table` - delete_table * `order_tables` - order_tables * `update_table` - update_table * `duplicate_table` - duplicate_table * `create_row` - create_row * `create_rows` - create_rows * `import_rows` - import_rows * `delete_row` - delete_row * `delete_rows` - delete_rows * `move_row` - move_row * `update_row` - update_row * `update_rows` - update_rows * `create_view` - create_view * `duplicate_view` - duplicate_view * `delete_view` - delete_view * `order_views` - order_views * `update_view` - update_view * `create_view_filter` - create_view_filter * `update_view_filter` - update_view_filter * `delete_view_filter` - delete_view_filter * `create_view_sort` - create_view_sort * `update_view_sort` - update_view_sort * `delete_view_sort` - delete_view_sort * `create_view_group` - create_view_group * `update_view_group` - update_view_group * `delete_view_group` - delete_view_group * `submit_form` - submit_form * `rotate_view_slug` - rotate_view_slug * `update_view_field_options` - update_view_field_options * `create_decoration` - create_decoration * `update_decoration` - update_decoration * `delete_decoration` - delete_decoration * `create_view_filter_group` - create_view_filter_group * `update_view_filter_group` - update_view_filter_group * `delete_view_filter_group` - delete_view_filter_group * `create_data_sync_table` - create_data_sync_table * `update_data_sync_table` - update_data_sync_table * `sync_data_sync_table` - sync_data_sync_table * `create_field` - create_field * `delete_field` - delete_field * `update_field` - update_field * `duplicate_field` - duplicate_field * `change_primary_field` - change_primary_field * `generate_formula_with_ai` - generate_formula_with_ai * `create_row_comment` - create_row_comment * `delete_row_comment` - delete_row_comment * `update_row_comment` - update_row_comment * `rotate_calendar_ical_view_slug` - rotate_calendar_ical_view_slug * `create_team` - create_team * `update_team` - update_team * `delete_team` - delete_team * `create_team_subject` - create_team_subject * `delete_team_subject` - delete_team_subject * `batch_assign_role` - batch_assign_role
    // FilterActionTypeEnum filterActionType
    test('to test the property `filterActionType`', () async {
      // TODO
    });

    // Optional: The start date to filter the audit log by.
    // DateTime filterFromTimestamp
    test('to test the property `filterFromTimestamp`', () async {
      // TODO
    });

    // Optional: The end date to filter the audit log by.
    // DateTime filterToTimestamp
    test('to test the property `filterToTimestamp`', () async {
      // TODO
    });

    // Optional: A comma separated list of column names to exclude from the export. Available options are `user_email, user_id, workspace_name, workspace_id, type, description, timestamp, ip_address`.
    // String excludeColumns
    test('to test the property `excludeColumns`', () async {
      // TODO
    });


  });

}
