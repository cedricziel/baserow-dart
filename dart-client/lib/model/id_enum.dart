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
class IdEnum {
  /// Instantiate a new enum with the provided [value].
  const IdEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const createGroup = IdEnum._(r'create_group');
  static const deleteGroup = IdEnum._(r'delete_group');
  static const updateGroup = IdEnum._(r'update_group');
  static const orderGroups = IdEnum._(r'order_groups');
  static const createApplication = IdEnum._(r'create_application');
  static const updateApplication = IdEnum._(r'update_application');
  static const deleteApplication = IdEnum._(r'delete_application');
  static const orderApplications = IdEnum._(r'order_applications');
  static const duplicateApplication = IdEnum._(r'duplicate_application');
  static const installTemplate = IdEnum._(r'install_template');
  static const createGroupInvitation = IdEnum._(r'create_group_invitation');
  static const deleteGroupInvitation = IdEnum._(r'delete_group_invitation');
  static const acceptGroupInvitation = IdEnum._(r'accept_group_invitation');
  static const rejectGroupInvitation = IdEnum._(r'reject_group_invitation');
  static const updateGroupInvitationPermissions = IdEnum._(r'update_group_invitation_permissions');
  static const leaveGroup = IdEnum._(r'leave_group');
  static const createInitialWorkspace = IdEnum._(r'create_initial_workspace');
  static const exportApplications = IdEnum._(r'export_applications');
  static const importApplications = IdEnum._(r'import_applications');
  static const createSnapshot = IdEnum._(r'create_snapshot');
  static const deleteSnapshot = IdEnum._(r'delete_snapshot');
  static const restoreSnapshot = IdEnum._(r'restore_snapshot');
  static const emptyTrash = IdEnum._(r'empty_trash');
  static const restoreFromTrash = IdEnum._(r'restore_from_trash');
  static const createUser = IdEnum._(r'create_user');
  static const updateUser = IdEnum._(r'update_user');
  static const scheduleUserDeletion = IdEnum._(r'schedule_user_deletion');
  static const cancelUserDeletion = IdEnum._(r'cancel_user_deletion');
  static const signInUser = IdEnum._(r'sign_in_user');
  static const changeUserPassword = IdEnum._(r'change_user_password');
  static const sendResetUserPassword = IdEnum._(r'send_reset_user_password');
  static const resetUserPassword = IdEnum._(r'reset_user_password');
  static const sendVerifyEmail = IdEnum._(r'send_verify_email');
  static const verifyEmail = IdEnum._(r'verify_email');
  static const createDbToken = IdEnum._(r'create_db_token');
  static const updateDbTokenName = IdEnum._(r'update_db_token_name');
  static const updateDbTokenPermissions = IdEnum._(r'update_db_token_permissions');
  static const rotateDbTokenKey = IdEnum._(r'rotate_db_token_key');
  static const deleteDbTokenKey = IdEnum._(r'delete_db_token_key');
  static const createWebhook = IdEnum._(r'create_webhook');
  static const deleteWebhook = IdEnum._(r'delete_webhook');
  static const updateWebhook = IdEnum._(r'update_webhook');
  static const exportTable = IdEnum._(r'export_table');
  static const importDatabaseFromAirtable = IdEnum._(r'import_database_from_airtable');
  static const createTable = IdEnum._(r'create_table');
  static const deleteTable = IdEnum._(r'delete_table');
  static const orderTables = IdEnum._(r'order_tables');
  static const updateTable = IdEnum._(r'update_table');
  static const duplicateTable = IdEnum._(r'duplicate_table');
  static const createRow = IdEnum._(r'create_row');
  static const createRows = IdEnum._(r'create_rows');
  static const importRows = IdEnum._(r'import_rows');
  static const deleteRow = IdEnum._(r'delete_row');
  static const deleteRows = IdEnum._(r'delete_rows');
  static const moveRow = IdEnum._(r'move_row');
  static const updateRow = IdEnum._(r'update_row');
  static const updateRows = IdEnum._(r'update_rows');
  static const createView = IdEnum._(r'create_view');
  static const duplicateView = IdEnum._(r'duplicate_view');
  static const deleteView = IdEnum._(r'delete_view');
  static const orderViews = IdEnum._(r'order_views');
  static const updateView = IdEnum._(r'update_view');
  static const createViewFilter = IdEnum._(r'create_view_filter');
  static const updateViewFilter = IdEnum._(r'update_view_filter');
  static const deleteViewFilter = IdEnum._(r'delete_view_filter');
  static const createViewSort = IdEnum._(r'create_view_sort');
  static const updateViewSort = IdEnum._(r'update_view_sort');
  static const deleteViewSort = IdEnum._(r'delete_view_sort');
  static const createViewGroup = IdEnum._(r'create_view_group');
  static const updateViewGroup = IdEnum._(r'update_view_group');
  static const deleteViewGroup = IdEnum._(r'delete_view_group');
  static const submitForm = IdEnum._(r'submit_form');
  static const rotateViewSlug = IdEnum._(r'rotate_view_slug');
  static const updateViewFieldOptions = IdEnum._(r'update_view_field_options');
  static const createDecoration = IdEnum._(r'create_decoration');
  static const updateDecoration = IdEnum._(r'update_decoration');
  static const deleteDecoration = IdEnum._(r'delete_decoration');
  static const createViewFilterGroup = IdEnum._(r'create_view_filter_group');
  static const updateViewFilterGroup = IdEnum._(r'update_view_filter_group');
  static const deleteViewFilterGroup = IdEnum._(r'delete_view_filter_group');
  static const createDataSyncTable = IdEnum._(r'create_data_sync_table');
  static const updateDataSyncTable = IdEnum._(r'update_data_sync_table');
  static const syncDataSyncTable = IdEnum._(r'sync_data_sync_table');
  static const createField = IdEnum._(r'create_field');
  static const deleteField = IdEnum._(r'delete_field');
  static const updateField = IdEnum._(r'update_field');
  static const duplicateField = IdEnum._(r'duplicate_field');
  static const changePrimaryField = IdEnum._(r'change_primary_field');
  static const generateFormulaWithAi = IdEnum._(r'generate_formula_with_ai');
  static const createRowComment = IdEnum._(r'create_row_comment');
  static const deleteRowComment = IdEnum._(r'delete_row_comment');
  static const updateRowComment = IdEnum._(r'update_row_comment');
  static const rotateCalendarIcalViewSlug = IdEnum._(r'rotate_calendar_ical_view_slug');
  static const createTeam = IdEnum._(r'create_team');
  static const updateTeam = IdEnum._(r'update_team');
  static const deleteTeam = IdEnum._(r'delete_team');
  static const createTeamSubject = IdEnum._(r'create_team_subject');
  static const deleteTeamSubject = IdEnum._(r'delete_team_subject');
  static const batchAssignRole = IdEnum._(r'batch_assign_role');

