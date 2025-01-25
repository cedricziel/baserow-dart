//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `create_group` - create_group * `delete_group` - delete_group * `update_group` - update_group * `order_groups` - order_groups * `create_application` - create_application * `update_application` - update_application * `delete_application` - delete_application * `order_applications` - order_applications * `duplicate_application` - duplicate_application * `install_template` - install_template * `create_group_invitation` - create_group_invitation * `delete_group_invitation` - delete_group_invitation * `accept_group_invitation` - accept_group_invitation * `reject_group_invitation` - reject_group_invitation * `update_group_invitation_permissions` - update_group_invitation_permissions * `leave_group` - leave_group * `create_initial_workspace` - create_initial_workspace * `export_applications` - export_applications * `import_applications` - import_applications * `create_snapshot` - create_snapshot * `delete_snapshot` - delete_snapshot * `restore_snapshot` - restore_snapshot * `empty_trash` - empty_trash * `restore_from_trash` - restore_from_trash * `create_user` - create_user * `update_user` - update_user * `schedule_user_deletion` - schedule_user_deletion * `cancel_user_deletion` - cancel_user_deletion * `sign_in_user` - sign_in_user * `change_user_password` - change_user_password * `send_reset_user_password` - send_reset_user_password * `reset_user_password` - reset_user_password * `send_verify_email` - send_verify_email * `verify_email` - verify_email * `create_db_token` - create_db_token * `update_db_token_name` - update_db_token_name * `update_db_token_permissions` - update_db_token_permissions * `rotate_db_token_key` - rotate_db_token_key * `delete_db_token_key` - delete_db_token_key * `create_webhook` - create_webhook * `delete_webhook` - delete_webhook * `update_webhook` - update_webhook * `export_table` - export_table * `import_database_from_airtable` - import_database_from_airtable * `create_table` - create_table * `delete_table` - delete_table * `order_tables` - order_tables * `update_table` - update_table * `duplicate_table` - duplicate_table * `create_row` - create_row * `create_rows` - create_rows * `import_rows` - import_rows * `delete_row` - delete_row * `delete_rows` - delete_rows * `move_row` - move_row * `update_row` - update_row * `update_rows` - update_rows * `create_view` - create_view * `duplicate_view` - duplicate_view * `delete_view` - delete_view * `order_views` - order_views * `update_view` - update_view * `create_view_filter` - create_view_filter * `update_view_filter` - update_view_filter * `delete_view_filter` - delete_view_filter * `create_view_sort` - create_view_sort * `update_view_sort` - update_view_sort * `delete_view_sort` - delete_view_sort * `create_view_group` - create_view_group * `update_view_group` - update_view_group * `delete_view_group` - delete_view_group * `submit_form` - submit_form * `rotate_view_slug` - rotate_view_slug * `update_view_field_options` - update_view_field_options * `create_decoration` - create_decoration * `update_decoration` - update_decoration * `delete_decoration` - delete_decoration * `create_view_filter_group` - create_view_filter_group * `update_view_filter_group` - update_view_filter_group * `delete_view_filter_group` - delete_view_filter_group * `create_data_sync_table` - create_data_sync_table * `update_data_sync_table` - update_data_sync_table * `sync_data_sync_table` - sync_data_sync_table * `create_field` - create_field * `delete_field` - delete_field * `update_field` - update_field * `duplicate_field` - duplicate_field * `change_primary_field` - change_primary_field * `generate_formula_with_ai` - generate_formula_with_ai * `create_row_comment` - create_row_comment * `delete_row_comment` - delete_row_comment * `update_row_comment` - update_row_comment * `rotate_calendar_ical_view_slug` - rotate_calendar_ical_view_slug * `create_team` - create_team * `update_team` - update_team * `delete_team` - delete_team * `create_team_subject` - create_team_subject * `delete_team_subject` - delete_team_subject * `batch_assign_role` - batch_assign_role
class FilterActionTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const FilterActionTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const createGroup = FilterActionTypeEnum._(r'create_group');
  static const deleteGroup = FilterActionTypeEnum._(r'delete_group');
  static const updateGroup = FilterActionTypeEnum._(r'update_group');
  static const orderGroups = FilterActionTypeEnum._(r'order_groups');
  static const createApplication = FilterActionTypeEnum._(r'create_application');
  static const updateApplication = FilterActionTypeEnum._(r'update_application');
  static const deleteApplication = FilterActionTypeEnum._(r'delete_application');
  static const orderApplications = FilterActionTypeEnum._(r'order_applications');
  static const duplicateApplication = FilterActionTypeEnum._(r'duplicate_application');
  static const installTemplate = FilterActionTypeEnum._(r'install_template');
  static const createGroupInvitation = FilterActionTypeEnum._(r'create_group_invitation');
  static const deleteGroupInvitation = FilterActionTypeEnum._(r'delete_group_invitation');
  static const acceptGroupInvitation = FilterActionTypeEnum._(r'accept_group_invitation');
  static const rejectGroupInvitation = FilterActionTypeEnum._(r'reject_group_invitation');
  static const updateGroupInvitationPermissions = FilterActionTypeEnum._(r'update_group_invitation_permissions');
  static const leaveGroup = FilterActionTypeEnum._(r'leave_group');
  static const createInitialWorkspace = FilterActionTypeEnum._(r'create_initial_workspace');
  static const exportApplications = FilterActionTypeEnum._(r'export_applications');
  static const importApplications = FilterActionTypeEnum._(r'import_applications');
  static const createSnapshot = FilterActionTypeEnum._(r'create_snapshot');
  static const deleteSnapshot = FilterActionTypeEnum._(r'delete_snapshot');
  static const restoreSnapshot = FilterActionTypeEnum._(r'restore_snapshot');
  static const emptyTrash = FilterActionTypeEnum._(r'empty_trash');
  static const restoreFromTrash = FilterActionTypeEnum._(r'restore_from_trash');
  static const createUser = FilterActionTypeEnum._(r'create_user');
  static const updateUser = FilterActionTypeEnum._(r'update_user');
  static const scheduleUserDeletion = FilterActionTypeEnum._(r'schedule_user_deletion');
  static const cancelUserDeletion = FilterActionTypeEnum._(r'cancel_user_deletion');
  static const signInUser = FilterActionTypeEnum._(r'sign_in_user');
  static const changeUserPassword = FilterActionTypeEnum._(r'change_user_password');
  static const sendResetUserPassword = FilterActionTypeEnum._(r'send_reset_user_password');
  static const resetUserPassword = FilterActionTypeEnum._(r'reset_user_password');
  static const sendVerifyEmail = FilterActionTypeEnum._(r'send_verify_email');
  static const verifyEmail = FilterActionTypeEnum._(r'verify_email');
  static const createDbToken = FilterActionTypeEnum._(r'create_db_token');
  static const updateDbTokenName = FilterActionTypeEnum._(r'update_db_token_name');
  static const updateDbTokenPermissions = FilterActionTypeEnum._(r'update_db_token_permissions');
  static const rotateDbTokenKey = FilterActionTypeEnum._(r'rotate_db_token_key');
  static const deleteDbTokenKey = FilterActionTypeEnum._(r'delete_db_token_key');
  static const createWebhook = FilterActionTypeEnum._(r'create_webhook');
  static const deleteWebhook = FilterActionTypeEnum._(r'delete_webhook');
  static const updateWebhook = FilterActionTypeEnum._(r'update_webhook');
  static const exportTable = FilterActionTypeEnum._(r'export_table');
  static const importDatabaseFromAirtable = FilterActionTypeEnum._(r'import_database_from_airtable');
  static const createTable = FilterActionTypeEnum._(r'create_table');
  static const deleteTable = FilterActionTypeEnum._(r'delete_table');
  static const orderTables = FilterActionTypeEnum._(r'order_tables');
  static const updateTable = FilterActionTypeEnum._(r'update_table');
  static const duplicateTable = FilterActionTypeEnum._(r'duplicate_table');
  static const createRow = FilterActionTypeEnum._(r'create_row');
  static const createRows = FilterActionTypeEnum._(r'create_rows');
  static const importRows = FilterActionTypeEnum._(r'import_rows');
  static const deleteRow = FilterActionTypeEnum._(r'delete_row');
  static const deleteRows = FilterActionTypeEnum._(r'delete_rows');
  static const moveRow = FilterActionTypeEnum._(r'move_row');
  static const updateRow = FilterActionTypeEnum._(r'update_row');
  static const updateRows = FilterActionTypeEnum._(r'update_rows');
  static const createView = FilterActionTypeEnum._(r'create_view');
  static const duplicateView = FilterActionTypeEnum._(r'duplicate_view');
  static const deleteView = FilterActionTypeEnum._(r'delete_view');
  static const orderViews = FilterActionTypeEnum._(r'order_views');
  static const updateView = FilterActionTypeEnum._(r'update_view');
  static const createViewFilter = FilterActionTypeEnum._(r'create_view_filter');
  static const updateViewFilter = FilterActionTypeEnum._(r'update_view_filter');
  static const deleteViewFilter = FilterActionTypeEnum._(r'delete_view_filter');
  static const createViewSort = FilterActionTypeEnum._(r'create_view_sort');
  static const updateViewSort = FilterActionTypeEnum._(r'update_view_sort');
  static const deleteViewSort = FilterActionTypeEnum._(r'delete_view_sort');
  static const createViewGroup = FilterActionTypeEnum._(r'create_view_group');
  static const updateViewGroup = FilterActionTypeEnum._(r'update_view_group');
  static const deleteViewGroup = FilterActionTypeEnum._(r'delete_view_group');
  static const submitForm = FilterActionTypeEnum._(r'submit_form');
  static const rotateViewSlug = FilterActionTypeEnum._(r'rotate_view_slug');
  static const updateViewFieldOptions = FilterActionTypeEnum._(r'update_view_field_options');
  static const createDecoration = FilterActionTypeEnum._(r'create_decoration');
  static const updateDecoration = FilterActionTypeEnum._(r'update_decoration');
  static const deleteDecoration = FilterActionTypeEnum._(r'delete_decoration');
  static const createViewFilterGroup = FilterActionTypeEnum._(r'create_view_filter_group');
  static const updateViewFilterGroup = FilterActionTypeEnum._(r'update_view_filter_group');
  static const deleteViewFilterGroup = FilterActionTypeEnum._(r'delete_view_filter_group');
  static const createDataSyncTable = FilterActionTypeEnum._(r'create_data_sync_table');
  static const updateDataSyncTable = FilterActionTypeEnum._(r'update_data_sync_table');
  static const syncDataSyncTable = FilterActionTypeEnum._(r'sync_data_sync_table');
  static const createField = FilterActionTypeEnum._(r'create_field');
  static const deleteField = FilterActionTypeEnum._(r'delete_field');
  static const updateField = FilterActionTypeEnum._(r'update_field');
  static const duplicateField = FilterActionTypeEnum._(r'duplicate_field');
  static const changePrimaryField = FilterActionTypeEnum._(r'change_primary_field');
  static const generateFormulaWithAi = FilterActionTypeEnum._(r'generate_formula_with_ai');
  static const createRowComment = FilterActionTypeEnum._(r'create_row_comment');
  static const deleteRowComment = FilterActionTypeEnum._(r'delete_row_comment');
  static const updateRowComment = FilterActionTypeEnum._(r'update_row_comment');
  static const rotateCalendarIcalViewSlug = FilterActionTypeEnum._(r'rotate_calendar_ical_view_slug');
  static const createTeam = FilterActionTypeEnum._(r'create_team');
  static const updateTeam = FilterActionTypeEnum._(r'update_team');
  static const deleteTeam = FilterActionTypeEnum._(r'delete_team');
  static const createTeamSubject = FilterActionTypeEnum._(r'create_team_subject');
  static const deleteTeamSubject = FilterActionTypeEnum._(r'delete_team_subject');
  static const batchAssignRole = FilterActionTypeEnum._(r'batch_assign_role');

  /// List of all possible values in this [enum][FilterActionTypeEnum].
  static const values = <FilterActionTypeEnum>[
    createGroup,
    deleteGroup,
    updateGroup,
    orderGroups,
    createApplication,
    updateApplication,
    deleteApplication,
    orderApplications,
    duplicateApplication,
    installTemplate,
    createGroupInvitation,
    deleteGroupInvitation,
    acceptGroupInvitation,
    rejectGroupInvitation,
    updateGroupInvitationPermissions,
    leaveGroup,
    createInitialWorkspace,
    exportApplications,
    importApplications,
    createSnapshot,
    deleteSnapshot,
    restoreSnapshot,
    emptyTrash,
    restoreFromTrash,
    createUser,
    updateUser,
    scheduleUserDeletion,
    cancelUserDeletion,
    signInUser,
    changeUserPassword,
    sendResetUserPassword,
    resetUserPassword,
    sendVerifyEmail,
    verifyEmail,
    createDbToken,
    updateDbTokenName,
    updateDbTokenPermissions,
    rotateDbTokenKey,
    deleteDbTokenKey,
    createWebhook,
    deleteWebhook,
    updateWebhook,
    exportTable,
    importDatabaseFromAirtable,
    createTable,
    deleteTable,
    orderTables,
    updateTable,
    duplicateTable,
    createRow,
    createRows,
    importRows,
    deleteRow,
    deleteRows,
    moveRow,
    updateRow,
    updateRows,
    createView,
    duplicateView,
    deleteView,
    orderViews,
    updateView,
    createViewFilter,
    updateViewFilter,
    deleteViewFilter,
    createViewSort,
    updateViewSort,
    deleteViewSort,
    createViewGroup,
    updateViewGroup,
    deleteViewGroup,
    submitForm,
    rotateViewSlug,
    updateViewFieldOptions,
    createDecoration,
    updateDecoration,
    deleteDecoration,
    createViewFilterGroup,
    updateViewFilterGroup,
    deleteViewFilterGroup,
    createDataSyncTable,
    updateDataSyncTable,
    syncDataSyncTable,
    createField,
    deleteField,
    updateField,
    duplicateField,
    changePrimaryField,
    generateFormulaWithAi,
    createRowComment,
    deleteRowComment,
    updateRowComment,
    rotateCalendarIcalViewSlug,
    createTeam,
    updateTeam,
    deleteTeam,
    createTeamSubject,
    deleteTeamSubject,
    batchAssignRole,
  ];

  static FilterActionTypeEnum? fromJson(dynamic value) => FilterActionTypeEnumTypeTransformer().decode(value);

  static List<FilterActionTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterActionTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterActionTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FilterActionTypeEnum] to String,
