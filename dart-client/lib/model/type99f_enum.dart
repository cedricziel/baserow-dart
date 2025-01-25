//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `duplicate_application` - duplicate_application * `install_template` - install_template * `create_snapshot` - create_snapshot * `restore_snapshot` - restore_snapshot * `export_applications` - export_applications * `import_applications` - import_applications * `airtable` - airtable * `file_import` - file_import * `duplicate_table` - duplicate_table * `duplicate_field` - duplicate_field * `sync_data_sync_table` - sync_data_sync_table * `duplicate_page` - duplicate_page * `publish_domain` - publish_domain * `audit_log_export` - audit_log_export
class Type99fEnum {
  /// Instantiate a new enum with the provided [value].
  const Type99fEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const duplicateApplication = Type99fEnum._(r'duplicate_application');
  static const installTemplate = Type99fEnum._(r'install_template');
  static const createSnapshot = Type99fEnum._(r'create_snapshot');
  static const restoreSnapshot = Type99fEnum._(r'restore_snapshot');
  static const exportApplications = Type99fEnum._(r'export_applications');
  static const importApplications = Type99fEnum._(r'import_applications');
  static const airtable = Type99fEnum._(r'airtable');
  static const fileImport = Type99fEnum._(r'file_import');
  static const duplicateTable = Type99fEnum._(r'duplicate_table');
  static const duplicateField = Type99fEnum._(r'duplicate_field');
  static const syncDataSyncTable = Type99fEnum._(r'sync_data_sync_table');
  static const duplicatePage = Type99fEnum._(r'duplicate_page');
  static const publishDomain = Type99fEnum._(r'publish_domain');
  static const auditLogExport = Type99fEnum._(r'audit_log_export');

  /// List of all possible values in this [enum][Type99fEnum].
  static const values = <Type99fEnum>[
    duplicateApplication,
    installTemplate,
    createSnapshot,
    restoreSnapshot,
    exportApplications,
    importApplications,
    airtable,
    fileImport,
    duplicateTable,
    duplicateField,
    syncDataSyncTable,
    duplicatePage,
    publishDomain,
    auditLogExport,
  ];

  static Type99fEnum? fromJson(dynamic value) => Type99fEnumTypeTransformer().decode(value);

  static List<Type99fEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Type99fEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Type99fEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Type99fEnum] to String,
/// and [decode] dynamic data back to [Type99fEnum].
class Type99fEnumTypeTransformer {
  factory Type99fEnumTypeTransformer() => _instance ??= const Type99fEnumTypeTransformer._();

  const Type99fEnumTypeTransformer._();

  String encode(Type99fEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a Type99fEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Type99fEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'duplicate_application': return Type99fEnum.duplicateApplication;
        case r'install_template': return Type99fEnum.installTemplate;
        case r'create_snapshot': return Type99fEnum.createSnapshot;
        case r'restore_snapshot': return Type99fEnum.restoreSnapshot;
        case r'export_applications': return Type99fEnum.exportApplications;
        case r'import_applications': return Type99fEnum.importApplications;
        case r'airtable': return Type99fEnum.airtable;
        case r'file_import': return Type99fEnum.fileImport;
        case r'duplicate_table': return Type99fEnum.duplicateTable;
        case r'duplicate_field': return Type99fEnum.duplicateField;
        case r'sync_data_sync_table': return Type99fEnum.syncDataSyncTable;
        case r'duplicate_page': return Type99fEnum.duplicatePage;
        case r'publish_domain': return Type99fEnum.publishDomain;
        case r'audit_log_export': return Type99fEnum.auditLogExport;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Type99fEnumTypeTransformer] instance.
  static Type99fEnumTypeTransformer? _instance;
}

