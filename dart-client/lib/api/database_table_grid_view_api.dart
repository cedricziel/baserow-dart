//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class DatabaseTableGridViewApi {
  DatabaseTableGridViewApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Lists only the rows and fields that match the request. Only the rows with the ids that are in the `row_ids` list are going to be returned. Same goes for the fields, only the fields with the ids in the `field_ids` are going to be returned. This endpoint could be used to refresh data after changes something. For example in the web frontend after changing a field type, the data of the related cells will be refreshed using this endpoint. In the example all field types are listed, but normally  the number in field_{id} key is going to be the id of the field. The value is what the user has provided and the format of it depends on the fields type.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns only rows that belong to the related view's table.
  ///
  /// * [GridViewFilter] gridViewFilter (required):
  Future<Response> filterDatabaseTableGridViewRowsWithHttpInfo(int viewId, GridViewFilter gridViewFilter,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/grid/{view_id}/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody = gridViewFilter;

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

  /// Lists only the rows and fields that match the request. Only the rows with the ids that are in the `row_ids` list are going to be returned. Same goes for the fields, only the fields with the ids in the `field_ids` are going to be returned. This endpoint could be used to refresh data after changes something. For example in the web frontend after changing a field type, the data of the related cells will be refreshed using this endpoint. In the example all field types are listed, but normally  the number in field_{id} key is going to be the id of the field. The value is what the user has provided and the format of it depends on the fields type.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns only rows that belong to the related view's table.
  ///
  /// * [GridViewFilter] gridViewFilter (required):
  Future<List<ExampleRowResponse>?> filterDatabaseTableGridViewRows(int viewId, GridViewFilter gridViewFilter,) async {
    final response = await filterDatabaseTableGridViewRowsWithHttpInfo(viewId, gridViewFilter,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ExampleRowResponse>') as List)
        .cast<ExampleRowResponse>()
        .toList(growable: false);

    }
    return null;
  }

  /// Computes the aggregation of all the values for a specified field from the selected grid view. You must select the aggregation type by setting the `type` GET parameter. If filters are configured for the selected view, the aggregation is calculated only on filtered rows. You need to have read permissions on the view to request an aggregation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   The field id you want to aggregate
  ///
  /// * [int] viewId (required):
  ///   Select the view you want the aggregation for.
  ///
  /// * [String] include:
  ///   if `include` is set to `total`, the total row count will be returned with the result.
  ///
  /// * [String] type:
  ///   The aggregation type you want. Available aggregation types: empty_count, not_empty_count, unique_count, min, max, sum, average, median, decile, variance, std_dev
  Future<Response> getDatabaseTableGridViewFieldAggregationWithHttpInfo(int fieldId, int viewId, { String? include, String? type, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/grid/{view_id}/aggregation/{field_id}/'
      .replaceAll('{field_id}', fieldId.toString())
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (include != null) {
      queryParams.addAll(_queryParams('', 'include', include));
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

  /// Computes the aggregation of all the values for a specified field from the selected grid view. You must select the aggregation type by setting the `type` GET parameter. If filters are configured for the selected view, the aggregation is calculated only on filtered rows. You need to have read permissions on the view to request an aggregation.
  ///
  /// Parameters:
  ///
  /// * [int] fieldId (required):
  ///   The field id you want to aggregate
  ///
  /// * [int] viewId (required):
  ///   Select the view you want the aggregation for.
  ///
  /// * [String] include:
  ///   if `include` is set to `total`, the total row count will be returned with the result.
  ///
  /// * [String] type:
  ///   The aggregation type you want. Available aggregation types: empty_count, not_empty_count, unique_count, min, max, sum, average, median, decile, variance, std_dev
  Future<GetDatabaseTableGridViewFieldAggregation200Response?> getDatabaseTableGridViewFieldAggregation(int fieldId, int viewId, { String? include, String? type, }) async {
    final response = await getDatabaseTableGridViewFieldAggregationWithHttpInfo(fieldId, viewId,  include: include, type: type, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetDatabaseTableGridViewFieldAggregation200Response',) as GetDatabaseTableGridViewFieldAggregation200Response;
    
    }
    return null;
  }

  /// Returns all field aggregations values previously defined for this grid view. If filters exist for this view, the aggregations are computed only on filtered rows.You need to have read permissions on the view to request aggregations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Select the view you want the aggregations for.
  ///
  /// * [String] filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket:
  ///   The aggregation can optionally be filtered by the same view filters available for the views. Multiple filters can be provided if they follow the same format. The field and filter variable indicate how to filter and the value indicates where to filter on.  For example if you provide the following GET parameter `filter__field_1__equal=test` then only rows where the value of field_1 is equal to test are going to be returned.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**     **Please note that by passing the filter parameters the view filters saved for the view itself will be ignored.**
  ///
  /// * [String] filterType:
  ///   `AND`: Indicates that the aggregated rows must match all the provided filters.  `OR`: Indicates that the aggregated rows only have to match one of the filters.  
  ///
  /// * [String] filters:
  ///   A JSON serialized string containing the filter tree to apply for the aggregation. The filter tree is a nested structure containing the filters that need to be applied.   An example of a valid filter tree is the following:`{\"filter_type\": \"AND\", \"filters\": [{\"field\": 1, \"type\": \"equal\", \"value\": \"test\"}]}`. The `field` value must be the ID of the field to filter on, or the name of the field if `user_field_names` is true.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if this parameter is provided, all other `filter__{field}__{filter}` will be ignored, as well as the `filter_type` parameter.**  **Please note that by passing the filters parameter the view filters saved for the view itself will be ignored.**
  ///
  /// * [String] include:
  ///   if `include` is set to `total`, the total row count will be returned with the result.
  ///
  /// * [String] search:
  ///   If provided the aggregations are calculated only for matching rows.
  ///
  /// * [String] searchMode:
  ///   If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
  Future<Response> getDatabaseTableGridViewFieldAggregationsWithHttpInfo(int viewId, { String? filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String? filterType, String? filters, String? include, String? search, String? searchMode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/grid/{view_id}/aggregations/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket != null) {
      queryParams.addAll(_queryParams('', 'filter__{field}__{filter}', filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket));
    }
    if (filterType != null) {
      queryParams.addAll(_queryParams('', 'filter_type', filterType));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (include != null) {
      queryParams.addAll(_queryParams('', 'include', include));
    }
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

  /// Returns all field aggregations values previously defined for this grid view. If filters exist for this view, the aggregations are computed only on filtered rows.You need to have read permissions on the view to request aggregations.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Select the view you want the aggregations for.
  ///
  /// * [String] filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket:
  ///   The aggregation can optionally be filtered by the same view filters available for the views. Multiple filters can be provided if they follow the same format. The field and filter variable indicate how to filter and the value indicates where to filter on.  For example if you provide the following GET parameter `filter__field_1__equal=test` then only rows where the value of field_1 is equal to test are going to be returned.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**     **Please note that by passing the filter parameters the view filters saved for the view itself will be ignored.**
  ///
  /// * [String] filterType:
  ///   `AND`: Indicates that the aggregated rows must match all the provided filters.  `OR`: Indicates that the aggregated rows only have to match one of the filters.  
  ///
  /// * [String] filters:
  ///   A JSON serialized string containing the filter tree to apply for the aggregation. The filter tree is a nested structure containing the filters that need to be applied.   An example of a valid filter tree is the following:`{\"filter_type\": \"AND\", \"filters\": [{\"field\": 1, \"type\": \"equal\", \"value\": \"test\"}]}`. The `field` value must be the ID of the field to filter on, or the name of the field if `user_field_names` is true.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if this parameter is provided, all other `filter__{field}__{filter}` will be ignored, as well as the `filter_type` parameter.**  **Please note that by passing the filters parameter the view filters saved for the view itself will be ignored.**
  ///
  /// * [String] include:
  ///   if `include` is set to `total`, the total row count will be returned with the result.
  ///
  /// * [String] search:
  ///   If provided the aggregations are calculated only for matching rows.
  ///
  /// * [String] searchMode:
  ///   If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
  Future<GetDatabaseTablePublicGridViewFieldAggregations200Response?> getDatabaseTableGridViewFieldAggregations(int viewId, { String? filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String? filterType, String? filters, String? include, String? search, String? searchMode, }) async {
    final response = await getDatabaseTableGridViewFieldAggregationsWithHttpInfo(viewId,  filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket: filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, filterType: filterType, filters: filters, include: include, search: search, searchMode: searchMode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetDatabaseTablePublicGridViewFieldAggregations200Response',) as GetDatabaseTablePublicGridViewFieldAggregations200Response;
    
    }
    return null;
  }

  /// Returns all field aggregations values previously defined for this grid view. If filters exist for this view, the aggregations are computed only on filtered rows.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Select the view you want the aggregations for.
  ///
  /// * [String] filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket:
  ///   The aggregation can optionally be filtered by the same view filters available for the views. Multiple filters can be provided if they follow the same format. The field and filter variable indicate how to filter and the value indicates where to filter on.  For example if you provide the following GET parameter `filter__field_1__equal=test` then only rows where the value of field_1 is equal to test are going to be returned.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**   
  ///
  /// * [String] filterType:
  ///   `AND`: Indicates that the aggregated rows must match all the provided filters.  `OR`: Indicates that the aggregated rows only have to match one of the filters.  
  ///
  /// * [String] filters:
  ///   A JSON serialized string containing the filter tree to apply for the aggregation. The filter tree is a nested structure containing the filters that need to be applied.   An example of a valid filter tree is the following:`{\"filter_type\": \"AND\", \"filters\": [{\"field\": 1, \"type\": \"equal\", \"value\": \"test\"}]}`. The `field` value must be the ID of the field to filter on, or the name of the field if `user_field_names` is true.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if this parameter is provided, all other `filter__{field}__{filter}` will be ignored, as well as the `filter_type` parameter.**
  ///
  /// * [String] include:
  ///   if `include` is set to `total`, the total row count will be returned with the result.
  ///
  /// * [String] search:
  ///   If provided the aggregations are calculated only for matching rows.
  ///
  /// * [String] searchMode:
  ///   If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
  Future<Response> getDatabaseTablePublicGridViewFieldAggregationsWithHttpInfo(String slug, { String? filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String? filterType, String? filters, String? include, String? search, String? searchMode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/grid/{slug}/public/aggregations/'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket != null) {
      queryParams.addAll(_queryParams('', 'filter__{field}__{filter}', filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket));
    }
    if (filterType != null) {
      queryParams.addAll(_queryParams('', 'filter_type', filterType));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (include != null) {
      queryParams.addAll(_queryParams('', 'include', include));
    }
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

  /// Returns all field aggregations values previously defined for this grid view. If filters exist for this view, the aggregations are computed only on filtered rows.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Select the view you want the aggregations for.
  ///
  /// * [String] filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket:
  ///   The aggregation can optionally be filtered by the same view filters available for the views. Multiple filters can be provided if they follow the same format. The field and filter variable indicate how to filter and the value indicates where to filter on.  For example if you provide the following GET parameter `filter__field_1__equal=test` then only rows where the value of field_1 is equal to test are going to be returned.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**   
  ///
  /// * [String] filterType:
  ///   `AND`: Indicates that the aggregated rows must match all the provided filters.  `OR`: Indicates that the aggregated rows only have to match one of the filters.  
  ///
  /// * [String] filters:
  ///   A JSON serialized string containing the filter tree to apply for the aggregation. The filter tree is a nested structure containing the filters that need to be applied.   An example of a valid filter tree is the following:`{\"filter_type\": \"AND\", \"filters\": [{\"field\": 1, \"type\": \"equal\", \"value\": \"test\"}]}`. The `field` value must be the ID of the field to filter on, or the name of the field if `user_field_names` is true.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if this parameter is provided, all other `filter__{field}__{filter}` will be ignored, as well as the `filter_type` parameter.**
  ///
  /// * [String] include:
  ///   if `include` is set to `total`, the total row count will be returned with the result.
  ///
  /// * [String] search:
  ///   If provided the aggregations are calculated only for matching rows.
  ///
  /// * [String] searchMode:
  ///   If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
  Future<GetDatabaseTablePublicGridViewFieldAggregations200Response?> getDatabaseTablePublicGridViewFieldAggregations(String slug, { String? filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String? filterType, String? filters, String? include, String? search, String? searchMode, }) async {
    final response = await getDatabaseTablePublicGridViewFieldAggregationsWithHttpInfo(slug,  filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket: filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, filterType: filterType, filters: filters, include: include, search: search, searchMode: searchMode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetDatabaseTablePublicGridViewFieldAggregations200Response',) as GetDatabaseTablePublicGridViewFieldAggregations200Response;
    
    }
    return null;
  }

  /// Lists the requested rows of the view's table related to the provided `view_id` if the authorized user has access to the database's workspace. The response is paginated either by a limit/offset or page/size style. The style depends on the provided GET parameters. The properties of the returned rows depends on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field. The value is what the user has provided and the format of it depends on the fields type.  The filters and sortings are automatically applied. To get a full overview of the applied filters and sortings you can use the `list_database_table_view_filters` and `list_database_table_view_sortings` endpoints.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns only rows that belong to the related view's table.
  ///
  /// * [bool] count:
  ///   If provided only the count will be returned.
  ///
  /// * [String] excludeFields:
  ///   All the fields are included in the response by default. You can select a subset of fields by providing the exclude_fields query parameter. If you for example provide the following GET parameter `exclude_fields=field_1,field_2` then the fields with id `1` and id `2` are going to be excluded from the selection and response. 
  ///
  /// * [String] filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket:
  ///   The rows can optionally be filtered by the same view filters available for the views. Multiple filters can be provided if they follow the same format. The field and filter variable indicate how to filter and the value indicates where to filter on.  For example if you provide the following GET parameter `filter__field_1__equal=test` then only rows where the value of field_1 is equal to test are going to be returned.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**     **Please note that by passing the filter parameters the view filters saved for the view itself will be ignored.**
  ///
  /// * [String] filterType:
  ///   `AND`: Indicates that the rows must match all the provided filters.  `OR`: Indicates that the rows only have to match one of the filters.  This works only if two or more filters are provided.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**
  ///
  /// * [String] filters:
  ///   A JSON serialized string containing the filter tree to apply to this view. The filter tree is a nested structure containing the filters that need to be applied.   An example of a valid filter tree is the following:`{\"filter_type\": \"AND\", \"filters\": [{\"field\": 1, \"type\": \"equal\", \"value\": \"test\"}]}`. The `field` value must be the ID of the field to filter on, or the name of the field if `user_field_names` is true.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if this parameter is provided, all other `filter__{field}__{filter}` will be ignored, as well as the `filter_type` parameter.**  **Please note that by passing the filters parameter the view filters saved for the view itself will be ignored.**
  ///
  /// * [String] include:
  ///   A comma separated list allowing the values of `field_options` and `row_metadata` which will add the object/objects with the same name to the response if included. The `field_options` object contains user defined view settings for each field. For example the field's width is included in here. The `row_metadata` object includes extra row specific data on a per row basis.
  ///
  /// * [String] includeFields:
  ///   All the fields are included in the response by default. You can select a subset of fields by providing the fields query parameter. If you for example provide the following GET parameter `include_fields=field_1,field_2` then only the fields with id `1` and id `2` are going to be selected and included in the response.
  ///
  /// * [int] limit:
  ///   Defines how many rows should be returned.
  ///
  /// * [int] offset:
  ///   Can only be used in combination with the `limit` parameter and defines from which offset the rows should be returned.
  ///
  /// * [String] orderBy:
  ///   Optionally the rows can be ordered by provided field ids separated by comma. By default a field is ordered in ascending (A-Z) order, but by prepending the field with a '-' it can be ordered descending (Z-A).
  ///
  /// * [int] page:
  ///   Defines which page of rows should be returned. Either the `page` or `limit` can be provided, not both.
  ///
  /// * [String] search:
  ///   If provided only rows with data that matches the search query are going to be returned.
  ///
  /// * [String] searchMode:
  ///   If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
  ///
  /// * [int] size:
  ///   Can only be used in combination with the `page` parameter and defines how many rows should be returned.
  Future<Response> listDatabaseTableGridViewRowsWithHttpInfo(int viewId, { bool? count, String? excludeFields, String? filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String? filterType, String? filters, String? include, String? includeFields, int? limit, int? offset, String? orderBy, int? page, String? search, String? searchMode, int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/grid/{view_id}/'
      .replaceAll('{view_id}', viewId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (count != null) {
      queryParams.addAll(_queryParams('', 'count', count));
    }
    if (excludeFields != null) {
      queryParams.addAll(_queryParams('', 'exclude_fields', excludeFields));
    }
    if (filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket != null) {
      queryParams.addAll(_queryParams('', 'filter__{field}__{filter}', filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket));
    }
    if (filterType != null) {
      queryParams.addAll(_queryParams('', 'filter_type', filterType));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (include != null) {
      queryParams.addAll(_queryParams('', 'include', include));
    }
    if (includeFields != null) {
      queryParams.addAll(_queryParams('', 'include_fields', includeFields));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (orderBy != null) {
      queryParams.addAll(_queryParams('', 'order_by', orderBy));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (searchMode != null) {
      queryParams.addAll(_queryParams('', 'search_mode', searchMode));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
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

  /// Lists the requested rows of the view's table related to the provided `view_id` if the authorized user has access to the database's workspace. The response is paginated either by a limit/offset or page/size style. The style depends on the provided GET parameters. The properties of the returned rows depends on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field. The value is what the user has provided and the format of it depends on the fields type.  The filters and sortings are automatically applied. To get a full overview of the applied filters and sortings you can use the `list_database_table_view_filters` and `list_database_table_view_sortings` endpoints.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns only rows that belong to the related view's table.
  ///
  /// * [bool] count:
  ///   If provided only the count will be returned.
  ///
  /// * [String] excludeFields:
  ///   All the fields are included in the response by default. You can select a subset of fields by providing the exclude_fields query parameter. If you for example provide the following GET parameter `exclude_fields=field_1,field_2` then the fields with id `1` and id `2` are going to be excluded from the selection and response. 
  ///
  /// * [String] filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket:
  ///   The rows can optionally be filtered by the same view filters available for the views. Multiple filters can be provided if they follow the same format. The field and filter variable indicate how to filter and the value indicates where to filter on.  For example if you provide the following GET parameter `filter__field_1__equal=test` then only rows where the value of field_1 is equal to test are going to be returned.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**     **Please note that by passing the filter parameters the view filters saved for the view itself will be ignored.**
  ///
  /// * [String] filterType:
  ///   `AND`: Indicates that the rows must match all the provided filters.  `OR`: Indicates that the rows only have to match one of the filters.  This works only if two or more filters are provided.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**
  ///
  /// * [String] filters:
  ///   A JSON serialized string containing the filter tree to apply to this view. The filter tree is a nested structure containing the filters that need to be applied.   An example of a valid filter tree is the following:`{\"filter_type\": \"AND\", \"filters\": [{\"field\": 1, \"type\": \"equal\", \"value\": \"test\"}]}`. The `field` value must be the ID of the field to filter on, or the name of the field if `user_field_names` is true.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if this parameter is provided, all other `filter__{field}__{filter}` will be ignored, as well as the `filter_type` parameter.**  **Please note that by passing the filters parameter the view filters saved for the view itself will be ignored.**
  ///
  /// * [String] include:
  ///   A comma separated list allowing the values of `field_options` and `row_metadata` which will add the object/objects with the same name to the response if included. The `field_options` object contains user defined view settings for each field. For example the field's width is included in here. The `row_metadata` object includes extra row specific data on a per row basis.
  ///
  /// * [String] includeFields:
  ///   All the fields are included in the response by default. You can select a subset of fields by providing the fields query parameter. If you for example provide the following GET parameter `include_fields=field_1,field_2` then only the fields with id `1` and id `2` are going to be selected and included in the response.
  ///
  /// * [int] limit:
  ///   Defines how many rows should be returned.
  ///
  /// * [int] offset:
  ///   Can only be used in combination with the `limit` parameter and defines from which offset the rows should be returned.
  ///
  /// * [String] orderBy:
  ///   Optionally the rows can be ordered by provided field ids separated by comma. By default a field is ordered in ascending (A-Z) order, but by prepending the field with a '-' it can be ordered descending (Z-A).
  ///
  /// * [int] page:
  ///   Defines which page of rows should be returned. Either the `page` or `limit` can be provided, not both.
  ///
  /// * [String] search:
  ///   If provided only rows with data that matches the search query are going to be returned.
  ///
  /// * [String] searchMode:
  ///   If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
  ///
  /// * [int] size:
  ///   Can only be used in combination with the `page` parameter and defines how many rows should be returned.
  Future<PaginationSerializerWithGridViewFieldOptionsExampleRowResponse?> listDatabaseTableGridViewRows(int viewId, { bool? count, String? excludeFields, String? filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String? filterType, String? filters, String? include, String? includeFields, int? limit, int? offset, String? orderBy, int? page, String? search, String? searchMode, int? size, }) async {
    final response = await listDatabaseTableGridViewRowsWithHttpInfo(viewId,  count: count, excludeFields: excludeFields, filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket: filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, filterType: filterType, filters: filters, include: include, includeFields: includeFields, limit: limit, offset: offset, orderBy: orderBy, page: page, search: search, searchMode: searchMode, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerWithGridViewFieldOptionsExampleRowResponse',) as PaginationSerializerWithGridViewFieldOptionsExampleRowResponse;
    
    }
    return null;
  }

  /// Lists the requested rows of the view's table related to the provided `slug` if the grid view is public.The response is paginated either by a limit/offset or page/size style. The style depends on the provided GET parameters. The properties of the returned rows depends on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field. The value is what the user has provided and the format of it depends on the fields type.  
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Returns only rows that belong to the related view.
  ///
  /// * [bool] count:
  ///   If provided only the count will be returned.
  ///
  /// * [String] excludeFields:
  ///   All the fields are included in the response by default. You can select a subset of fields by providing the exclude_fields query parameter. If you for example provide the following GET parameter `exclude_fields=field_1,field_2` then the fields with id `1` and id `2` are going to be excluded from the selection and response. 
  ///
  /// * [String] filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket:
  ///   The rows can optionally be filtered by the same view filters available for the views. Multiple filters can be provided if they follow the same format. The field and filter variable indicate how to filter and the value indicates where to filter on.  For example if you provide the following GET parameter `filter__field_1__equal=test` then only rows where the value of field_1 is equal to test are going to be returned.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**   
  ///
  /// * [String] filterType:
  ///   `AND`: Indicates that the rows must match all the provided filters.  `OR`: Indicates that the rows only have to match one of the filters.  This works only if two or more filters are provided.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**
  ///
  /// * [String] filters:
  ///   A JSON serialized string containing the filter tree to apply to this view. The filter tree is a nested structure containing the filters that need to be applied.   An example of a valid filter tree is the following:`{\"filter_type\": \"AND\", \"filters\": [{\"field\": 1, \"type\": \"equal\", \"value\": \"test\"}]}`. The `field` value must be the ID of the field to filter on, or the name of the field if `user_field_names` is true.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if this parameter is provided, all other `filter__{field}__{filter}` will be ignored, as well as the `filter_type` parameter.**
  ///
  /// * [String] groupBy:
  ///   Optionally the rows can be grouped by provided field ids separated by comma. By default no groups are applied. This doesn't actually responds with the rows groups, this is just what's needed for the Baserow group by feature.
  ///
  /// * [String] include:
  ///   A comma separated list allowing the values of `field_options` which will add the object/objects with the same name to the response if included. The `field_options` object contains user defined view settings for each field. For example the field's width is included in here.
  ///
  /// * [String] includeFields:
  ///   All the fields are included in the response by default. You can select a subset of fields by providing the fields query parameter. If you for example provide the following GET parameter `include_fields=field_1,field_2` then only the fields with id `1` and id `2` are going to be selected and included in the response.
  ///
  /// * [int] limit:
  ///   Defines how many rows should be returned.
  ///
  /// * [int] offset:
  ///   Can only be used in combination with the `limit` parameter and defines from which offset the rows should be returned.
  ///
  /// * [String] orderBy:
  ///   Optionally the rows can be ordered by provided field ids separated by comma. By default a field is ordered in ascending (A-Z) order, but by prepending the field with a '-' it can be ordered descending (Z-A).
  ///
  /// * [int] page:
  ///   Defines which page of rows should be returned. Either the `page` or `limit` can be provided, not both.
  ///
  /// * [String] search:
  ///   If provided only rows with data that matches the search query are going to be returned.
  ///
  /// * [String] searchMode:
  ///   If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
  ///
  /// * [int] size:
  ///   Can only be used in combination with the `page` parameter and defines how many rows should be returned.
  Future<Response> publicListDatabaseTableGridViewRowsWithHttpInfo(String slug, { bool? count, String? excludeFields, String? filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String? filterType, String? filters, String? groupBy, String? include, String? includeFields, int? limit, int? offset, String? orderBy, int? page, String? search, String? searchMode, int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/grid/{slug}/public/rows/'
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (count != null) {
      queryParams.addAll(_queryParams('', 'count', count));
    }
    if (excludeFields != null) {
      queryParams.addAll(_queryParams('', 'exclude_fields', excludeFields));
    }
    if (filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket != null) {
      queryParams.addAll(_queryParams('', 'filter__{field}__{filter}', filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket));
    }
    if (filterType != null) {
      queryParams.addAll(_queryParams('', 'filter_type', filterType));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (groupBy != null) {
      queryParams.addAll(_queryParams('', 'group_by', groupBy));
    }
    if (include != null) {
      queryParams.addAll(_queryParams('', 'include', include));
    }
    if (includeFields != null) {
      queryParams.addAll(_queryParams('', 'include_fields', includeFields));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (orderBy != null) {
      queryParams.addAll(_queryParams('', 'order_by', orderBy));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (searchMode != null) {
      queryParams.addAll(_queryParams('', 'search_mode', searchMode));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
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

  /// Lists the requested rows of the view's table related to the provided `slug` if the grid view is public.The response is paginated either by a limit/offset or page/size style. The style depends on the provided GET parameters. The properties of the returned rows depends on which fields the table has. For a complete overview of fields use the **list_database_table_fields** endpoint to list them all. In the example all field types are listed, but normally the number in field_{id} key is going to be the id of the field. The value is what the user has provided and the format of it depends on the fields type.  
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Returns only rows that belong to the related view.
  ///
  /// * [bool] count:
  ///   If provided only the count will be returned.
  ///
  /// * [String] excludeFields:
  ///   All the fields are included in the response by default. You can select a subset of fields by providing the exclude_fields query parameter. If you for example provide the following GET parameter `exclude_fields=field_1,field_2` then the fields with id `1` and id `2` are going to be excluded from the selection and response. 
  ///
  /// * [String] filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket:
  ///   The rows can optionally be filtered by the same view filters available for the views. Multiple filters can be provided if they follow the same format. The field and filter variable indicate how to filter and the value indicates where to filter on.  For example if you provide the following GET parameter `filter__field_1__equal=test` then only rows where the value of field_1 is equal to test are going to be returned.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**   
  ///
  /// * [String] filterType:
  ///   `AND`: Indicates that the rows must match all the provided filters.  `OR`: Indicates that the rows only have to match one of the filters.  This works only if two or more filters are provided.  **Please note that if the `filters` parameter is provided, this parameter will be ignored.**
  ///
  /// * [String] filters:
  ///   A JSON serialized string containing the filter tree to apply to this view. The filter tree is a nested structure containing the filters that need to be applied.   An example of a valid filter tree is the following:`{\"filter_type\": \"AND\", \"filters\": [{\"field\": 1, \"type\": \"equal\", \"value\": \"test\"}]}`. The `field` value must be the ID of the field to filter on, or the name of the field if `user_field_names` is true.  The following filters are available: equal, not_equal, filename_contains, files_lower_than, has_file_type, contains, contains_not, contains_word, doesnt_contain_word, length_is_lower_than, higher_than, higher_than_or_equal, lower_than, lower_than_or_equal, is_even_and_whole, date_equal, date_before, date_before_or_equal, date_after_days_ago, date_after, date_after_or_equal, date_not_equal, date_equals_today, date_before_today, date_after_today, date_within_days, date_within_weeks, date_within_months, date_equals_days_ago, date_equals_months_ago, date_equals_years_ago, date_equals_week, date_equals_month, date_equals_day_of_month, date_equals_year, date_is, date_is_not, date_is_before, date_is_on_or_before, date_is_after, date_is_on_or_after, date_is_within, single_select_equal, single_select_not_equal, single_select_is_any_of, single_select_is_none_of, link_row_has, link_row_has_not, link_row_contains, link_row_not_contains, boolean, empty, not_empty, multiple_select_has, multiple_select_has_not, multiple_collaborators_has, multiple_collaborators_has_not, user_is, user_is_not, has_value_equal, has_not_value_equal, has_value_contains, has_not_value_contains, has_value_contains_word, has_not_value_contains_word, has_value_length_is_lower_than, has_all_values_equal, has_empty_value, has_not_empty_value, has_any_select_option_equal, has_none_select_option_equal.  **Please note that if this parameter is provided, all other `filter__{field}__{filter}` will be ignored, as well as the `filter_type` parameter.**
  ///
  /// * [String] groupBy:
  ///   Optionally the rows can be grouped by provided field ids separated by comma. By default no groups are applied. This doesn't actually responds with the rows groups, this is just what's needed for the Baserow group by feature.
  ///
  /// * [String] include:
  ///   A comma separated list allowing the values of `field_options` which will add the object/objects with the same name to the response if included. The `field_options` object contains user defined view settings for each field. For example the field's width is included in here.
  ///
  /// * [String] includeFields:
  ///   All the fields are included in the response by default. You can select a subset of fields by providing the fields query parameter. If you for example provide the following GET parameter `include_fields=field_1,field_2` then only the fields with id `1` and id `2` are going to be selected and included in the response.
  ///
  /// * [int] limit:
  ///   Defines how many rows should be returned.
  ///
  /// * [int] offset:
  ///   Can only be used in combination with the `limit` parameter and defines from which offset the rows should be returned.
  ///
  /// * [String] orderBy:
  ///   Optionally the rows can be ordered by provided field ids separated by comma. By default a field is ordered in ascending (A-Z) order, but by prepending the field with a '-' it can be ordered descending (Z-A).
  ///
  /// * [int] page:
  ///   Defines which page of rows should be returned. Either the `page` or `limit` can be provided, not both.
  ///
  /// * [String] search:
  ///   If provided only rows with data that matches the search query are going to be returned.
  ///
  /// * [String] searchMode:
  ///   If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.
  ///
  /// * [int] size:
  ///   Can only be used in combination with the `page` parameter and defines how many rows should be returned.
  Future<PublicPaginationSerializerWithGridViewFieldOptionsExampleRowResponse?> publicListDatabaseTableGridViewRows(String slug, { bool? count, String? excludeFields, String? filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String? filterType, String? filters, String? groupBy, String? include, String? includeFields, int? limit, int? offset, String? orderBy, int? page, String? search, String? searchMode, int? size, }) async {
    final response = await publicListDatabaseTableGridViewRowsWithHttpInfo(slug,  count: count, excludeFields: excludeFields, filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket: filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, filterType: filterType, filters: filters, groupBy: groupBy, include: include, includeFields: includeFields, limit: limit, offset: offset, orderBy: orderBy, page: page, search: search, searchMode: searchMode, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PublicPaginationSerializerWithGridViewFieldOptionsExampleRowResponse',) as PublicPaginationSerializerWithGridViewFieldOptionsExampleRowResponse;
    
    }
    return null;
  }
}