/// and [decode] dynamic data back to [FilterActionTypeEnum].
class FilterActionTypeEnumTypeTransformer {
  factory FilterActionTypeEnumTypeTransformer() => _instance ??= const FilterActionTypeEnumTypeTransformer._();

  const FilterActionTypeEnumTypeTransformer._();

  String encode(FilterActionTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FilterActionTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FilterActionTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'create_group': return FilterActionTypeEnum.createGroup;
        case r'delete_group': return FilterActionTypeEnum.deleteGroup;
        case r'update_group': return FilterActionTypeEnum.updateGroup;
        case r'order_groups': return FilterActionTypeEnum.orderGroups;
        case r'create_application': return FilterActionTypeEnum.createApplication;
        case r'update_application': return FilterActionTypeEnum.updateApplication;
        case r'delete_application': return FilterActionTypeEnum.deleteApplication;
        case r'order_applications': return FilterActionTypeEnum.orderApplications;
        case r'duplicate_application': return FilterActionTypeEnum.duplicateApplication;
        case r'install_template': return FilterActionTypeEnum.installTemplate;
        case r'create_group_invitation': return FilterActionTypeEnum.createGroupInvitation;
        case r'delete_group_invitation': return FilterActionTypeEnum.deleteGroupInvitation;
        case r'accept_group_invitation': return FilterActionTypeEnum.acceptGroupInvitation;
        case r'reject_group_invitation': return FilterActionTypeEnum.rejectGroupInvitation;
        case r'update_group_invitation_permissions': return FilterActionTypeEnum.updateGroupInvitationPermissions;
        case r'leave_group': return FilterActionTypeEnum.leaveGroup;
        case r'create_initial_workspace': return FilterActionTypeEnum.createInitialWorkspace;
        case r'export_applications': return FilterActionTypeEnum.exportApplications;
        case r'import_applications': return FilterActionTypeEnum.importApplications;
        case r'create_snapshot': return FilterActionTypeEnum.createSnapshot;
        case r'delete_snapshot': return FilterActionTypeEnum.deleteSnapshot;
        case r'restore_snapshot': return FilterActionTypeEnum.restoreSnapshot;
        case r'empty_trash': return FilterActionTypeEnum.emptyTrash;
        case r'restore_from_trash': return FilterActionTypeEnum.restoreFromTrash;
        case r'create_user': return FilterActionTypeEnum.createUser;
        case r'update_user': return FilterActionTypeEnum.updateUser;
        case r'schedule_user_deletion': return FilterActionTypeEnum.scheduleUserDeletion;
        case r'cancel_user_deletion': return FilterActionTypeEnum.cancelUserDeletion;
        case r'sign_in_user': return FilterActionTypeEnum.signInUser;
        case r'change_user_password': return FilterActionTypeEnum.changeUserPassword;
        case r'send_reset_user_password': return FilterActionTypeEnum.sendResetUserPassword;
        case r'reset_user_password': return FilterActionTypeEnum.resetUserPassword;
        case r'send_verify_email': return FilterActionTypeEnum.sendVerifyEmail;
        case r'verify_email': return FilterActionTypeEnum.verifyEmail;
        case r'create_db_token': return FilterActionTypeEnum.createDbToken;
        case r'update_db_token_name': return FilterActionTypeEnum.updateDbTokenName;
        case r'update_db_token_permissions': return FilterActionTypeEnum.updateDbTokenPermissions;
        case r'rotate_db_token_key': return FilterActionTypeEnum.rotateDbTokenKey;
        case r'delete_db_token_key': return FilterActionTypeEnum.deleteDbTokenKey;
        case r'create_webhook': return FilterActionTypeEnum.createWebhook;
        case r'delete_webhook': return FilterActionTypeEnum.deleteWebhook;
        case r'update_webhook': return FilterActionTypeEnum.updateWebhook;
        case r'export_table': return FilterActionTypeEnum.exportTable;
        case r'import_database_from_airtable': return FilterActionTypeEnum.importDatabaseFromAirtable;
        case r'create_table': return FilterActionTypeEnum.createTable;
        case r'delete_table': return FilterActionTypeEnum.deleteTable;
        case r'order_tables': return FilterActionTypeEnum.orderTables;
        case r'update_table': return FilterActionTypeEnum.updateTable;
        case r'duplicate_table': return FilterActionTypeEnum.duplicateTable;
        case r'create_row': return FilterActionTypeEnum.createRow;
        case r'create_rows': return FilterActionTypeEnum.createRows;
        case r'import_rows': return FilterActionTypeEnum.importRows;
        case r'delete_row': return FilterActionTypeEnum.deleteRow;
        case r'delete_rows': return FilterActionTypeEnum.deleteRows;
        case r'move_row': return FilterActionTypeEnum.moveRow;
        case r'update_row': return FilterActionTypeEnum.updateRow;
        case r'update_rows': return FilterActionTypeEnum.updateRows;
        case r'create_view': return FilterActionTypeEnum.createView;
        case r'duplicate_view': return FilterActionTypeEnum.duplicateView;
        case r'delete_view': return FilterActionTypeEnum.deleteView;
        case r'order_views': return FilterActionTypeEnum.orderViews;
        case r'update_view': return FilterActionTypeEnum.updateView;
        case r'create_view_filter': return FilterActionTypeEnum.createViewFilter;
        case r'update_view_filter': return FilterActionTypeEnum.updateViewFilter;
        case r'delete_view_filter': return FilterActionTypeEnum.deleteViewFilter;
        case r'create_view_sort': return FilterActionTypeEnum.createViewSort;
        case r'update_view_sort': return FilterActionTypeEnum.updateViewSort;
        case r'delete_view_sort': return FilterActionTypeEnum.deleteViewSort;
        case r'create_view_group': return FilterActionTypeEnum.createViewGroup;
        case r'update_view_group': return FilterActionTypeEnum.updateViewGroup;
        case r'delete_view_group': return FilterActionTypeEnum.deleteViewGroup;
        case r'submit_form': return FilterActionTypeEnum.submitForm;
        case r'rotate_view_slug': return FilterActionTypeEnum.rotateViewSlug;
        case r'update_view_field_options': return FilterActionTypeEnum.updateViewFieldOptions;
        case r'create_decoration': return FilterActionTypeEnum.createDecoration;
        case r'update_decoration': return FilterActionTypeEnum.updateDecoration;
        case r'delete_decoration': return FilterActionTypeEnum.deleteDecoration;
        case r'create_view_filter_group': return FilterActionTypeEnum.createViewFilterGroup;
        case r'update_view_filter_group': return FilterActionTypeEnum.updateViewFilterGroup;
        case r'delete_view_filter_group': return FilterActionTypeEnum.deleteViewFilterGroup;
        case r'create_data_sync_table': return FilterActionTypeEnum.createDataSyncTable;
        case r'update_data_sync_table': return FilterActionTypeEnum.updateDataSyncTable;
        case r'sync_data_sync_table': return FilterActionTypeEnum.syncDataSyncTable;
        case r'create_field': return FilterActionTypeEnum.createField;
        case r'delete_field': return FilterActionTypeEnum.deleteField;
        case r'update_field': return FilterActionTypeEnum.updateField;
        case r'duplicate_field': return FilterActionTypeEnum.duplicateField;
        case r'change_primary_field': return FilterActionTypeEnum.changePrimaryField;
        case r'generate_formula_with_ai': return FilterActionTypeEnum.generateFormulaWithAi;
        case r'create_row_comment': return FilterActionTypeEnum.createRowComment;
        case r'delete_row_comment': return FilterActionTypeEnum.deleteRowComment;
        case r'update_row_comment': return FilterActionTypeEnum.updateRowComment;
        case r'rotate_calendar_ical_view_slug': return FilterActionTypeEnum.rotateCalendarIcalViewSlug;
        case r'create_team': return FilterActionTypeEnum.createTeam;
        case r'update_team': return FilterActionTypeEnum.updateTeam;
        case r'delete_team': return FilterActionTypeEnum.deleteTeam;
        case r'create_team_subject': return FilterActionTypeEnum.createTeamSubject;
        case r'delete_team_subject': return FilterActionTypeEnum.deleteTeamSubject;
        case r'batch_assign_role': return FilterActionTypeEnum.batchAssignRole;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FilterActionTypeEnumTypeTransformer] instance.
  static FilterActionTypeEnumTypeTransformer? _instance;
}