  /// List of all possible values in this [enum][IdEnum].
  static const values = <IdEnum>[
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

  static IdEnum? fromJson(dynamic value) => IdEnumTypeTransformer().decode(value);

  static List<IdEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IdEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IdEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [IdEnum] to String,
/// and [decode] dynamic data back to [IdEnum].
class IdEnumTypeTransformer {
  factory IdEnumTypeTransformer() => _instance ??= const IdEnumTypeTransformer._();

  const IdEnumTypeTransformer._();

  String encode(IdEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a IdEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IdEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'create_group': return IdEnum.createGroup;
        case r'delete_group': return IdEnum.deleteGroup;
        case r'update_group': return IdEnum.updateGroup;
        case r'order_groups': return IdEnum.orderGroups;
        case r'create_application': return IdEnum.createApplication;
        case r'update_application': return IdEnum.updateApplication;
        case r'delete_application': return IdEnum.deleteApplication;
        case r'order_applications': return IdEnum.orderApplications;
        case r'duplicate_application': return IdEnum.duplicateApplication;
        case r'install_template': return IdEnum.installTemplate;
        case r'create_group_invitation': return IdEnum.createGroupInvitation;
        case r'delete_group_invitation': return IdEnum.deleteGroupInvitation;
        case r'accept_group_invitation': return IdEnum.acceptGroupInvitation;
        case r'reject_group_invitation': return IdEnum.rejectGroupInvitation;
        case r'update_group_invitation_permissions': return IdEnum.updateGroupInvitationPermissions;
        case r'leave_group': return IdEnum.leaveGroup;
        case r'create_initial_workspace': return IdEnum.createInitialWorkspace;
        case r'export_applications': return IdEnum.exportApplications;
        case r'import_applications': return IdEnum.importApplications;
        case r'create_snapshot': return IdEnum.createSnapshot;
        case r'delete_snapshot': return IdEnum.deleteSnapshot;
        case r'restore_snapshot': return IdEnum.restoreSnapshot;
        case r'empty_trash': return IdEnum.emptyTrash;
        case r'restore_from_trash': return IdEnum.restoreFromTrash;
        case r'create_user': return IdEnum.createUser;
        case r'update_user': return IdEnum.updateUser;
        case r'schedule_user_deletion': return IdEnum.scheduleUserDeletion;
        case r'cancel_user_deletion': return IdEnum.cancelUserDeletion;
        case r'sign_in_user': return IdEnum.signInUser;
        case r'change_user_password': return IdEnum.changeUserPassword;
        case r'send_reset_user_password': return IdEnum.sendResetUserPassword;
        case r'reset_user_password': return IdEnum.resetUserPassword;
        case r'send_verify_email': return IdEnum.sendVerifyEmail;
        case r'verify_email': return IdEnum.verifyEmail;
        case r'create_db_token': return IdEnum.createDbToken;
        case r'update_db_token_name': return IdEnum.updateDbTokenName;
        case r'update_db_token_permissions': return IdEnum.updateDbTokenPermissions;
        case r'rotate_db_token_key': return IdEnum.rotateDbTokenKey;
        case r'delete_db_token_key': return IdEnum.deleteDbTokenKey;
        case r'create_webhook': return IdEnum.createWebhook;
        case r'delete_webhook': return IdEnum.deleteWebhook;
        case r'update_webhook': return IdEnum.updateWebhook;
        case r'export_table': return IdEnum.exportTable;
        case r'import_database_from_airtable': return IdEnum.importDatabaseFromAirtable;
        case r'create_table': return IdEnum.createTable;
        case r'delete_table': return IdEnum.deleteTable;
        case r'order_tables': return IdEnum.orderTables;
        case r'update_table': return IdEnum.updateTable;
        case r'duplicate_table': return IdEnum.duplicateTable;
        case r'create_row': return IdEnum.createRow;
        case r'create_rows': return IdEnum.createRows;
        case r'import_rows': return IdEnum.importRows;
        case r'delete_row': return IdEnum.deleteRow;
        case r'delete_rows': return IdEnum.deleteRows;
        case r'move_row': return IdEnum.moveRow;
        case r'update_row': return IdEnum.updateRow;
        case r'update_rows': return IdEnum.updateRows;
        case r'create_view': return IdEnum.createView;
        case r'duplicate_view': return IdEnum.duplicateView;
        case r'delete_view': return IdEnum.deleteView;
        case r'order_views': return IdEnum.orderViews;
        case r'update_view': return IdEnum.updateView;
        case r'create_view_filter': return IdEnum.createViewFilter;
        case r'update_view_filter': return IdEnum.updateViewFilter;
        case r'delete_view_filter': return IdEnum.deleteViewFilter;
        case r'create_view_sort': return IdEnum.createViewSort;
        case r'update_view_sort': return IdEnum.updateViewSort;
        case r'delete_view_sort': return IdEnum.deleteViewSort;
        case r'create_view_group': return IdEnum.createViewGroup;
        case r'update_view_group': return IdEnum.updateViewGroup;
        case r'delete_view_group': return IdEnum.deleteViewGroup;
        case r'submit_form': return IdEnum.submitForm;
        case r'rotate_view_slug': return IdEnum.rotateViewSlug;
        case r'update_view_field_options': return IdEnum.updateViewFieldOptions;
        case r'create_decoration': return IdEnum.createDecoration;
        case r'update_decoration': return IdEnum.updateDecoration;
        case r'delete_decoration': return IdEnum.deleteDecoration;
        case r'create_view_filter_group': return IdEnum.createViewFilterGroup;
        case r'update_view_filter_group': return IdEnum.updateViewFilterGroup;
        case r'delete_view_filter_group': return IdEnum.deleteViewFilterGroup;
        case r'create_data_sync_table': return IdEnum.createDataSyncTable;
        case r'update_data_sync_table': return IdEnum.updateDataSyncTable;
        case r'sync_data_sync_table': return IdEnum.syncDataSyncTable;
        case r'create_field': return IdEnum.createField;
        case r'delete_field': return IdEnum.deleteField;
        case r'update_field': return IdEnum.updateField;
        case r'duplicate_field': return IdEnum.duplicateField;
        case r'change_primary_field': return IdEnum.changePrimaryField;
        case r'generate_formula_with_ai': return IdEnum.generateFormulaWithAi;
        case r'create_row_comment': return IdEnum.createRowComment;
        case r'delete_row_comment': return IdEnum.deleteRowComment;
        case r'update_row_comment': return IdEnum.updateRowComment;
        case r'rotate_calendar_ical_view_slug': return IdEnum.rotateCalendarIcalViewSlug;
        case r'create_team': return IdEnum.createTeam;
        case r'update_team': return IdEnum.updateTeam;
        case r'delete_team': return IdEnum.deleteTeam;
        case r'create_team_subject': return IdEnum.createTeamSubject;
        case r'delete_team_subject': return IdEnum.deleteTeamSubject;
        case r'batch_assign_role': return IdEnum.batchAssignRole;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [IdEnumTypeTransformer] instance.
  static IdEnumTypeTransformer? _instance;
}

