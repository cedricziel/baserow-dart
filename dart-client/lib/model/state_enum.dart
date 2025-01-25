//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `pending` - pending * `exporting` - exporting * `cancelled` - cancelled * `finished` - finished * `failed` - failed * `expired` - expired
class StateEnum {
  /// Instantiate a new enum with the provided [value].
  const StateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = StateEnum._(r'pending');
  static const exporting = StateEnum._(r'exporting');
  static const cancelled = StateEnum._(r'cancelled');
  static const finished = StateEnum._(r'finished');
  static const failed = StateEnum._(r'failed');
  static const expired = StateEnum._(r'expired');

  /// List of all possible values in this [enum][StateEnum].
  static const values = <StateEnum>[
    pending,
    exporting,
    cancelled,
    finished,
    failed,
    expired,
  ];

  static StateEnum? fromJson(dynamic value) => StateEnumTypeTransformer().decode(value);

  static List<StateEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StateEnum] to String,
/// and [decode] dynamic data back to [StateEnum].
class StateEnumTypeTransformer {
  factory StateEnumTypeTransformer() => _instance ??= const StateEnumTypeTransformer._();

  const StateEnumTypeTransformer._();

  String encode(StateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending': return StateEnum.pending;
        case r'exporting': return StateEnum.exporting;
        case r'cancelled': return StateEnum.cancelled;
        case r'finished': return StateEnum.finished;
        case r'failed': return StateEnum.failed;
        case r'expired': return StateEnum.expired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StateEnumTypeTransformer] instance.
  static StateEnumTypeTransformer? _instance;
}

