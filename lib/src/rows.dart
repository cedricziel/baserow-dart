import 'dart:convert';

/// Filter operators for querying rows in Baserow tables.
///
/// Each operator type corresponds to a specific filtering operation that can be applied
/// to table fields. The operators are grouped by their primary use cases:
///
/// Basic comparison:
/// - [equal], [notEqual]: Basic equality checks
///
/// Date filters:
/// - [dateIs], [dateIsNot]: Compare with specific dates
/// - [dateIsBefore], [dateIsOnOrBefore]: Compare with dates before
/// - [dateIsAfter], [dateIsOnOrAfter]: Compare with dates after
/// - [dateIsWithin]: Check if date falls within a range
/// - [dateEqualsDayOfMonth]: Match specific day of month
///
/// Value comparison:
/// - [hasEmptyValue], [hasNotEmptyValue]: Check for empty/non-empty values
/// - [hasValueEqual], [hasNotValueEqual]: Check for specific values
/// - [hasValueContains], [hasNotValueContains]: Check if value contains substring
/// - [hasValueContainsWord], [hasNotValueContainsWord]: Check if value contains word
/// - [hasValueLengthIsLowerThan]: Compare value length
/// - [hasAllValuesEqual]: Check if all values match
///
/// Text filters:
/// - [contains], [containsNot]: Check for substring presence
/// - [containsWord], [doesntContainWord]: Check for word presence
///
/// File filters:
/// - [filenameContains]: Search in filenames
/// - [hasFileType]: Filter by file type (image/document)
/// - [filesLowerThan]: Compare number of files
///
/// Numeric filters:
/// - [higherThan], [higherThanOrEqual]: Greater than comparisons
/// - [lowerThan], [lowerThanOrEqual]: Less than comparisons
/// - [lengthIsLowerThan]: Compare string lengths
/// - [isEvenAndWhole]: Check for even whole numbers
///
/// Select filters:
/// - [singleSelectEqual], [singleSelectNotEqual]: Single option matching
/// - [singleSelectIsAnyOf], [singleSelectIsNoneOf]: Multiple option matching
///
/// Boolean filter:
/// - [boolean]: True/false checks
///
/// Link row filters:
/// - [linkRowHas], [linkRowHasNot]: Check linked row presence
/// - [linkRowContains], [linkRowNotContains]: Search in linked rows
///
/// Multi-select filters:
/// - [multipleSelectHas], [multipleSelectHasNot]: Check selected options
///
/// Collaborator filters:
/// - [multipleCollaboratorsHas], [multipleCollaboratorsHasNot]: Filter by collaborators
///
/// Empty/Not empty:
/// - [empty], [notEmpty]: Check for null/empty states
///
/// User filters:
/// - [userIs], [userIsNot]: Filter by user
enum FilterOperator {
  // Basic comparison
  equal,
  notEqual,

  // Date filters
  dateIs,
  dateIsNot,
  dateIsBefore,
  dateIsOnOrBefore,
  dateIsAfter,
  dateIsOnOrAfter,
  dateIsWithin,
  dateEqualsDayOfMonth,

  // Value comparison
  hasEmptyValue,
  hasNotEmptyValue,
  hasValueEqual,
  hasNotValueEqual,
  hasValueContains,
  hasNotValueContains,
  hasValueContainsWord,
  hasNotValueContainsWord,
  hasValueLengthIsLowerThan,
  hasAllValuesEqual,

  // Text filters
  contains,
  containsNot,
  containsWord,
  doesntContainWord,

  // File filters
  filenameContains,
  hasFileType,
  filesLowerThan,

  // Numeric filters
  higherThan,
  higherThanOrEqual,
  lowerThan,
  lowerThanOrEqual,
  lengthIsLowerThan,
  isEvenAndWhole,

  // Select filters
  singleSelectEqual,
  singleSelectNotEqual,
  singleSelectIsAnyOf,
  singleSelectIsNoneOf,

  // Boolean
  boolean,

  // Link row filters
  linkRowHas,
  linkRowHasNot,
  linkRowContains,
  linkRowNotContains,

