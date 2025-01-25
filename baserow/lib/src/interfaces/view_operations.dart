import '../models.dart';

/// Interface for view related operations in Baserow
abstract class ViewOperations {
  /// Creates a new view for a table
  ///
  /// [tableId] is the ID of the table to create the view for
  /// [name] is the name of the view (required, max 255 chars)
  /// [type] is the type of view to create (grid, gallery, form, kanban, calendar, timeline)
  /// [ownershipType] Optional ownership type (defaults to 'collaborative')
  /// [filterType] Optional filter type (AND/OR)
  /// [filtersDisabled] Optional flag to disable filters
  /// [rowIdentifierType] Optional row identifier type
  /// [public] Optional flag to make the view public
  ///
  /// Returns the created view
  /// Throws [BaserowException] if the view creation fails or the user doesn't have access
  Future<View> createView(
    int tableId, {
    required String name,
    required String type,
    String? ownershipType,
    String? filterType,
    bool? filtersDisabled,
    String? rowIdentifierType,
    bool? public,
  });

  /// Lists all views for a table
  ///
  /// [tableId] is the ID of the table to list views for
  /// [type] Optional filter to only return views of a specific type
  /// [include] Optional comma-separated list of extra attributes to include (filters, sortings, decorations)
  Future<List<View>> listViews(
    int tableId, {
    String? type,
    String? include,
  });

  /// Gets a view by its ID
  ///
  /// [viewId] is the ID of the view to retrieve
  Future<View> getView(int viewId);

  /// Updates a view
  ///
  /// [viewId] is the ID of the view to update
  /// [name] Optional new name for the view
  /// [filterType] Optional new filter type
  /// [filtersDisabled] Optional flag to disable/enable filters
  /// [public] Optional flag to make the view public/private
  ///
  /// Returns the updated view
  Future<View> updateView(
    int viewId, {
    String? name,
    String? filterType,
    bool? filtersDisabled,
    bool? public,
  });

  /// Deletes a view
  ///
  /// [viewId] is the ID of the view to delete
  Future<void> deleteView(int viewId);
}
