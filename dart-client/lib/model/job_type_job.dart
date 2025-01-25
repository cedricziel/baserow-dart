//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class JobTypeJob {
  /// Returns a new [JobTypeJob] instance.
  JobTypeJob({
    required this.id,
    required this.type,
    required this.progressPercentage,
    required this.state,
    this.humanReadableError,
    required this.originalApplication,
    required this.duplicatedApplication,
    required this.workspace,
    required this.template,
    required this.installedApplications,
    required this.snapshot,
    required this.exportedFileName,
    required this.url,
    required this.createdOn,
    required this.workspaceId,
    required this.resource,
    required this.database,
    required this.airtableShareId,
    required this.databaseId,
    this.name,
    this.tableId,
    this.firstRowHeader = false,
    required this.report,
    required this.originalTable,
    required this.duplicatedTable,
    required this.originalField,
    required this.duplicatedField,
    required this.dataSync,
    required this.originalPage,
    required this.duplicatedPage,
    this.csvColumnSeparator = CsvColumnSeparatorEnum.comma,
    this.csvFirstRowHeader = true,
    this.exportCharset = ExportCharsetEnum.utf8,
    this.filterUserId,
    this.filterWorkspaceId,
    this.filterActionType,
    this.filterFromTimestamp,
    this.filterToTimestamp,
    this.excludeColumns,
  });

  int id;

  /// The type of the job.
  String type;

  /// A percentage indicating how far along the job is. 100 means that it's finished.
  int progressPercentage;

  /// Indicates the state of the import job.
  String state;

  /// A human readable error message indicating what went wrong.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? humanReadableError;

  ApplicationApplication originalApplication;

  ApplicationApplication duplicatedApplication;

  Workspace workspace;

  Template template;

  Object? installedApplications;

  Snapshot snapshot;

  /// The name of the file that was created by the export job.
  String exportedFileName;

  /// The URL to download the exported file.
  String url;

  /// The date and time when the export job was created.
  DateTime createdOn;

  /// The workspace ID where the Airtable base must be imported into.
  int workspaceId;

  ImportResource resource;

  ApplicationApplication database;

  /// Public ID of the shared Airtable base that must be imported.
  String airtableShareId;

  /// Database id where the table will be created.
  int databaseId;

  /// The name of the new table.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Table id where the data will be imported.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tableId;

  bool firstRowHeader;

  /// Import error report.
  Report report;

  Table originalTable;

  Table duplicatedTable;

  Field originalField;

  FieldSerializerWithRelatedFields duplicatedField;

  DataSync dataSync;

  Page originalPage;

  Page duplicatedPage;

  /// The value used to separate columns in the resulting csv file.  * `,` - , * `;` - ; * `|` - | * `tab` -   * `record_separator` -  * `unit_separator` - 
  CsvColumnSeparatorEnum csvColumnSeparator;

  /// Whether or not to generate a header row at the top of the csv file.
  bool csvFirstRowHeader;

  /// The character set to use when creating the export file.  * `utf-8` - utf-8 * `iso-8859-6` - iso-8859-6 * `windows-1256` - windows-1256 * `iso-8859-4` - iso-8859-4 * `windows-1257` - windows-1257 * `iso-8859-14` - iso-8859-14 * `iso-8859-2` - iso-8859-2 * `windows-1250` - windows-1250 * `gbk` - gbk * `gb18030` - gb18030 * `big5` - big5 * `koi8-r` - koi8-r * `koi8-u` - koi8-u * `iso-8859-5` - iso-8859-5 * `windows-1251` - windows-1251 * `x-mac-cyrillic` - mac-cyrillic * `iso-8859-7` - iso-8859-7 * `windows-1253` - windows-1253 * `iso-8859-8` - iso-8859-8 * `windows-1255` - windows-1255 * `euc-jp` - euc-jp * `iso-2022-jp` - iso-2022-jp * `shift-jis` - shift-jis * `euc-kr` - euc-kr * `macintosh` - macintosh * `iso-8859-10` - iso-8859-10 * `iso-8859-16` - iso-8859-16 * `windows-874` - cp874 * `windows-1254` - windows-1254 * `windows-1258` - windows-1258 * `iso-8859-1` - iso-8859-1 * `windows-1252` - windows-1252 * `iso-8859-3` - iso-8859-3
  ExportCharsetEnum exportCharset;

  /// Optional: The user to filter the audit log by.
  ///
  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? filterUserId;

  /// Optional: The workspace to filter the audit log by.
  ///
  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? filterWorkspaceId;

  /// Optional: The action type to filter the audit log by.  * `create_group` - create_group * `delete_group` - delete_group * `update_group` - update_group * `order_groups` - order_groups * `create_application` - create_application * `update_application` - update_application * `delete_application` - delete_application * `order_applications` - order_applications * `duplicate_application` - duplicate_application * `install_template` - install_template * `create_group_invitation` - create_group_invitation * `delete_group_invitation` - delete_group_invitation * `accept_group_invitation` - accept_group_invitation * `reject_group_invitation` - reject_group_invitation * `update_group_invitation_permissions` - update_group_invitation_permissions * `leave_group` - leave_group * `create_initial_workspace` - create_initial_workspace * `export_applications` - export_applications * `import_applications` - import_applications * `create_snapshot` - create_snapshot * `delete_snapshot` - delete_snapshot * `restore_snapshot` - restore_snapshot * `empty_trash` - empty_trash * `restore_from_trash` - restore_from_trash * `create_user` - create_user * `update_user` - update_user * `schedule_user_deletion` - schedule_user_deletion * `cancel_user_deletion` - cancel_user_deletion * `sign_in_user` - sign_in_user * `change_user_password` - change_user_password * `send_reset_user_password` - send_reset_user_password * `reset_user_password` - reset_user_password * `send_verify_email` - send_verify_email * `verify_email` - verify_email * `create_db_token` - create_db_token * `update_db_token_name` - update_db_token_name * `update_db_token_permissions` - update_db_token_permissions * `rotate_db_token_key` - rotate_db_token_key * `delete_db_token_key` - delete_db_token_key * `create_webhook` - create_webhook * `delete_webhook` - delete_webhook * `update_webhook` - update_webhook * `export_table` - export_table * `import_database_from_airtable` - import_database_from_airtable * `create_table` - create_table * `delete_table` - delete_table * `order_tables` - order_tables * `update_table` - update_table * `duplicate_table` - duplicate_table * `create_row` - create_row * `create_rows` - create_rows * `import_rows` - import_rows * `delete_row` - delete_row * `delete_rows` - delete_rows * `move_row` - move_row * `update_row` - update_row * `update_rows` - update_rows * `create_view` - create_view * `duplicate_view` - duplicate_view * `delete_view` - delete_view * `order_views` - order_views * `update_view` - update_view * `create_view_filter` - create_view_filter * `update_view_filter` - update_view_filter * `delete_view_filter` - delete_view_filter * `create_view_sort` - create_view_sort * `update_view_sort` - update_view_sort * `delete_view_sort` - delete_view_sort * `create_view_group` - create_view_group * `update_view_group` - update_view_group * `delete_view_group` - delete_view_group * `submit_form` - submit_form * `rotate_view_slug` - rotate_view_slug * `update_view_field_options` - update_view_field_options * `create_decoration` - create_decoration * `update_decoration` - update_decoration * `delete_decoration` - delete_decoration * `create_view_filter_group` - create_view_filter_group * `update_view_filter_group` - update_view_filter_group * `delete_view_filter_group` - delete_view_filter_group * `create_data_sync_table` - create_data_sync_table * `update_data_sync_table` - update_data_sync_table * `sync_data_sync_table` - sync_data_sync_table * `create_field` - create_field * `delete_field` - delete_field * `update_field` - update_field * `duplicate_field` - duplicate_field * `change_primary_field` - change_primary_field * `generate_formula_with_ai` - generate_formula_with_ai * `create_row_comment` - create_row_comment * `delete_row_comment` - delete_row_comment * `update_row_comment` - update_row_comment * `rotate_calendar_ical_view_slug` - rotate_calendar_ical_view_slug * `create_team` - create_team * `update_team` - update_team * `delete_team` - delete_team * `create_team_subject` - create_team_subject * `delete_team_subject` - delete_team_subject * `batch_assign_role` - batch_assign_role
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FilterActionTypeEnum? filterActionType;

  /// Optional: The start date to filter the audit log by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? filterFromTimestamp;

  /// Optional: The end date to filter the audit log by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? filterToTimestamp;

  /// Optional: A comma separated list of column names to exclude from the export. Available options are `user_email, user_id, workspace_name, workspace_id, type, description, timestamp, ip_address`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? excludeColumns;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JobTypeJob &&
    other.id == id &&
    other.type == type &&
    other.progressPercentage == progressPercentage &&
    other.state == state &&
    other.humanReadableError == humanReadableError &&
    other.originalApplication == originalApplication &&
    other.duplicatedApplication == duplicatedApplication &&
    other.workspace == workspace &&
    other.template == template &&
    other.installedApplications == installedApplications &&
    other.snapshot == snapshot &&
    other.exportedFileName == exportedFileName &&
    other.url == url &&
    other.createdOn == createdOn &&
    other.workspaceId == workspaceId &&
    other.resource == resource &&
    other.database == database &&
    other.airtableShareId == airtableShareId &&
    other.databaseId == databaseId &&
    other.name == name &&
    other.tableId == tableId &&
    other.firstRowHeader == firstRowHeader &&
    other.report == report &&
    other.originalTable == originalTable &&
    other.duplicatedTable == duplicatedTable &&
    other.originalField == originalField &&
    other.duplicatedField == duplicatedField &&
    other.dataSync == dataSync &&
    other.originalPage == originalPage &&
    other.duplicatedPage == duplicatedPage &&
    other.csvColumnSeparator == csvColumnSeparator &&
    other.csvFirstRowHeader == csvFirstRowHeader &&
    other.exportCharset == exportCharset &&
    other.filterUserId == filterUserId &&
    other.filterWorkspaceId == filterWorkspaceId &&
    other.filterActionType == filterActionType &&
    other.filterFromTimestamp == filterFromTimestamp &&
    other.filterToTimestamp == filterToTimestamp &&
    other.excludeColumns == excludeColumns;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (progressPercentage.hashCode) +
    (state.hashCode) +
    (humanReadableError == null ? 0 : humanReadableError!.hashCode) +
    (originalApplication.hashCode) +
    (duplicatedApplication.hashCode) +
    (workspace.hashCode) +
    (template.hashCode) +
    (installedApplications == null ? 0 : installedApplications!.hashCode) +
    (snapshot.hashCode) +
    (exportedFileName.hashCode) +
    (url.hashCode) +
    (createdOn.hashCode) +
    (workspaceId.hashCode) +
    (resource.hashCode) +
    (database.hashCode) +
    (airtableShareId.hashCode) +
    (databaseId.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (tableId == null ? 0 : tableId!.hashCode) +
    (firstRowHeader.hashCode) +
    (report.hashCode) +
    (originalTable.hashCode) +
    (duplicatedTable.hashCode) +
    (originalField.hashCode) +
    (duplicatedField.hashCode) +
    (dataSync.hashCode) +
    (originalPage.hashCode) +
    (duplicatedPage.hashCode) +
    (csvColumnSeparator.hashCode) +
    (csvFirstRowHeader.hashCode) +
    (exportCharset.hashCode) +
    (filterUserId == null ? 0 : filterUserId!.hashCode) +
    (filterWorkspaceId == null ? 0 : filterWorkspaceId!.hashCode) +
    (filterActionType == null ? 0 : filterActionType!.hashCode) +
    (filterFromTimestamp == null ? 0 : filterFromTimestamp!.hashCode) +
    (filterToTimestamp == null ? 0 : filterToTimestamp!.hashCode) +
    (excludeColumns == null ? 0 : excludeColumns!.hashCode);

  @override
  String toString() => 'JobTypeJob[id=$id, type=$type, progressPercentage=$progressPercentage, state=$state, humanReadableError=$humanReadableError, originalApplication=$originalApplication, duplicatedApplication=$duplicatedApplication, workspace=$workspace, template=$template, installedApplications=$installedApplications, snapshot=$snapshot, exportedFileName=$exportedFileName, url=$url, createdOn=$createdOn, workspaceId=$workspaceId, resource=$resource, database=$database, airtableShareId=$airtableShareId, databaseId=$databaseId, name=$name, tableId=$tableId, firstRowHeader=$firstRowHeader, report=$report, originalTable=$originalTable, duplicatedTable=$duplicatedTable, originalField=$originalField, duplicatedField=$duplicatedField, dataSync=$dataSync, originalPage=$originalPage, duplicatedPage=$duplicatedPage, csvColumnSeparator=$csvColumnSeparator, csvFirstRowHeader=$csvFirstRowHeader, exportCharset=$exportCharset, filterUserId=$filterUserId, filterWorkspaceId=$filterWorkspaceId, filterActionType=$filterActionType, filterFromTimestamp=$filterFromTimestamp, filterToTimestamp=$filterToTimestamp, excludeColumns=$excludeColumns]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'type'] = this.type;
      json[r'progress_percentage'] = this.progressPercentage;
      json[r'state'] = this.state;
    if (this.humanReadableError != null) {
      json[r'human_readable_error'] = this.humanReadableError;
    } else {
      json[r'human_readable_error'] = null;
    }
      json[r'original_application'] = this.originalApplication;
      json[r'duplicated_application'] = this.duplicatedApplication;
      json[r'workspace'] = this.workspace;
      json[r'template'] = this.template;
    if (this.installedApplications != null) {
      json[r'installed_applications'] = this.installedApplications;
    } else {
      json[r'installed_applications'] = null;
    }
      json[r'snapshot'] = this.snapshot;
      json[r'exported_file_name'] = this.exportedFileName;
      json[r'url'] = this.url;
      json[r'created_on'] = this.createdOn.toUtc().toIso8601String();
      json[r'workspace_id'] = this.workspaceId;
      json[r'resource'] = this.resource;
      json[r'database'] = this.database;
      json[r'airtable_share_id'] = this.airtableShareId;
      json[r'database_id'] = this.databaseId;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.tableId != null) {
      json[r'table_id'] = this.tableId;
    } else {
      json[r'table_id'] = null;
    }
      json[r'first_row_header'] = this.firstRowHeader;
      json[r'report'] = this.report;
      json[r'original_table'] = this.originalTable;
      json[r'duplicated_table'] = this.duplicatedTable;
      json[r'original_field'] = this.originalField;
      json[r'duplicated_field'] = this.duplicatedField;
      json[r'data_sync'] = this.dataSync;
      json[r'original_page'] = this.originalPage;
      json[r'duplicated_page'] = this.duplicatedPage;
      json[r'csv_column_separator'] = this.csvColumnSeparator;
      json[r'csv_first_row_header'] = this.csvFirstRowHeader;
      json[r'export_charset'] = this.exportCharset;
    if (this.filterUserId != null) {
      json[r'filter_user_id'] = this.filterUserId;
    } else {
      json[r'filter_user_id'] = null;
    }
    if (this.filterWorkspaceId != null) {
      json[r'filter_workspace_id'] = this.filterWorkspaceId;
    } else {
      json[r'filter_workspace_id'] = null;
    }
    if (this.filterActionType != null) {
      json[r'filter_action_type'] = this.filterActionType;
    } else {
      json[r'filter_action_type'] = null;
    }
    if (this.filterFromTimestamp != null) {
      json[r'filter_from_timestamp'] = this.filterFromTimestamp!.toUtc().toIso8601String();
    } else {
      json[r'filter_from_timestamp'] = null;
    }
    if (this.filterToTimestamp != null) {
      json[r'filter_to_timestamp'] = this.filterToTimestamp!.toUtc().toIso8601String();
    } else {
      json[r'filter_to_timestamp'] = null;
    }
    if (this.excludeColumns != null) {
      json[r'exclude_columns'] = this.excludeColumns;
    } else {
      json[r'exclude_columns'] = null;
    }
    return json;
  }

  /// Returns a new [JobTypeJob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobTypeJob? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobTypeJob[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobTypeJob[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobTypeJob(
        id: mapValueOfType<int>(json, r'id')!,
        type: mapValueOfType<String>(json, r'type')!,
        progressPercentage: mapValueOfType<int>(json, r'progress_percentage')!,
        state: mapValueOfType<String>(json, r'state')!,
        humanReadableError: mapValueOfType<String>(json, r'human_readable_error'),
        originalApplication: ApplicationApplication.fromJson(json[r'original_application'])!,
        duplicatedApplication: ApplicationApplication.fromJson(json[r'duplicated_application'])!,
        workspace: Workspace.fromJson(json[r'workspace'])!,
        template: Template.fromJson(json[r'template'])!,
        installedApplications: mapValueOfType<Object>(json, r'installed_applications'),
        snapshot: Snapshot.fromJson(json[r'snapshot'])!,
        exportedFileName: mapValueOfType<String>(json, r'exported_file_name')!,
        url: mapValueOfType<String>(json, r'url')!,
        createdOn: mapDateTime(json, r'created_on', r'')!,
        workspaceId: mapValueOfType<int>(json, r'workspace_id')!,
        resource: ImportResource.fromJson(json[r'resource'])!,
        database: ApplicationApplication.fromJson(json[r'database'])!,
        airtableShareId: mapValueOfType<String>(json, r'airtable_share_id')!,
        databaseId: mapValueOfType<int>(json, r'database_id')!,
        name: mapValueOfType<String>(json, r'name'),
        tableId: mapValueOfType<int>(json, r'table_id'),
        firstRowHeader: mapValueOfType<bool>(json, r'first_row_header') ?? false,
        report: Report.fromJson(json[r'report'])!,
        originalTable: Table.fromJson(json[r'original_table'])!,
        duplicatedTable: Table.fromJson(json[r'duplicated_table'])!,
        originalField: Field.fromJson(json[r'original_field'])!,
        duplicatedField: FieldSerializerWithRelatedFields.fromJson(json[r'duplicated_field'])!,
        dataSync: DataSync.fromJson(json[r'data_sync'])!,
        originalPage: Page.fromJson(json[r'original_page'])!,
        duplicatedPage: Page.fromJson(json[r'duplicated_page'])!,
        csvColumnSeparator: CsvColumnSeparatorEnum.fromJson(json[r'csv_column_separator']) ?? CsvColumnSeparatorEnum.comma,
        csvFirstRowHeader: mapValueOfType<bool>(json, r'csv_first_row_header') ?? true,
        exportCharset: ExportCharsetEnum.fromJson(json[r'export_charset']) ?? ExportCharsetEnum.utf8,
        filterUserId: mapValueOfType<int>(json, r'filter_user_id'),
        filterWorkspaceId: mapValueOfType<int>(json, r'filter_workspace_id'),
        filterActionType: FilterActionTypeEnum.fromJson(json[r'filter_action_type']),
        filterFromTimestamp: mapDateTime(json, r'filter_from_timestamp', r''),
        filterToTimestamp: mapDateTime(json, r'filter_to_timestamp', r''),
        excludeColumns: mapValueOfType<String>(json, r'exclude_columns'),
      );
    }
    return null;
  }

  static List<JobTypeJob> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobTypeJob>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobTypeJob.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobTypeJob> mapFromJson(dynamic json) {
    final map = <String, JobTypeJob>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobTypeJob.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobTypeJob-objects as value to a dart map
  static Map<String, List<JobTypeJob>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobTypeJob>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobTypeJob.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'type',
    'progress_percentage',
    'state',
    'original_application',
    'duplicated_application',
    'workspace',
    'template',
    'installed_applications',
    'snapshot',
    'exported_file_name',
    'url',
    'created_on',
    'workspace_id',
    'resource',
    'database',
    'airtable_share_id',
    'database_id',
    'report',
    'original_table',
    'duplicated_table',
    'original_field',
    'duplicated_field',
    'data_sync',
    'original_page',
    'duplicated_page',
  };
}

