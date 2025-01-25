//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

/// * `ical_calendar` - ical_calendar * `postgresql` - postgresql * `local_baserow_table` - local_baserow_table * `jira_issues` - jira_issues * `github_issues` - github_issues * `gitlab_issues` - gitlab_issues * `hubspot_contacts` - hubspot_contacts
class TypeD46Enum {
  /// Instantiate a new enum with the provided [value].
  const TypeD46Enum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const icalCalendar = TypeD46Enum._(r'ical_calendar');
  static const postgresql = TypeD46Enum._(r'postgresql');
  static const localBaserowTable = TypeD46Enum._(r'local_baserow_table');
  static const jiraIssues = TypeD46Enum._(r'jira_issues');
  static const githubIssues = TypeD46Enum._(r'github_issues');
  static const gitlabIssues = TypeD46Enum._(r'gitlab_issues');
  static const hubspotContacts = TypeD46Enum._(r'hubspot_contacts');

  /// List of all possible values in this [enum][TypeD46Enum].
  static const values = <TypeD46Enum>[
    icalCalendar,
    postgresql,
    localBaserowTable,
    jiraIssues,
    githubIssues,
    gitlabIssues,
    hubspotContacts,
  ];

  static TypeD46Enum? fromJson(dynamic value) => TypeD46EnumTypeTransformer().decode(value);

  static List<TypeD46Enum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TypeD46Enum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TypeD46Enum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TypeD46Enum] to String,
/// and [decode] dynamic data back to [TypeD46Enum].
class TypeD46EnumTypeTransformer {
  factory TypeD46EnumTypeTransformer() => _instance ??= const TypeD46EnumTypeTransformer._();

  const TypeD46EnumTypeTransformer._();

  String encode(TypeD46Enum data) => data.value;

  /// Decodes a [dynamic value][data] to a TypeD46Enum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TypeD46Enum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ical_calendar': return TypeD46Enum.icalCalendar;
        case r'postgresql': return TypeD46Enum.postgresql;
        case r'local_baserow_table': return TypeD46Enum.localBaserowTable;
        case r'jira_issues': return TypeD46Enum.jiraIssues;
        case r'github_issues': return TypeD46Enum.githubIssues;
        case r'gitlab_issues': return TypeD46Enum.gitlabIssues;
        case r'hubspot_contacts': return TypeD46Enum.hubspotContacts;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TypeD46EnumTypeTransformer] instance.
  static TypeD46EnumTypeTransformer? _instance;
}

