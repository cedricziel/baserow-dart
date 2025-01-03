import 'dart:convert';

/// Filter operator for querying rows
enum FilterOperator {
  equal,
  notEqual,
  greaterThan,
  greaterThanOrEqual,
  lessThan,
  lessThanOrEqual,
  contains,
  containsNot,
  hasFileType,
  isEmpty,
  isNotEmpty,
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
      FilterOperator.equal => 'equal',
      FilterOperator.notEqual => 'not_equal',
      FilterOperator.greaterThan => 'greater_than',
      FilterOperator.greaterThanOrEqual => 'greater_than_or_equal',
      FilterOperator.lessThan => 'less_than',
      FilterOperator.lessThanOrEqual => 'less_than_or_equal',
      FilterOperator.contains => 'contains',
      FilterOperator.containsNot => 'contains_not',
      FilterOperator.hasFileType => 'has_file_type',
      FilterOperator.isEmpty => 'empty',
      FilterOperator.isNotEmpty => 'not_empty',
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
