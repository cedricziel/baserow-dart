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

/// Options for listing rows in a Baserow table.
///
/// This class provides comprehensive options for querying, filtering, and customizing
/// the rows returned from a table. Key features include:
///
/// - Pagination with [page] and [size]
/// - Full-text search with [search]
/// - Advanced ordering with [orderBy]
/// - Flexible filtering with [filters] and [fieldFilters]
/// - Field selection with [include] and [exclude]
/// - Related data fetching with [linkRowJoins]
///
/// Example usage:
/// ```dart
/// final options = ListRowsOptions(
///   page: 1,
///   size: 50,
///   search: 'search term',
///   orderBy: ['-name', 'age'],  // Order by name desc, age asc
///   filters: [
///     RowFilter(
///       field: 'age',
///       operator: FilterOperator.higherThan,
///       value: 18,
///     ),
///   ],
///   fieldFilters: {
///     'status': {'equal': 'active'},
///   },
///   include: ['name', 'email'],
///   exclude: ['sensitive_data'],
///   linkRowJoins: {
///     'company': ['name', 'address'],
///   },
///   userFieldNames: true,
/// );
/// ```
class ListRowsOptions {
  /// The page number to fetch (1-based).
  ///
  /// Use this parameter in combination with [size] to implement pagination.
  /// For example, to get the first page of 50 rows:
  /// ```dart
  /// options: ListRowsOptions(page: 1, size: 50)
  /// ```
  final int? page;

  /// The number of rows per page.
  ///
  /// Controls how many rows are returned in each page. The default is 100.
  /// Use a smaller number for faster response times or a larger number
  /// to reduce the number of API calls needed.
  final int? size;

  /// Search term to filter rows.
  ///
  /// When provided, only rows containing this search term in their searchable
  /// fields will be returned. The search is case-insensitive and matches
  /// partial words.
  ///
  /// Example:
  /// ```dart
  /// options: ListRowsOptions(search: 'john doe')
  /// ```
  final String? search;

  /// Fields to order by, with optional direction prefix (+ or -).
  ///
  /// Each field can be prefixed with:
  /// - '+' for ascending order (default if no prefix)
  /// - '-' for descending order
  ///
  /// Fields containing special characters (commas, quotes) are automatically
  /// escaped. Multiple fields create a multi-level sort.
  ///
  /// Examples:
  /// ```dart
  /// // Single field descending
  /// orderBy: ['-name']
  ///
  /// // Multiple fields
  /// orderBy: ['+first_name', '-last_name', 'age']
  ///
  /// // Fields with special characters
  /// orderBy: ['First, Name', 'Last "Name"']
  /// ```
  final List<String>? orderBy;

  /// Filter type - AND requires all filters to match, OR requires any filter to match.
  ///
  /// Use 'AND' (default) to require all filters to match, or 'OR' to match any filter.
  /// This applies to both [filters] and [fieldFilters].
  ///
  /// Example:
  /// ```dart
  /// options: ListRowsOptions(
  ///   filterType: 'OR',
  ///   filters: [
  ///     RowFilter(field: 'status', operator: FilterOperator.equal, value: 'active'),
  ///     RowFilter(field: 'status', operator: FilterOperator.equal, value: 'pending'),
  ///   ],
  /// )
  /// ```
  final String filterType;

  /// Filters to apply using the JSON format.
  ///
  /// Provides a structured way to define complex filters using the [RowFilter] class.
  /// Multiple filters are combined according to [filterType].
  ///
  /// Example:
  /// ```dart
  /// options: ListRowsOptions(
  ///   filters: [
  ///     RowFilter(
  ///       field: 'age',
  ///       operator: FilterOperator.higherThan,
  ///       value: 18,
  ///     ),
  ///     RowFilter(
  ///       field: 'status',
  ///       operator: FilterOperator.equal,
  ///       value: 'active',
  ///     ),
  ///   ],
  /// )
  /// ```
  final List<RowFilter>? filters;

  /// Individual field filters in the format field__filter__type=value.
  ///
  /// An alternative to [filters] that uses a simpler map-based format.
  /// The outer map key is the field name, and the inner map defines
  /// the filter type and value.
  ///
  /// Example:
  /// ```dart
  /// options: ListRowsOptions(
  ///   fieldFilters: {
  ///     'status': {'equal': 'active'},
  ///     'age': {'greater_than': '18'},
  ///   },
  /// )
  /// ```
  final Map<String, Map<String, String>>? fieldFilters;

  /// Fields to include in the response.
  ///
  /// When specified, only these fields will be included in the response.
  /// Field names should match the format specified by [userFieldNames].
  ///
  /// Example:
  /// ```dart
  /// options: ListRowsOptions(
  ///   include: ['name', 'email', 'phone'],
  ///   userFieldNames: true,
  /// )
  /// ```
  final List<String>? include;

  /// Fields to exclude from the response.
  ///
  /// When specified, these fields will be excluded from the response.
  /// Field names should match the format specified by [userFieldNames].
  ///
  /// Example:
  /// ```dart
  /// options: ListRowsOptions(
  ///   exclude: ['sensitive_data', 'internal_notes'],
  ///   userFieldNames: true,
  /// )
  /// ```
  final List<String>? exclude;