  // Multi-select filters
  multipleSelectHas,
  multipleSelectHasNot,

  // Collaborator filters
  multipleCollaboratorsHas,
  multipleCollaboratorsHasNot,

  // Empty/Not empty
  empty,
  notEmpty,

  // User filters
  userIs,
  userIsNot,
}

/// Represents a filter condition for querying rows
class RowFilter {
  final String field;
  final FilterOperator operator;
  final dynamic value;

  const RowFilter({
    required this.field,
    required this.operator,
    this.value,
  });

  Map<String, dynamic> toJson() {
    final operatorStr = switch (operator) {
      // Basic comparison
      FilterOperator.equal => 'equal',
      FilterOperator.notEqual => 'not_equal',

      // Date filters
      FilterOperator.dateIs => 'date_is',
      FilterOperator.dateIsNot => 'date_is_not',
      FilterOperator.dateIsBefore => 'date_is_before',
      FilterOperator.dateIsOnOrBefore => 'date_is_on_or_before',
      FilterOperator.dateIsAfter => 'date_is_after',
      FilterOperator.dateIsOnOrAfter => 'date_is_on_or_after',
      FilterOperator.dateIsWithin => 'date_is_within',
      FilterOperator.dateEqualsDayOfMonth => 'date_equals_day_of_month',

      // Value comparison
      FilterOperator.hasEmptyValue => 'has_empty_value',
      FilterOperator.hasNotEmptyValue => 'has_not_empty_value',
      FilterOperator.hasValueEqual => 'has_value_equal',
      FilterOperator.hasNotValueEqual => 'has_not_value_equal',
      FilterOperator.hasValueContains => 'has_value_contains',
      FilterOperator.hasNotValueContains => 'has_not_value_contains',
      FilterOperator.hasValueContainsWord => 'has_value_contains_word',
      FilterOperator.hasNotValueContainsWord => 'has_not_value_contains_word',
      FilterOperator.hasValueLengthIsLowerThan =>
        'has_value_length_is_lower_than',
      FilterOperator.hasAllValuesEqual => 'has_all_values_equal',

      // Text filters
      FilterOperator.contains => 'contains',
      FilterOperator.containsNot => 'contains_not',
      FilterOperator.containsWord => 'contains_word',
      FilterOperator.doesntContainWord => 'doesnt_contain_word',

      // File filters
      FilterOperator.filenameContains => 'filename_contains',
      FilterOperator.hasFileType => 'has_file_type',
      FilterOperator.filesLowerThan => 'files_lower_than',

      // Numeric filters
      FilterOperator.higherThan => 'higher_than',
      FilterOperator.higherThanOrEqual => 'higher_than_or_equal',
      FilterOperator.lowerThan => 'lower_than',
      FilterOperator.lowerThanOrEqual => 'lower_than_or_equal',
      FilterOperator.lengthIsLowerThan => 'length_is_lower_than',
      FilterOperator.isEvenAndWhole => 'is_even_and_whole',

      // Select filters
      FilterOperator.singleSelectEqual => 'single_select_equal',
      FilterOperator.singleSelectNotEqual => 'single_select_not_equal',
      FilterOperator.singleSelectIsAnyOf => 'single_select_is_any_of',
      FilterOperator.singleSelectIsNoneOf => 'single_select_is_none_of',

      // Boolean
      FilterOperator.boolean => 'boolean',

      // Link row filters
      FilterOperator.linkRowHas => 'link_row_has',
      FilterOperator.linkRowHasNot => 'link_row_has_not',
      FilterOperator.linkRowContains => 'link_row_contains',
      FilterOperator.linkRowNotContains => 'link_row_not_contains',

      // Multi-select filters
      FilterOperator.multipleSelectHas => 'multiple_select_has',
      FilterOperator.multipleSelectHasNot => 'multiple_select_has_not',

      // Collaborator filters
      FilterOperator.multipleCollaboratorsHas => 'multiple_collaborators_has',
      FilterOperator.multipleCollaboratorsHasNot =>
        'multiple_collaborators_has_not',

      // Empty/Not empty
      FilterOperator.empty => 'empty',
      FilterOperator.notEmpty => 'not_empty',

      // User filters
      FilterOperator.userIs => 'user_is',
      FilterOperator.userIsNot => 'user_is_not',
    };

    return {
      'field': field,
      'type': operatorStr,
      if (value != null) 'value': value,
    };
  }
}

