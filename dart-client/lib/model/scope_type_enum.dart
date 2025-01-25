//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `core` - core * `application` - application * `workspace` - workspace * `workspace_invitation` - workspace_invitation * `snapshot` - snapshot * `workspace_user` - workspace_user * `integration` - integration * `user_source` - user_source * `database` - database * `database_table` - database_table * `database_field` - database_field * `database_view` - database_view * `database_view_decoration` - database_view_decoration * `database_view_sort` - database_view_sort * `database_view_group` - database_view_group * `database_view_filter` - database_view_filter * `database_view_filter_group` - database_view_filter_group * `token` - token * `builder` - builder * `builder_page` - builder_page * `builder_element` - builder_element * `builder_domain` - builder_domain * `builder_data_source` - builder_data_source * `builder_workflow_action` - builder_workflow_action * `team` - team * `team_subject` - team_subject * `license` - license
class ScopeTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ScopeTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const core = ScopeTypeEnum._(r'core');
  static const application = ScopeTypeEnum._(r'application');
  static const workspace = ScopeTypeEnum._(r'workspace');
  static const workspaceInvitation = ScopeTypeEnum._(r'workspace_invitation');
  static const snapshot = ScopeTypeEnum._(r'snapshot');
  static const workspaceUser = ScopeTypeEnum._(r'workspace_user');
  static const integration = ScopeTypeEnum._(r'integration');
  static const userSource = ScopeTypeEnum._(r'user_source');
  static const database = ScopeTypeEnum._(r'database');
  static const databaseTable = ScopeTypeEnum._(r'database_table');
  static const databaseField = ScopeTypeEnum._(r'database_field');
  static const databaseView = ScopeTypeEnum._(r'database_view');
  static const databaseViewDecoration = ScopeTypeEnum._(r'database_view_decoration');
  static const databaseViewSort = ScopeTypeEnum._(r'database_view_sort');
  static const databaseViewGroup = ScopeTypeEnum._(r'database_view_group');
  static const databaseViewFilter = ScopeTypeEnum._(r'database_view_filter');
  static const databaseViewFilterGroup = ScopeTypeEnum._(r'database_view_filter_group');
  static const token = ScopeTypeEnum._(r'token');
  static const builder = ScopeTypeEnum._(r'builder');
  static const builderPage = ScopeTypeEnum._(r'builder_page');
  static const builderElement = ScopeTypeEnum._(r'builder_element');
  static const builderDomain = ScopeTypeEnum._(r'builder_domain');
  static const builderDataSource = ScopeTypeEnum._(r'builder_data_source');
  static const builderWorkflowAction = ScopeTypeEnum._(r'builder_workflow_action');
  static const team = ScopeTypeEnum._(r'team');
  static const teamSubject = ScopeTypeEnum._(r'team_subject');
  static const license = ScopeTypeEnum._(r'license');

  /// List of all possible values in this [enum][ScopeTypeEnum].
  static const values = <ScopeTypeEnum>[
    core,
    application,
    workspace,
    workspaceInvitation,
    snapshot,
    workspaceUser,
    integration,
    userSource,
    database,
    databaseTable,
    databaseField,
    databaseView,
    databaseViewDecoration,
    databaseViewSort,
    databaseViewGroup,
    databaseViewFilter,
    databaseViewFilterGroup,
    token,
    builder,
    builderPage,
    builderElement,
    builderDomain,
    builderDataSource,
    builderWorkflowAction,
    team,
    teamSubject,
    license,
  ];

  static ScopeTypeEnum? fromJson(dynamic value) => ScopeTypeEnumTypeTransformer().decode(value);

  static List<ScopeTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScopeTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScopeTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ScopeTypeEnum] to String,
/// and [decode] dynamic data back to [ScopeTypeEnum].
class ScopeTypeEnumTypeTransformer {
  factory ScopeTypeEnumTypeTransformer() => _instance ??= const ScopeTypeEnumTypeTransformer._();

  const ScopeTypeEnumTypeTransformer._();

  String encode(ScopeTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ScopeTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ScopeTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'core': return ScopeTypeEnum.core;
        case r'application': return ScopeTypeEnum.application;
        case r'workspace': return ScopeTypeEnum.workspace;
        case r'workspace_invitation': return ScopeTypeEnum.workspaceInvitation;
        case r'snapshot': return ScopeTypeEnum.snapshot;
        case r'workspace_user': return ScopeTypeEnum.workspaceUser;
        case r'integration': return ScopeTypeEnum.integration;
        case r'user_source': return ScopeTypeEnum.userSource;
        case r'database': return ScopeTypeEnum.database;
        case r'database_table': return ScopeTypeEnum.databaseTable;
        case r'database_field': return ScopeTypeEnum.databaseField;
        case r'database_view': return ScopeTypeEnum.databaseView;
        case r'database_view_decoration': return ScopeTypeEnum.databaseViewDecoration;
        case r'database_view_sort': return ScopeTypeEnum.databaseViewSort;
        case r'database_view_group': return ScopeTypeEnum.databaseViewGroup;
        case r'database_view_filter': return ScopeTypeEnum.databaseViewFilter;
        case r'database_view_filter_group': return ScopeTypeEnum.databaseViewFilterGroup;
        case r'token': return ScopeTypeEnum.token;
        case r'builder': return ScopeTypeEnum.builder;
        case r'builder_page': return ScopeTypeEnum.builderPage;
        case r'builder_element': return ScopeTypeEnum.builderElement;
        case r'builder_domain': return ScopeTypeEnum.builderDomain;
        case r'builder_data_source': return ScopeTypeEnum.builderDataSource;
        case r'builder_workflow_action': return ScopeTypeEnum.builderWorkflowAction;
        case r'team': return ScopeTypeEnum.team;
        case r'team_subject': return ScopeTypeEnum.teamSubject;
        case r'license': return ScopeTypeEnum.license;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ScopeTypeEnumTypeTransformer] instance.
  static ScopeTypeEnumTypeTransformer? _instance;
}