  /// Whether to include field metadata
  final bool includeFieldMetadata;

  /// Optional view ID to scope the request to a particular view
  final int? viewId;

  /// Whether to use human-readable field names instead of field_123 format
  final bool userFieldNames;

  /// Link row field joins to include related table data.
  ///
  /// Allows fetching data from related tables through link row fields.
  /// The map key is the link row field name, and the value is a list
  /// of field names from the related table to include.
  ///
  /// Example:
  /// ```dart
  /// options: ListRowsOptions(
  ///   linkRowJoins: {
  ///     'company': ['name', 'address'],  // Get company name and address
  ///     'department': ['title'],         // Get department title
  ///   },
  ///   userFieldNames: true,
  /// )
  /// ```
  final Map<String, List<String>>? linkRowJoins;

  const ListRowsOptions({
    this.page,
    this.size,
    this.search,
    this.orderBy,
    this.filterType = 'AND',
    this.filters,
    this.fieldFilters,
    this.include,
    this.exclude,
    this.includeFieldMetadata = false,
    this.viewId,
    this.userFieldNames = false,
    this.linkRowJoins,
  });

  /// Escapes field names containing special characters for order_by parameter
  String _escapeFieldName(String field) {
    if (field.contains(',') || field.contains('"')) {
      return '"${field.replaceAll('"', '\\"')}"';
    }
    return field;
  }

  Map<String, String> toQueryParameters() {
    final params = <String, String>{};

    if (page != null) params['page'] = page.toString();
    if (size != null) params['size'] = size.toString();
    if (search != null) params['search'] = search!;

    if (orderBy != null && orderBy!.isNotEmpty) {
      params['order_by'] = orderBy!.map((field) {
        final isDesc = field.startsWith('-');
        final cleanField = field.startsWith('+') || field.startsWith('-')
            ? field.substring(1)
            : field;
        final escapedField = _escapeFieldName(cleanField);
        return isDesc ? '-$escapedField' : escapedField;
      }).join(',');
    }

    // Handle JSON filters
    if (filters != null && filters!.isNotEmpty) {
      final filterJson = filters!.length > 1
          ? {
              'filter_type': filterType,
              'filters': filters!.map((f) => f.toJson()).toList(),
            }
          : {
              'filters': filters!.map((f) => f.toJson()).toList(),
            };
      params['filters'] = jsonEncode(filterJson);
    }

    // Handle field filters
    if (fieldFilters != null && fieldFilters!.isNotEmpty) {
      fieldFilters?.forEach((field, conditions) {
        conditions.forEach((type, value) {
          params['filter__${field}__$type'] = value;
        });
      });
    }

    // Add filter_type only when there are multiple filters
    final totalFilters = (filters?.length ?? 0) + (fieldFilters?.length ?? 0);
    if (totalFilters > 1) {
      params['filter_type'] = filterType;
    }

    if (include != null && include!.isNotEmpty) {
      params['include'] = include!.map(_escapeFieldName).join(',');
    } else if (includeFieldMetadata) {
      params['include'] = 'field_metadata';
    }

    if (exclude != null && exclude!.isNotEmpty) {
      params['exclude'] = exclude!.map(_escapeFieldName).join(',');
    }

    if (viewId != null) params['view_id'] = viewId.toString();
    if (userFieldNames) params['user_field_names'] = 'true';

    // Add link row joins
    linkRowJoins?.forEach((field, joinFields) {
      params['${field}__join'] = joinFields.join(',');
    });

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
/// Options for moving a row in a Baserow table.
///
/// This class provides options for customizing how a row is moved within a table:
///
/// - Use [beforeId] to specify which row to move before
/// - Omit [beforeId] to move the row to the end of the table
/// - Control webhook triggering with [sendWebhookEvents]
/// - Use human-readable field names with [userFieldNames]
///
/// Example:
/// ```dart
/// // Move row 123 before row 456
/// final movedRow = await client.moveRow(
///   tableId,
///   123,
///   options: MoveRowOptions(
///     beforeId: 456,
///     userFieldNames: true,
///   ),
/// );
///
/// // Move row 123 to end of table
/// final movedToEnd = await client.moveRow(
///   tableId,
///   123,
/// );
/// ```
class MoveRowOptions {
  /// Whether to use human-readable field names instead of field_123 format
  final bool userFieldNames;

  /// Optional ID of the row to move before. If not specified, moves to end.
  final int? beforeId;

  /// Whether to trigger webhooks after the operation
  final bool sendWebhookEvents;

  const MoveRowOptions({
    this.userFieldNames = false,
    this.beforeId,
    this.sendWebhookEvents = true,
  });

  Map<String, String> toQueryParameters() {
    final params = <String, String>{};

    if (userFieldNames) params['user_field_names'] = 'true';
    if (beforeId != null) params['before_id'] = beforeId.toString();
    if (!sendWebhookEvents) params['send_webhook_events'] = 'false';

    return params;
  }
}

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
