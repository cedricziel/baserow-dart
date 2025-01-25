/// Represents a view in Baserow
class View {
  /// The unique identifier of the view
  final int id;

  /// The name of the view
  final String name;

  /// The type of view (grid, gallery, form, kanban, calendar, timeline)
  final String type;

  /// The ownership type of the view (collaborative by default)
  final String ownershipType;

  /// The filter type (AND/OR) for the view's filters
  final String? filterType;

  /// Whether filters are disabled for this view
  final bool? filtersDisabled;

  /// The type of row identifier
  final String? rowIdentifierType;

  /// Whether the view is publicly accessible
  final bool? public;

  /// The unique slug for public URL access
  final String slug;

  View({
    required this.id,
    required this.name,
    required this.type,
    required this.ownershipType,
    required this.slug,
    this.filterType,
    this.filtersDisabled,
    this.rowIdentifierType,
    this.public,
  });

  /// Creates a View instance from JSON data
  factory View.fromJson(Map<String, dynamic> json) {
    return View(
      id: json['id'] as int,
      name: json['name'] as String,
      type: json['type'] as String,
      ownershipType: json['ownership_type'] as String,
      slug: json['slug'] as String,
      filterType: json['filter_type'] as String?,
      filtersDisabled: json['filters_disabled'] as bool?,
      rowIdentifierType: json['row_identifier_type'] as String?,
      public: json['public'] as bool?,
    );
  }

  /// Converts the View instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'ownership_type': ownershipType,
      'slug': slug,
      if (filterType != null) 'filter_type': filterType,
      if (filtersDisabled != null) 'filters_disabled': filtersDisabled,
      if (rowIdentifierType != null) 'row_identifier_type': rowIdentifierType,
      if (public != null) 'public': public,
    };
  }
}