/// Options for listing rows
class ListRowsOptions {
  /// The page number to fetch (1-based)
  final int? page;

  /// The number of rows per page
  final int? size;

  /// The field to order by
  final String? orderBy;

  /// Whether to order in descending order
  final bool? descending;

  /// Filters to apply
  final List<RowFilter>? filters;

  /// Whether to include field metadata
  final bool includeFieldMetadata;

  /// Optional view ID to scope the request to a particular view
  final int? viewId;

  /// Whether to use human-readable field names instead of field_123 format
  final bool userFieldNames;

  const ListRowsOptions({
    this.page,
    this.size,
    this.orderBy,
    this.descending,
    this.filters,
    this.includeFieldMetadata = false,
    this.viewId,
    this.userFieldNames = false,
  });

  Map<String, String> toQueryParameters() {
    final params = <String, String>{};
    if (page != null) params['page'] = page.toString();
    if (size != null) params['size'] = size.toString();
    if (orderBy != null) {
      params['order_by'] = descending == true ? '-$orderBy' : orderBy as String;
    }
    if (filters != null && filters!.isNotEmpty) {
      params['filters'] = jsonEncode(filters!.map((f) => f.toJson()).toList());
    }
    if (includeFieldMetadata) params['include'] = 'field_metadata';
    if (viewId != null) params['view_id'] = viewId.toString();
    if (userFieldNames) params['user_field_names'] = userFieldNames.toString();
    return params;
  }
}

/// Response from listing rows
class RowsResponse {
  final int count;
  final String? next;
  final String? previous;
  final List<Row> results;

  RowsResponse({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  factory RowsResponse.fromJson(Map<String, dynamic> json) {
    final count = json['count'];
    if (count == null) {
      throw FormatException('Missing required field: count');
    }

    final countValue =
        count is String ? int.parse(count) : (count as num).toInt();
    final next = json['next'] as String?;
    final previous = json['previous'] as String?;
    final resultsList = json['results'];
    if (resultsList == null || resultsList is! List) {
      throw FormatException('Missing or invalid field: results');
    }

    final results = resultsList.map((row) {
      if (row is! Map<String, dynamic>) {
        throw FormatException('Invalid row format in results');
      }
      return Row.fromJson(row);
    }).toList();

    return RowsResponse(
      count: countValue,
      next: next,
      previous: previous,
      results: results,
    );
  }
}

/// Represents a row in a Baserow table
class Row {
  final int id;
  final int order;
  final Map<String, dynamic> fields;

  Row({
    required this.id,
    required this.order,
    required this.fields,
  });

  factory Row.fromJson(Map<String, dynamic> json) {
    // Handle the order field which can be numeric or non-numeric
    var order = json['order'];
    int orderValue;
    if (order is num) {
      orderValue = order.toInt();
    } else if (order is String) {
      // Try to parse as integer, default to 0 if not possible
      try {
        orderValue = int.parse(order);
      } catch (e) {
        orderValue = 0;
      }
    } else {
      orderValue = 0;
    }

    // Extract all fields except id and order
    final fields = Map<String, dynamic>.fromEntries(
      json.entries.where((entry) => entry.key != 'id' && entry.key != 'order'),
    );

    final id = json['id'];
    if (id == null) {
      throw FormatException('Missing required field: id');
    }

    final idValue = id is String ? int.parse(id) : (id as num).toInt();

    return Row(
      id: idValue,
      order: orderValue,
      fields: fields,
    );
  }

  Map<String, dynamic> toJson() {
    // Create a new map with id and order
    final result = <String, dynamic>{
      'id': id,
      'order': order,
    };

    // Add all fields at root level, ensuring values are properly typed
    fields.forEach((key, value) {
      result[key] = value;
    });

    return result;
  }
}
