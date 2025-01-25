//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `heading` - heading * `text` - text * `link` - link * `image` - image * `input_text` - input_text * `column` - column * `button` - button * `table` - table * `repeat` - repeat * `record_selector` - record_selector * `form_container` - form_container * `choice` - choice * `checkbox` - checkbox * `iframe` - iframe * `datetime_picker` - datetime_picker * `header` - header * `footer` - footer * `auth_form` - auth_form
class TypeD53Enum {
  /// Instantiate a new enum with the provided [value].
  const TypeD53Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const heading = TypeD53Enum._(r'heading');
  static const text = TypeD53Enum._(r'text');
  static const link = TypeD53Enum._(r'link');
  static const image = TypeD53Enum._(r'image');
  static const inputText = TypeD53Enum._(r'input_text');
  static const column = TypeD53Enum._(r'column');
  static const button = TypeD53Enum._(r'button');
  static const table = TypeD53Enum._(r'table');
  static const repeat = TypeD53Enum._(r'repeat');
  static const recordSelector = TypeD53Enum._(r'record_selector');
  static const formContainer = TypeD53Enum._(r'form_container');
  static const choice = TypeD53Enum._(r'choice');
  static const checkbox = TypeD53Enum._(r'checkbox');
  static const iframe = TypeD53Enum._(r'iframe');
  static const datetimePicker = TypeD53Enum._(r'datetime_picker');
  static const header = TypeD53Enum._(r'header');
  static const footer = TypeD53Enum._(r'footer');
  static const authForm = TypeD53Enum._(r'auth_form');

  /// List of all possible values in this [enum][TypeD53Enum].
  static const values = <TypeD53Enum>[
    heading,
    text,
    link,
    image,
    inputText,
    column,
    button,
    table,
    repeat,
    recordSelector,
    formContainer,
    choice,
    checkbox,
    iframe,
    datetimePicker,
    header,
    footer,
    authForm,
  ];

  static TypeD53Enum? fromJson(dynamic value) => TypeD53EnumTypeTransformer().decode(value);

  static List<TypeD53Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TypeD53Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TypeD53Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TypeD53Enum] to String,
/// and [decode] dynamic data back to [TypeD53Enum].
class TypeD53EnumTypeTransformer {
  factory TypeD53EnumTypeTransformer() => _instance ??= const TypeD53EnumTypeTransformer._();

  const TypeD53EnumTypeTransformer._();

  String encode(TypeD53Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a TypeD53Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TypeD53Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'heading': return TypeD53Enum.heading;
        case r'text': return TypeD53Enum.text;
        case r'link': return TypeD53Enum.link;
        case r'image': return TypeD53Enum.image;
        case r'input_text': return TypeD53Enum.inputText;
        case r'column': return TypeD53Enum.column;
        case r'button': return TypeD53Enum.button;
        case r'table': return TypeD53Enum.table;
        case r'repeat': return TypeD53Enum.repeat;
        case r'record_selector': return TypeD53Enum.recordSelector;
        case r'form_container': return TypeD53Enum.formContainer;
        case r'choice': return TypeD53Enum.choice;
        case r'checkbox': return TypeD53Enum.checkbox;
        case r'iframe': return TypeD53Enum.iframe;
        case r'datetime_picker': return TypeD53Enum.datetimePicker;
        case r'header': return TypeD53Enum.header;
        case r'footer': return TypeD53Enum.footer;
        case r'auth_form': return TypeD53Enum.authForm;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TypeD53EnumTypeTransformer] instance.
  static TypeD53EnumTypeTransformer? _instance;
}

