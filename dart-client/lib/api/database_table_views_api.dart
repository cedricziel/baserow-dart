//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class DatabaseTableViewsApi {
  DatabaseTableViewsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Returns ICal feed for a specific Calendar view identified by ical_slug value. Calendar View resource contains full url in .ical_feed_url field.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] icalSlug (required):
  ///   ICal feed unique slug.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<Response> calendarIcalFeedWithHttpInfo(String icalSlug, { String? clientSessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/calendar/{ical_slug}.ics'
      .replaceAll('{ical_slug}', icalSlug);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Returns ICal feed for a specific Calendar view identified by ical_slug value. Calendar View resource contains full url in .ical_feed_url field.
  ///
  /// Parameters:
  ///
  /// * [String] icalSlug (required):
  ///   ICal feed unique slug.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  Future<MultipartFile?> calendarIcalFeed(String icalSlug, { String? clientSessionId, }) async {
    final response = await calendarIcalFeedWithHttpInfo(icalSlug,  clientSessionId: clientSessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Creates a new view for the table related to the provided `table_id` parameter. Depending on the type, different properties can optionally be set.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Creates a view for the table related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [String] include:
  ///   A comma separated list of extra attributes to include on each view in the response. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively.
  ///
  /// * [ViewCreateView] viewCreateView:
  Future<Response> createDatabaseTableViewWithHttpInfo(int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, String? include, ViewCreateView? viewCreateView, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/table/{table_id}/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = viewCreateView;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (include != null) {
      queryParams.addAll(_queryParams('', 'include', include));
    }

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates a new view for the table related to the provided `table_id` parameter. Depending on the type, different properties can optionally be set.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Creates a view for the table related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [String] include:
  ///   A comma separated list of extra attributes to include on each view in the response. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively.
  ///
  /// * [ViewCreateView] viewCreateView:
  Future<ViewView?> createDatabaseTableView(int tableId, { String? clientSessionId, String? clientUndoRedoActionGroupId, String? include, ViewCreateView? viewCreateView, }) async {
    final response = await createDatabaseTableViewWithHttpInfo(tableId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, include: include, viewCreateView: viewCreateView, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewView',) as ViewView;
    
    }
    return null;
  }

  /// If the view is publicly shared or if an authenticated user has access to the related workspace, then this endpoint can be used to do a value lookup of the link row fields that are included in the view. Normally it is not possible for a not authenticated visitor to fetch the rows of a table. This endpoint makes it possible to fetch the id and primary field value of the related table of a link row included in the view.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   The field id of the link row field.
  ///
  /// * [String] slug (required):
  ///   The slug related to the view.
  ///
  /// * [String] search:
  ///   If provided only rows with data that matches the search query are going to be returned.
  ///
  /// * [String] searchMode:
  ///   If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
  Future<Response> databaseTablePublicViewLinkRowFieldLookupWithHttpInfo(int fieldId, String slug, { String? search, String? searchMode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{slug}/link-row-field-lookup/{field_id}/'
      .replaceAll('{field_id}', fieldId.toString())
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (searchMode != null) {
      queryParams.addAll(_queryParams('', 'search_mode', searchMode));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// If the view is publicly shared or if an authenticated user has access to the related workspace, then this endpoint can be used to do a value lookup of the link row fields that are included in the view. Normally it is not possible for a not authenticated visitor to fetch the rows of a table. This endpoint makes it possible to fetch the id and primary field value of the related table of a link row included in the view.
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   The field id of the link row field.
  ///
  /// * [String] slug (required):
  ///   The slug related to the view.
  ///
  /// * [String] search:
  ///   If provided only rows with data that matches the search query are going to be returned.
  ///
  /// * [String] searchMode:
  ///   If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
  Future<PaginationSerializerLinkRowValue?> databaseTablePublicViewLinkRowFieldLookup(int fieldId, String slug, { String? search, String? searchMode, }) async {
    final response = await databaseTablePublicViewLinkRowFieldLookupWithHttpInfo(fieldId, slug,  search: search, searchMode: searchMode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerLinkRowValue',) as PaginationSerializerLinkRowValue;
    
    }
    return null;
  }

  /// Deletes the existing view. Note that all the related settings of the view are going to be deleted also. The data stays intact after deleting the view because this is related to the table and not the view.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Deletes the view related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> deleteDatabaseTableViewWithHttpInfo(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes the existing view. Note that all the related settings of the view are going to be deleted also. The data stays intact after deleting the view because this is related to the table and not the view.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Deletes the view related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<void> deleteDatabaseTableView(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await deleteDatabaseTableViewWithHttpInfo(viewId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Duplicates an existing view if the user has access to it. When a view is duplicated everything is copied except: - The name is appended with the copy number. Ex: `ViewName`->`ViewName(2)` and `View(2)`->`View(3)` - If the original view is publicly shared, the new view will not be shared anymore
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Duplicates the view related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> duplicateDatabaseTableViewWithHttpInfo(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/duplicate/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Duplicates an existing view if the user has access to it. When a view is duplicated everything is copied except: - The name is appended with the copy number. Ex: `ViewName`->`ViewName(2)` and `View(2)`->`View(3)` - If the original view is publicly shared, the new view will not be shared anymore
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Duplicates the view related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<ViewView?> duplicateDatabaseTableView(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await duplicateDatabaseTableViewWithHttpInfo(viewId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewView',) as ViewView;
    
    }
    return null;
  }

  /// Returns the existing view. Depending on the type different properties could be returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns the view related to the provided value.
  ///
  /// * [String] include:
  ///   A comma separated list of extra attributes to include on the returned view. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively.
  Future<Response> getDatabaseTableViewWithHttpInfo(int viewId, { String? include, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (include != null) {
      queryParams.addAll(_queryParams('', 'include', include));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Returns the existing view. Depending on the type different properties could be returned.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns the view related to the provided value.
  ///
  /// * [String] include:
  ///   A comma separated list of extra attributes to include on the returned view. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively.
  Future<ViewView?> getDatabaseTableView(int viewId, { String? include, }) async {
    final response = await getDatabaseTableViewWithHttpInfo(viewId,  include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewView',) as ViewView;
    
    }
    return null;
  }

  /// Responds with the fields options of the provided view if the authenticated user has access to the related workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Responds with field options related to the provided value.
  Future<Response> getDatabaseTableViewFieldOptionsWithHttpInfo(int viewId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/field-options/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Responds with the fields options of the provided view if the authenticated user has access to the related workspace.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Responds with field options related to the provided value.
  Future<ViewFieldOptions?> getDatabaseTableViewFieldOptions(int viewId,) async {
    final response = await getDatabaseTableViewFieldOptionsWithHttpInfo(viewId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewFieldOptions',) as ViewFieldOptions;
    
    }
    return null;
  }

  /// Returns the required public information to display a single shared view.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug of the view to get public information about.
  Future<Response> getPublicViewInfoWithHttpInfo(String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{slug}/public/info/'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Returns the required public information to display a single shared view.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug of the view to get public information about.
  Future<PublicViewInfo?> getPublicViewInfo(String slug,) async {
    final response = await getPublicViewInfoWithHttpInfo(slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PublicViewInfo',) as PublicViewInfo;
    
    }
    return null;
  }

  /// Lists all views of the table related to the provided `table_id`. If the workspace is related to a template, then this endpoint will be publicly accessible. A table can have multiple views. Each view can display the data in a different way. For example the `grid` view shows the in a spreadsheet like way. That type has custom endpoints for data retrieval and manipulation. In the future other views types like a calendar or Kanban are going to be added. Each type can have different properties.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Returns only views of the table related to the provided value.
  ///
  /// * [String] include:
  ///   A comma separated list of extra attributes to include on each view in the response. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively.
  ///
  /// * [int] limit:
  ///   The maximum amount of views that must be returned. This endpoint doesn't support pagination, but if you for example just need to fetch the first view, you can do that by setting a limit. There isn't a limit by default.
  ///
  /// * [String] type:
  ///   Optionally filter on the view type. If provided, only views of that type will be returned.
  Future<Response> listDatabaseTableViewsWithHttpInfo(int tableId, { String? include, int? limit, String? type, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/table/{table_id}/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (include != null) {
      queryParams.addAll(_queryParams('', 'include', include));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Lists all views of the table related to the provided `table_id`. If the workspace is related to a template, then this endpoint will be publicly accessible. A table can have multiple views. Each view can display the data in a different way. For example the `grid` view shows the in a spreadsheet like way. That type has custom endpoints for data retrieval and manipulation. In the future other views types like a calendar or Kanban are going to be added. Each type can have different properties.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Returns only views of the table related to the provided value.
  ///
  /// * [String] include:
  ///   A comma separated list of extra attributes to include on each view in the response. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively.
  ///
  /// * [int] limit:
  ///   The maximum amount of views that must be returned. This endpoint doesn't support pagination, but if you for example just need to fetch the first view, you can do that by setting a limit. There isn't a limit by default.
  ///
  /// * [String] type:
  ///   Optionally filter on the view type. If provided, only views of that type will be returned.
  Future<List<ViewView>?> listDatabaseTableViews(int tableId, { String? include, int? limit, String? type, }) async {
    final response = await listDatabaseTableViewsWithHttpInfo(tableId,  include: include, limit: limit, type: type, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ViewView>') as List)
        .cast<ViewView>()
        .toList(growable: false);

    }
    return null;
  }

  /// Changes the order of the provided view ids to the matching position that the id has in the list. The order of the not provided views will be set to `0`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Updates the order of the views in the table related to the provided value.
  ///
  /// * [OrderViews] orderViews (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> orderDatabaseTableViewsWithHttpInfo(int tableId, OrderViews orderViews, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/table/{table_id}/order/'
      .replaceAll('{table_id}', tableId.toString());

    // ignore: prefer_final_locals
    Object? postBody = orderViews;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Changes the order of the provided view ids to the matching position that the id has in the list. The order of the not provided views will be set to `0`.
  ///
  /// Parameters:
  ///
  /// * [int] tableId (required):
  ///   Updates the order of the views in the table related to the provided value.
  ///
  /// * [OrderViews] orderViews (required):
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<void> orderDatabaseTableViews(int tableId, OrderViews orderViews, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await orderDatabaseTableViewsWithHttpInfo(tableId, orderViews,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sets view attributes only available for premium users.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Sets show_logo of this view.
  ///
  /// * [PatchedUpdatePremiumViewAttributes] patchedUpdatePremiumViewAttributes:
  Future<Response> premiumViewAttributesUpdateWithHttpInfo(int viewId, { PatchedUpdatePremiumViewAttributes? patchedUpdatePremiumViewAttributes, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/view/{view_id}/premium'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedUpdatePremiumViewAttributes;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Sets view attributes only available for premium users.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Sets show_logo of this view.
  ///
  /// * [PatchedUpdatePremiumViewAttributes] patchedUpdatePremiumViewAttributes:
  Future<View?> premiumViewAttributesUpdate(int viewId, { PatchedUpdatePremiumViewAttributes? patchedUpdatePremiumViewAttributes, }) async {
    final response = await premiumViewAttributesUpdateWithHttpInfo(viewId,  patchedUpdatePremiumViewAttributes: patchedUpdatePremiumViewAttributes, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'View',) as View;
    
    }
    return null;
  }

  /// Returns a valid never-expiring JWT token for this public shared view if the password provided matches with the one saved by the view's owner.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug of the grid view to get public information about.
  ///
  /// * [PublicViewAuthRequest] publicViewAuthRequest (required):
  Future<Response> publicViewTokenAuthWithHttpInfo(String slug, PublicViewAuthRequest publicViewAuthRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{slug}/public/auth/'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = publicViewAuthRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Returns a valid never-expiring JWT token for this public shared view if the password provided matches with the one saved by the view's owner.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   The slug of the grid view to get public information about.
  ///
  /// * [PublicViewAuthRequest] publicViewAuthRequest (required):
  Future<PublicViewAuthResponse?> publicViewTokenAuth(String slug, PublicViewAuthRequest publicViewAuthRequest,) async {
    final response = await publicViewTokenAuthWithHttpInfo(slug, publicViewAuthRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PublicViewAuthResponse',) as PublicViewAuthResponse;
    
    }
    return null;
  }

  /// Rotates the unique slug of the calendar view's ical feed by replacing it with a new value. This would mean that the publicly shared URL of the view will change. Anyone with the old URL won't be able to access the view anymore.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Rotates the ical feed slug of the calendar view related to the provided id.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> rotateCalendarViewIcalFeedSlugWithHttpInfo(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/calendar/{view_id}/ical_slug_rotate/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Rotates the unique slug of the calendar view's ical feed by replacing it with a new value. This would mean that the publicly shared URL of the view will change. Anyone with the old URL won't be able to access the view anymore.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Rotates the ical feed slug of the calendar view related to the provided id.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<ViewView?> rotateCalendarViewIcalFeedSlug(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await rotateCalendarViewIcalFeedSlugWithHttpInfo(viewId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewView',) as ViewView;
    
    }
    return null;
  }

  /// Rotates the unique slug of the view by replacing it with a new value. This would mean that the publicly shared URL of the view will change. Anyone with the old URL won't be able to access the viewanymore. Only view types which are sharable can have their slugs rotated.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Rotates the slug of the view related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<Response> rotateDatabaseViewSlugWithHttpInfo(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/rotate-slug/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Rotates the unique slug of the view by replacing it with a new value. This would mean that the publicly shared URL of the view will change. Anyone with the old URL won't be able to access the viewanymore. Only view types which are sharable can have their slugs rotated.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Rotates the slug of the view related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  Future<ViewView?> rotateDatabaseViewSlug(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, }) async {
    final response = await rotateDatabaseViewSlugWithHttpInfo(viewId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewView',) as ViewView;
    
    }
    return null;
  }

  /// Updates the existing view. The type cannot be changed. It depends on the existing type which properties can be changed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Updates the view related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [String] include:
  ///   A comma separated list of extra attributes to include on the returned view. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively.
  ///
  /// * [PatchedViewUpdateView] patchedViewUpdateView:
  Future<Response> updateDatabaseTableViewWithHttpInfo(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, String? include, PatchedViewUpdateView? patchedViewUpdateView, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedViewUpdateView;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (include != null) {
      queryParams.addAll(_queryParams('', 'include', include));
    }

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Updates the existing view. The type cannot be changed. It depends on the existing type which properties can be changed.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Updates the view related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [String] include:
  ///   A comma separated list of extra attributes to include on the returned view. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively.
  ///
  /// * [PatchedViewUpdateView] patchedViewUpdateView:
  Future<ViewView?> updateDatabaseTableView(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, String? include, PatchedViewUpdateView? patchedViewUpdateView, }) async {
    final response = await updateDatabaseTableViewWithHttpInfo(viewId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, include: include, patchedViewUpdateView: patchedViewUpdateView, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewView',) as ViewView;
    
    }
    return null;
  }

  /// Updates the field options of a view. The field options differ per field type  This could for example be used to update the field width of a `grid` view if the user changes it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Updates the field options related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedViewFieldOptions] patchedViewFieldOptions:
  Future<Response> updateDatabaseTableViewFieldOptionsWithHttpInfo(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedViewFieldOptions? patchedViewFieldOptions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/{view_id}/field-options/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedViewFieldOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (clientSessionId != null) {
      headerParams[r'ClientSessionId'] = parameterToString(clientSessionId);
    }
    if (clientUndoRedoActionGroupId != null) {
      headerParams[r'ClientUndoRedoActionGroupId'] = parameterToString(clientUndoRedoActionGroupId);
    }

    const contentTypes = <String>['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Updates the field options of a view. The field options differ per field type  This could for example be used to update the field width of a `grid` view if the user changes it.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Updates the field options related to the provided value.
  ///
  /// * [String] clientSessionId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
  ///
  /// * [String] clientUndoRedoActionGroupId:
  ///   An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
  ///
  /// * [PatchedViewFieldOptions] patchedViewFieldOptions:
  Future<ViewFieldOptions?> updateDatabaseTableViewFieldOptions(int viewId, { String? clientSessionId, String? clientUndoRedoActionGroupId, PatchedViewFieldOptions? patchedViewFieldOptions, }) async {
    final response = await updateDatabaseTableViewFieldOptionsWithHttpInfo(viewId,  clientSessionId: clientSessionId, clientUndoRedoActionGroupId: clientUndoRedoActionGroupId, patchedViewFieldOptions: patchedViewFieldOptions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ViewFieldOptions',) as ViewFieldOptions;
    
    }
    return null;
  }
}
