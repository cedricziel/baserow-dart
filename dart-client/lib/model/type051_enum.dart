//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `notification` - notification * `open_page` - open_page * `create_row` - create_row * `update_row` - update_row * `delete_row` - delete_row * `logout` - logout * `refresh_data_source` - refresh_data_source
class Type051Enum {
  /// Instantiate a new enum with the provided [value].
  const Type051Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const notification = Type051Enum._(r'notification');
  static const openPage = Type051Enum._(r'open_page');
  static const createRow = Type051Enum._(r'create_row');
  static const updateRow = Type051Enum._(r'update_row');
  static const deleteRow = Type051Enum._(r'delete_row');
  static const logout = Type051Enum._(r'logout');
  static const refreshDataSource = Type051Enum._(r'refresh_data_source');

  /// List of all possible values in this [enum][Type051Enum].
  static const values = <Type051Enum>[
    notification,
    openPage,
    createRow,
    updateRow,
    deleteRow,
    logout,
    refreshDataSource,
  ];

  static Type051Enum? fromJson(dynamic value) => Type051EnumTypeTransformer().decode(value);

  static List<Type051Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Type051Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Type051Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Type051Enum] to String,
/// and [decode] dynamic data back to [Type051Enum].
class Type051EnumTypeTransformer {
  factory Type051EnumTypeTransformer() => _instance ??= const Type051EnumTypeTransformer._();

  const Type051EnumTypeTransformer._();

  String encode(Type051Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a Type051Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Type051Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'notification': return Type051Enum.notification;
        case r'open_page': return Type051Enum.openPage;
        case r'create_row': return Type051Enum.createRow;
        case r'update_row': return Type051Enum.updateRow;
        case r'delete_row': return Type051Enum.deleteRow;
        case r'logout': return Type051Enum.logout;
        case r'refresh_data_source': return Type051Enum.refreshDataSource;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Type051EnumTypeTransformer] instance.
  static Type051EnumTypeTransformer? _instance;
}

