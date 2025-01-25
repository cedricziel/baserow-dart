//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for DatabaseTableViewsApi
void main() {
  // final instance = DatabaseTableViewsApi();

  group('tests for DatabaseTableViewsApi', () {
    // Returns ICal feed for a specific Calendar view identified by ical_slug value. Calendar View resource contains full url in .ical_feed_url field.
    //
    //Future<MultipartFile> calendarIcalFeed(String icalSlug, { String clientSessionId }) async
    test('test calendarIcalFeed', () async {
      // TODO
    });

    // Creates a new view for the table related to the provided `table_id` parameter. Depending on the type, different properties can optionally be set.
    //
    //Future<ViewView> createDatabaseTableView(int tableId, { String clientSessionId, String clientUndoRedoActionGroupId, String include, ViewCreateView viewCreateView }) async
    test('test createDatabaseTableView', () async {
      // TODO
    });

    // If the view is publicly shared or if an authenticated user has access to the related workspace, then this endpoint can be used to do a value lookup of the link row fields that are included in the view. Normally it is not possible for a not authenticated visitor to fetch the rows of a table. This endpoint makes it possible to fetch the id and primary field value of the related table of a link row included in the view.
    //
    //Future<PaginationSerializerLinkRowValue> databaseTablePublicViewLinkRowFieldLookup(int fieldId, String slug, { String search, String searchMode }) async
    test('test databaseTablePublicViewLinkRowFieldLookup', () async {
      // TODO
    });

    // Deletes the existing view. Note that all the related settings of the view are going to be deleted also. The data stays intact after deleting the view because this is related to the table and not the view.
    //
    //Future deleteDatabaseTableView(int viewId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test deleteDatabaseTableView', () async {
      // TODO
    });

    // Duplicates an existing view if the user has access to it. When a view is duplicated everything is copied except: - The name is appended with the copy number. Ex: `ViewName`->`ViewName(2)` and `View(2)`->`View(3)` - If the original view is publicly shared, the new view will not be shared anymore
    //
    //Future<ViewView> duplicateDatabaseTableView(int viewId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test duplicateDatabaseTableView', () async {
      // TODO
    });

    // Returns the existing view. Depending on the type different properties could be returned.
    //
    //Future<ViewView> getDatabaseTableView(int viewId, { String include }) async
    test('test getDatabaseTableView', () async {
      // TODO
    });

    // Responds with the fields options of the provided view if the authenticated user has access to the related workspace.
    //
    //Future<ViewFieldOptions> getDatabaseTableViewFieldOptions(int viewId) async
    test('test getDatabaseTableViewFieldOptions', () async {
      // TODO
    });

    // Returns the required public information to display a single shared view.
    //
    //Future<PublicViewInfo> getPublicViewInfo(String slug) async
    test('test getPublicViewInfo', () async {
      // TODO
    });

    // Lists all views of the table related to the provided `table_id`. If the workspace is related to a template, then this endpoint will be publicly accessible. A table can have multiple views. Each view can display the data in a different way. For example the `grid` view shows the in a spreadsheet like way. That type has custom endpoints for data retrieval and manipulation. In the future other views types like a calendar or Kanban are going to be added. Each type can have different properties.
    //
    //Future<List<ViewView>> listDatabaseTableViews(int tableId, { String include, int limit, String type }) async
    test('test listDatabaseTableViews', () async {
      // TODO
    });

    // Changes the order of the provided view ids to the matching position that the id has in the list. The order of the not provided views will be set to `0`.
    //
    //Future orderDatabaseTableViews(int tableId, OrderViews orderViews, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test orderDatabaseTableViews', () async {
      // TODO
    });

    // Sets view attributes only available for premium users.
    //
    //Future<View> premiumViewAttributesUpdate(int viewId, { PatchedUpdatePremiumViewAttributes patchedUpdatePremiumViewAttributes }) async
    test('test premiumViewAttributesUpdate', () async {
      // TODO
    });

    // Returns a valid never-expiring JWT token for this public shared view if the password provided matches with the one saved by the view's owner.
    //
    //Future<PublicViewAuthResponse> publicViewTokenAuth(String slug, PublicViewAuthRequest publicViewAuthRequest) async
    test('test publicViewTokenAuth', () async {
      // TODO
    });

    // Rotates the unique slug of the calendar view's ical feed by replacing it with a new value. This would mean that the publicly shared URL of the view will change. Anyone with the old URL won't be able to access the view anymore.
    //
    //Future<ViewView> rotateCalendarViewIcalFeedSlug(int viewId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test rotateCalendarViewIcalFeedSlug', () async {
      // TODO
    });

    // Rotates the unique slug of the view by replacing it with a new value. This would mean that the publicly shared URL of the view will change. Anyone with the old URL won't be able to access the viewanymore. Only view types which are sharable can have their slugs rotated.
    //
    //Future<ViewView> rotateDatabaseViewSlug(int viewId, { String clientSessionId, String clientUndoRedoActionGroupId }) async
    test('test rotateDatabaseViewSlug', () async {
      // TODO
    });

    // Updates the existing view. The type cannot be changed. It depends on the existing type which properties can be changed.
    //
    //Future<ViewView> updateDatabaseTableView(int viewId, { String clientSessionId, String clientUndoRedoActionGroupId, String include, PatchedViewUpdateView patchedViewUpdateView }) async
    test('test updateDatabaseTableView', () async {
      // TODO
    });

    // Updates the field options of a view. The field options differ per field type  This could for example be used to update the field width of a `grid` view if the user changes it.
    //
    //Future<ViewFieldOptions> updateDatabaseTableViewFieldOptions(int viewId, { String clientSessionId, String clientUndoRedoActionGroupId, PatchedViewFieldOptions patchedViewFieldOptions }) async
    test('test updateDatabaseTableViewFieldOptions', () async {
      // TODO
    });

  });
}
