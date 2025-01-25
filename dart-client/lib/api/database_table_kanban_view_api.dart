//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class DatabaseTableKanbanViewApi {
  DatabaseTableKanbanViewApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Responds with serialized rows grouped by the view's single select field options if the user is authenticated and has access to the related workspace. Additional query parameters can be provided to control the `limit` and `offset` per select option.  This is a **premium** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns only rows that belong to the related view's table.
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
  /// * [int] limit:
  ///   Defines how many rows should be returned by default. This value can be overwritten per select option.
  ///
  /// * [int] offset:
  ///   Defines from which offset the rows should be returned.This value can be overwritten per select option.
  ///
  /// * [String] selectOption:
  ///   Accepts multiple `select_option` parameters. If not provided, the rows of all select options will be returned. If one or more `select_option` parameters are provided, then only the rows of those will be included in the response. `?select_option=1&select_option=null` will only include the rows for both select option with id `1` and `null`. `?select_option=1,10,20` will only include the rows of select option id `1` with a limit of `10` and and offset of `20`.
  Future<Response> listDatabaseTableKanbanViewRowsWithHttpInfo(int viewId, { String? filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String? filterType, String? filters, String? include, int? limit, int? offset, String? selectOption, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/kanban/{view_id}/'
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
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (selectOption != null) {
      queryParams.addAll(_queryParams('', 'select_option', selectOption));
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

  /// Responds with serialized rows grouped by the view's single select field options if the user is authenticated and has access to the related workspace. Additional query parameters can be provided to control the `limit` and `offset` per select option.  This is a **premium** feature.
  ///
  /// Parameters:
  ///
  /// * [int] viewId (required):
  ///   Returns only rows that belong to the related view's table.
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
  /// * [int] limit:
  ///   Defines how many rows should be returned by default. This value can be overwritten per select option.
  ///
  /// * [int] offset:
  ///   Defines from which offset the rows should be returned.This value can be overwritten per select option.
  ///
  /// * [String] selectOption:
  ///   Accepts multiple `select_option` parameters. If not provided, the rows of all select options will be returned. If one or more `select_option` parameters are provided, then only the rows of those will be included in the response. `?select_option=1&select_option=null` will only include the rows for both select option with id `1` and `null`. `?select_option=1,10,20` will only include the rows of select option id `1` with a limit of `10` and and offset of `20`.
  Future<KanbanViewExampleResponse?> listDatabaseTableKanbanViewRows(int viewId, { String? filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String? filterType, String? filters, String? include, int? limit, int? offset, String? selectOption, }) async {
    final response = await listDatabaseTableKanbanViewRowsWithHttpInfo(viewId,  filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket: filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, filterType: filterType, filters: filters, include: include, limit: limit, offset: offset, selectOption: selectOption, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KanbanViewExampleResponse',) as KanbanViewExampleResponse;
    
    }
    return null;
  }

  /// Responds with serialized rows grouped by the view's single select field options related to the `slug` if the kanban view is publicly shared. Additional query parameters can be provided to control the `limit` and `offset` per select option.   This is a **premium** feature.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Returns only rows that belong to the related view.
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
  /// * [int] limit:
  ///   Defines how many rows should be returned by default. This value can be overwritten per select option.
  ///
  /// * [int] offset:
  ///   Defines from which offset the rows should be returned.This value can be overwritten per select option.
  ///
  /// * [String] selectOption:
  ///   Accepts multiple `select_option` parameters. If not provided, the rows of all select options will be returned. If one or more `select_option` parameters are provided, then only the rows of those will be included in the response. `?select_option=1&select_option=null` will only include the rows for both select option with id `1` and `null`. `?select_option=1,10,20` will only include the rows of select option id `1` with a limit of `10` and and offset of `20`.
  Future<Response> publicListDatabaseTableKanbanViewRowsWithHttpInfo(String slug, { String? filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String? filterType, String? filters, int? limit, int? offset, String? selectOption, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/views/kanban/{slug}/public/rows/'
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
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (selectOption != null) {
      queryParams.addAll(_queryParams('', 'select_option', selectOption));
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

  /// Responds with serialized rows grouped by the view's single select field options related to the `slug` if the kanban view is publicly shared. Additional query parameters can be provided to control the `limit` and `offset` per select option.   This is a **premium** feature.
  ///
  /// Parameters:
  ///
  /// * [String] slug (required):
  ///   Returns only rows that belong to the related view.
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
  /// * [int] limit:
  ///   Defines how many rows should be returned by default. This value can be overwritten per select option.
  ///
  /// * [int] offset:
  ///   Defines from which offset the rows should be returned.This value can be overwritten per select option.
  ///
  /// * [String] selectOption:
  ///   Accepts multiple `select_option` parameters. If not provided, the rows of all select options will be returned. If one or more `select_option` parameters are provided, then only the rows of those will be included in the response. `?select_option=1&select_option=null` will only include the rows for both select option with id `1` and `null`. `?select_option=1,10,20` will only include the rows of select option id `1` with a limit of `10` and and offset of `20`.
  Future<KanbanViewExampleResponse?> publicListDatabaseTableKanbanViewRows(String slug, { String? filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, String? filterType, String? filters, int? limit, int? offset, String? selectOption, }) async {
    final response = await publicListDatabaseTableKanbanViewRowsWithHttpInfo(slug,  filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket: filterLeftCurlyBracketFieldRightCurlyBracketLeftCurlyBracketFilterRightCurlyBracket, filterType: filterType, filters: filters, limit: limit, offset: offset, selectOption: selectOption, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KanbanViewExampleResponse',) as KanbanViewExampleResponse;
    
    }
    return null;
  }
}
