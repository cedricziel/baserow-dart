//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class JobTypeCreateJob {
  /// Returns a new [JobTypeCreateJob] instance.
  JobTypeCreateJob({
    required this.type,
    required this.applicationId,
    this.workspaceId,
    required this.templateId,
    required this.snapshot,
    required this.url,
    required this.exportedFileName,
    this.applicationIds = const [],
    this.onlyStructure = false,
    required this.resourceId,
    required this.airtableShareUrl,
    required this.tableId,
    required this.fieldId,
    this.duplicateData = false,
    required this.dataSyncId,
    required this.pageId,
    this.exportCharset = ExportCharsetEnum.utf8,
    this.csvColumnSeparator = CsvColumnSeparatorEnum.comma,
    this.csvFirstRowHeader = true,
    this.filterUserId,
    this.filterWorkspaceId,
    this.filterActionType,
    this.filterFromTimestamp,
    this.filterToTimestamp,
    this.excludeColumns,
  });

  /// The type of the job.  * `duplicate_application` - duplicate_application * `install_template` - install_template * `create_snapshot` - create_snapshot * `restore_snapshot` - restore_snapshot * `export_applications` - export_applications * `import_applications` - import_applications * `airtable` - airtable * `file_import` - file_import * `duplicate_table` - duplicate_table * `duplicate_field` - duplicate_field * `sync_data_sync_table` - sync_data_sync_table * `duplicate_page` - duplicate_page * `publish_domain` - publish_domain * `audit_log_export` - audit_log_export
  Type99fEnum type;

  /// The application ID to duplicate.
  int applicationId;

  /// The workspace ID where the Airtable base must be imported into.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? workspaceId;

  /// The template ID that will be installed.
  int templateId;

  Snapshot snapshot;

  String url;

  String exportedFileName;

  /// The application IDs to export. If not provided, all the applications for the workspace will be exported.
  List<int>? applicationIds;

  /// If True, only the structure of the applications will be exported. If False, the data will be included as well.
  bool onlyStructure;

  /// The ID of the import resource that contains the applications.
  ///
  /// Minimum value: 1
  int resourceId;

  /// The publicly shared URL of the Airtable base (e.g. https://airtable.com/shrxxxxxxxxxxxxxx)
  String airtableShareUrl;

  /// The ID of the table to duplicate.
  int tableId;

  /// The ID of the field to duplicate.
  int fieldId;

  /// Whether to duplicate the data of the field.
  bool duplicateData;

  /// The ID of data sync to sync.
  int dataSyncId;

  /// The ID of the page to duplicate.
  int pageId;

  /// The character set to use when creating the export file.  * `utf-8` - utf-8 * `iso-8859-6` - iso-8859-6 * `windows-1256` - windows-1256 * `iso-8859-4` - iso-8859-4 * `windows-1257` - windows-1257 * `iso-8859-14` - iso-8859-14 * `iso-8859-2` - iso-8859-2 * `windows-1250` - windows-1250 * `gbk` - gbk * `gb18030` - gb18030 * `big5` - big5 * `koi8-r` - koi8-r * `koi8-u` - koi8-u * `iso-8859-5` - iso-8859-5 * `windows-1251` - windows-1251 * `x-mac-cyrillic` - mac-cyrillic * `iso-8859-7` - iso-8859-7 * `windows-1253` - windows-1253 * `iso-8859-8` - iso-8859-8 * `windows-1255` - windows-1255 * `euc-jp` - euc-jp * `iso-2022-jp` - iso-2022-jp * `shift-jis` - shift-jis * `euc-kr` - euc-kr * `macintosh` - macintosh * `iso-8859-10` - iso-8859-10 * `iso-8859-16` - iso-8859-16 * `windows-874` - cp874 * `windows-1254` - windows-1254 * `windows-1258` - windows-1258 * `iso-8859-1` - iso-8859-1 * `windows-1252` - windows-1252 * `iso-8859-3` - iso-8859-3
  ExportCharsetEnum exportCharset;

  /// The value used to separate columns in the resulting csv file.  * `,` - , * `;` - ; * `|` - | * `tab` -   * `record_separator` -  * `unit_separator` - 
  CsvColumnSeparatorEnum csvColumnSeparator;

  /// Whether or not to generate a header row at the top of the csv file.
  bool csvFirstRowHeader;

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
  bool operator ==(Object other) => identical(this, other) || other is JobTypeCreateJob &&
    other.type == type &&
    other.applicationId == applicationId &&
    other.workspaceId == workspaceId &&
    other.templateId == templateId &&
    other.snapshot == snapshot &&
    other.url == url &&
    other.exportedFileName == exportedFileName &&
    _deepEquality.equals(other.applicationIds, applicationIds) &&
    other.onlyStructure == onlyStructure &&
    other.resourceId == resourceId &&
    other.airtableShareUrl == airtableShareUrl &&
    other.tableId == tableId &&
    other.fieldId == fieldId &&
    other.duplicateData == duplicateData &&
    other.dataSyncId == dataSyncId &&
    other.pageId == pageId &&
    other.exportCharset == exportCharset &&
    other.csvColumnSeparator == csvColumnSeparator &&
    other.csvFirstRowHeader == csvFirstRowHeader &&
    other.filterUserId == filterUserId &&
    other.filterWorkspaceId == filterWorkspaceId &&
    other.filterActionType == filterActionType &&
    other.filterFromTimestamp == filterFromTimestamp &&
    other.filterToTimestamp == filterToTimestamp &&
    other.excludeColumns == excludeColumns;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (applicationId.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (templateId.hashCode) +
    (snapshot.hashCode) +
    (url.hashCode) +
    (exportedFileName.hashCode) +
    (applicationIds == null ? 0 : applicationIds!.hashCode) +
    (onlyStructure.hashCode) +
    (resourceId.hashCode) +
    (airtableShareUrl.hashCode) +
    (tableId.hashCode) +
    (fieldId.hashCode) +
    (duplicateData.hashCode) +
    (dataSyncId.hashCode) +
    (pageId.hashCode) +
    (exportCharset.hashCode) +
    (csvColumnSeparator.hashCode) +
    (csvFirstRowHeader.hashCode) +
    (filterUserId == null ? 0 : filterUserId!.hashCode) +
    (filterWorkspaceId == null ? 0 : filterWorkspaceId!.hashCode) +
    (filterActionType == null ? 0 : filterActionType!.hashCode) +
    (filterFromTimestamp == null ? 0 : filterFromTimestamp!.hashCode) +
    (filterToTimestamp == null ? 0 : filterToTimestamp!.hashCode) +
    (excludeColumns == null ? 0 : excludeColumns!.hashCode);

  @override
  String toString() => 'JobTypeCreateJob[type=$type, applicationId=$applicationId, workspaceId=$workspaceId, templateId=$templateId, snapshot=$snapshot, url=$url, exportedFileName=$exportedFileName, applicationIds=$applicationIds, onlyStructure=$onlyStructure, resourceId=$resourceId, airtableShareUrl=$airtableShareUrl, tableId=$tableId, fieldId=$fieldId, duplicateData=$duplicateData, dataSyncId=$dataSyncId, pageId=$pageId, exportCharset=$exportCharset, csvColumnSeparator=$csvColumnSeparator, csvFirstRowHeader=$csvFirstRowHeader, filterUserId=$filterUserId, filterWorkspaceId=$filterWorkspaceId, filterActionType=$filterActionType, filterFromTimestamp=$filterFromTimestamp, filterToTimestamp=$filterToTimestamp, excludeColumns=$excludeColumns]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'application_id'] = this.applicationId;
    if (this.workspaceId != null) {
      json[r'workspace_id'] = this.workspaceId;
    } else {
      json[r'workspace_id'] = null;
    }
      json[r'template_id'] = this.templateId;
      json[r'snapshot'] = this.snapshot;
      json[r'url'] = this.url;
      json[r'exported_file_name'] = this.exportedFileName;
    if (this.applicationIds != null) {
      json[r'application_ids'] = this.applicationIds;
    } else {
      json[r'application_ids'] = null;
    }
      json[r'only_structure'] = this.onlyStructure;
      json[r'resource_id'] = this.resourceId;
      json[r'airtable_share_url'] = this.airtableShareUrl;
      json[r'table_id'] = this.tableId;
      json[r'field_id'] = this.fieldId;
      json[r'duplicate_data'] = this.duplicateData;
      json[r'data_sync_id'] = this.dataSyncId;
      json[r'page_id'] = this.pageId;
      json[r'export_charset'] = this.exportCharset;
      json[r'csv_column_separator'] = this.csvColumnSeparator;
      json[r'csv_first_row_header'] = this.csvFirstRowHeader;
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

  /// Returns a new [JobTypeCreateJob] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JobTypeCreateJob? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JobTypeCreateJob[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JobTypeCreateJob[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JobTypeCreateJob(
        type: Type99fEnum.fromJson(json[r'type'])!,
        applicationId: mapValueOfType<int>(json, r'application_id')!,
        workspaceId: mapValueOfType<int>(json, r'workspace_id'),
        templateId: mapValueOfType<int>(json, r'template_id')!,
        snapshot: Snapshot.fromJson(json[r'snapshot'])!,
        url: mapValueOfType<String>(json, r'url')!,
        exportedFileName: mapValueOfType<String>(json, r'exported_file_name')!,
        applicationIds: json[r'application_ids'] is Iterable
            ? (json[r'application_ids'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        onlyStructure: mapValueOfType<bool>(json, r'only_structure') ?? false,
        resourceId: mapValueOfType<int>(json, r'resource_id')!,
        airtableShareUrl: mapValueOfType<String>(json, r'airtable_share_url')!,
        tableId: mapValueOfType<int>(json, r'table_id')!,
        fieldId: mapValueOfType<int>(json, r'field_id')!,
        duplicateData: mapValueOfType<bool>(json, r'duplicate_data') ?? false,
        dataSyncId: mapValueOfType<int>(json, r'data_sync_id')!,
        pageId: mapValueOfType<int>(json, r'page_id')!,
        exportCharset: ExportCharsetEnum.fromJson(json[r'export_charset']) ?? ExportCharsetEnum.utf8,
        csvColumnSeparator: CsvColumnSeparatorEnum.fromJson(json[r'csv_column_separator']) ?? CsvColumnSeparatorEnum.comma,
        csvFirstRowHeader: mapValueOfType<bool>(json, r'csv_first_row_header') ?? true,
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

  static List<JobTypeCreateJob> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JobTypeCreateJob>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JobTypeCreateJob.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JobTypeCreateJob> mapFromJson(dynamic json) {
    final map = <String, JobTypeCreateJob>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JobTypeCreateJob.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JobTypeCreateJob-objects as value to a dart map
  static Map<String, List<JobTypeCreateJob>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JobTypeCreateJob>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JobTypeCreateJob.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'application_id',
    'template_id',
    'snapshot',
    'url',
    'exported_file_name',
    'resource_id',
    'airtable_share_url',
    'table_id',
    'field_id',
    'data_sync_id',
    'page_id',
  };
}

