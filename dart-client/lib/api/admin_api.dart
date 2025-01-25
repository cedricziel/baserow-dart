//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class AdminApi {
  AdminApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Adds the user related to the provided parameter and to the license related to the parameter. This only happens if there are enough seats left on the license and if the user is not already on the license.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license, this is `id` and not `license_id`.
  ///
  /// * [int] userId (required):
  ///   The ID of the user that must be added to the license.
  Future<Response> adminAddUserToLicenseWithHttpInfo(int id, int userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/licenses/{id}/{user_id}/'
      .replaceAll('{id}', id.toString())
      .replaceAll('{user_id}', userId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Adds the user related to the provided parameter and to the license related to the parameter. This only happens if there are enough seats left on the license and if the user is not already on the license.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license, this is `id` and not `license_id`.
  ///
  /// * [int] userId (required):
  ///   The ID of the user that must be added to the license.
  Future<LicenseUser?> adminAddUserToLicense(int id, int userId,) async {
    final response = await adminAddUserToLicenseWithHttpInfo(id, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LicenseUser',) as LicenseUser;
    
    }
    return null;
  }

  /// Creates and returns a new user if the requesting user is staff. This works even if new signups are disabled.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserAdminCreate] userAdminCreate (required):
  Future<Response> adminCreateUserWithHttpInfo(UserAdminCreate userAdminCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/users/';

    // ignore: prefer_final_locals
    Object? postBody = userAdminCreate;

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

  /// Creates and returns a new user if the requesting user is staff. This works even if new signups are disabled.
  ///
  /// Parameters:
  ///
  /// * [UserAdminCreate] userAdminCreate (required):
  Future<UserAdminResponse?> adminCreateUser(UserAdminCreate userAdminCreate,) async {
    final response = await adminCreateUserWithHttpInfo(userAdminCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserAdminResponse',) as UserAdminResponse;
    
    }
    return null;
  }

  /// Returns the new and active users for the last 24 hours, 7 days and 30 days. The `previous_` values are the values of the period before, so for example `previous_new_users_last_24_hours` are the new users that signed up from 48 to 24 hours ago. It can be used to calculate an increase or decrease in the amount of signups. A list of the new and active users for every day for the last 30 days is also included.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminDashboardWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/dashboard/';

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

  /// Returns the new and active users for the last 24 hours, 7 days and 30 days. The `previous_` values are the values of the period before, so for example `previous_new_users_last_24_hours` are the new users that signed up from 48 to 24 hours ago. It can be used to calculate an increase or decrease in the amount of signups. A list of the new and active users for every day for the last 30 days is also included.
  Future<AdminDashboard?> adminDashboard() async {
    final response = await adminDashboardWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdminDashboard',) as AdminDashboard;
    
    }
    return null;
  }

  /// Deletes the specified user, if the requesting user has admin permissions. You cannot delete yourself.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] userId (required):
  ///   The id of the user to delete
  Future<Response> adminDeleteUserWithHttpInfo(int userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/users/{user_id}/'
      .replaceAll('{user_id}', userId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Deletes the specified user, if the requesting user has admin permissions. You cannot delete yourself.
  ///
  /// Parameters:
  ///
  /// * [int] userId (required):
  ///   The id of the user to delete
  Future<void> adminDeleteUser(int userId,) async {
    final response = await adminDeleteUserWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes the specified workspace and the applications inside that workspace, if the requesting user is staff.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The id of the workspace to delete
  Future<Response> adminDeleteWorkspaceWithHttpInfo(int workspaceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/workspaces/{workspace_id}/'
      .replaceAll('{workspace_id}', workspaceId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Deletes the specified workspace and the applications inside that workspace, if the requesting user is staff.
  ///
  /// Parameters:
  ///
  /// * [int] workspaceId (required):
  ///   The id of the workspace to delete
  Future<void> adminDeleteWorkspace(int workspaceId,) async {
    final response = await adminDeleteWorkspaceWithHttpInfo(workspaceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates specified user attributes and returns the updated user if the requesting user is staff. You cannot update yourself to no longer be an admin or active.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] userId (required):
  ///   The id of the user to edit
  ///
  /// * [PatchedUserAdminUpdate] patchedUserAdminUpdate:
  Future<Response> adminEditUserWithHttpInfo(int userId, { PatchedUserAdminUpdate? patchedUserAdminUpdate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/users/{user_id}/'
      .replaceAll('{user_id}', userId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedUserAdminUpdate;

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

  /// Updates specified user attributes and returns the updated user if the requesting user is staff. You cannot update yourself to no longer be an admin or active.
  ///
  /// Parameters:
  ///
  /// * [int] userId (required):
  ///   The id of the user to edit
  ///
  /// * [PatchedUserAdminUpdate] patchedUserAdminUpdate:
  Future<UserAdminResponse?> adminEditUser(int userId, { PatchedUserAdminUpdate? patchedUserAdminUpdate, }) async {
    final response = await adminEditUserWithHttpInfo(userId,  patchedUserAdminUpdate: patchedUserAdminUpdate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserAdminResponse',) as UserAdminResponse;
    
    }
    return null;
  }

  /// Fills the remaining empty seats of the license with the first users that are found.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license, this is `id` and not `license_id`.
  Future<Response> adminFillRemainingSeatsOfLicenseWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/licenses/{id}/fill-seats/'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Fills the remaining empty seats of the license with the first users that are found.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license, this is `id` and not `license_id`.
  Future<List<LicenseUser>?> adminFillRemainingSeatsOfLicense(int id,) async {
    final response = await adminFillRemainingSeatsOfLicenseWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<LicenseUser>') as List)
        .cast<LicenseUser>()
        .toList(growable: false);

    }
    return null;
  }

  /// Responds with detailed information about the license related to the provided parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license.
  Future<Response> adminGetLicenseWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/licenses/{id}/'
      .replaceAll('{id}', id.toString());

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

  /// Responds with detailed information about the license related to the provided parameter.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license.
  Future<LicenseWithUsers?> adminGetLicense(int id,) async {
    final response = await adminGetLicenseWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LicenseWithUsers',) as LicenseWithUsers;
    
    }
    return null;
  }

  /// This endpoint allows staff to impersonate another user by requesting a JWT token and user object. The requesting user must have staff access in order to do this. It's not possible to impersonate a superuser or staff.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BaserowImpersonateAuthToken] baserowImpersonateAuthToken (required):
  Future<Response> adminImpersonateUserWithHttpInfo(BaserowImpersonateAuthToken baserowImpersonateAuthToken,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/users/impersonate/';

    // ignore: prefer_final_locals
    Object? postBody = baserowImpersonateAuthToken;

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

  /// This endpoint allows staff to impersonate another user by requesting a JWT token and user object. The requesting user must have staff access in order to do this. It's not possible to impersonate a superuser or staff.
  ///
  /// Parameters:
  ///
  /// * [BaserowImpersonateAuthToken] baserowImpersonateAuthToken (required):
  Future<AdminImpersonateUser200Response?> adminImpersonateUser(BaserowImpersonateAuthToken baserowImpersonateAuthToken,) async {
    final response = await adminImpersonateUserWithHttpInfo(baserowImpersonateAuthToken,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AdminImpersonateUser200Response',) as AdminImpersonateUser200Response;
    
    }
    return null;
  }

  /// This endpoint checks with the authority if the license needs to be updated. It also checks if the license is operating within its limits and might take action on that. It could also happen that the license has been deleted because there is an instance id mismatch or because it's invalid. In that case a `204` status code is returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license, this is `id` and not `license_id`.
  Future<Response> adminLicenseCheckWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/licenses/{id}/check/'
      .replaceAll('{id}', id.toString());

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

  /// This endpoint checks with the authority if the license needs to be updated. It also checks if the license is operating within its limits and might take action on that. It could also happen that the license has been deleted because there is an instance id mismatch or because it's invalid. In that case a `204` status code is returned.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license, this is `id` and not `license_id`.
  Future<LicenseWithUsers?> adminLicenseCheck(int id,) async {
    final response = await adminLicenseCheckWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LicenseWithUsers',) as LicenseWithUsers;
    
    }
    return null;
  }

  /// This endpoint can be used to lookup users that can be added to a  license. Users that are already in the license are not returned here. Optionally a `search` query parameter can be provided to filter the results.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license, this is `id` and not `license_id`.
  ///
  /// * [int] page:
  ///   Defines which page of users should be returned.
  ///
  /// * [String] search:
  ///   If provided, only users where the name or email contains the value are returned.
  ///
  /// * [int] size:
  ///   Defines how many users should be returned per page.
  Future<Response> adminLicenseLookupUsersWithHttpInfo(int id, { int? page, String? search, int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/licenses/{id}/lookup-users/'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
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

  /// This endpoint can be used to lookup users that can be added to a  license. Users that are already in the license are not returned here. Optionally a `search` query parameter can be provided to filter the results.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license, this is `id` and not `license_id`.
  ///
  /// * [int] page:
  ///   Defines which page of users should be returned.
  ///
  /// * [String] search:
  ///   If provided, only users where the name or email contains the value are returned.
  ///
  /// * [int] size:
  ///   Defines how many users should be returned per page.
  Future<PaginationSerializerLicenseUserLookup?> adminLicenseLookupUsers(int id, { int? page, String? search, int? size, }) async {
    final response = await adminLicenseLookupUsersWithHttpInfo(id,  page: page, search: search, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerLicenseUserLookup',) as PaginationSerializerLicenseUserLookup;
    
    }
    return null;
  }

  /// Lists all the valid licenses that are registered to this instance. A premium license can be used to unlock the premium features for a fixed amount of users. An enterprise license can similarly be used to unlock enterpise features. More information about self hosted licenses can be found on our pricing page https://baserow.io/pricing.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> adminLicensesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/licenses/';

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

  /// Lists all the valid licenses that are registered to this instance. A premium license can be used to unlock the premium features for a fixed amount of users. An enterprise license can similarly be used to unlock enterpise features. More information about self hosted licenses can be found on our pricing page https://baserow.io/pricing.
  Future<List<License>?> adminLicenses() async {
    final response = await adminLicensesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<License>') as List)
        .cast<License>()
        .toList(growable: false);

    }
    return null;
  }

  /// Returns all users with detailed information on each user, if the requesting user is staff.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [String] search:
  ///   If provided only users with id or username or first_name that match the query will be returned.
  ///
  /// * [int] size:
  ///   Defines how many users should be returned per page.
  ///
  /// * [String] sorts:
  ///   A comma separated string of attributes to sort by, each attribute must be prefixed with `+` for a descending sort or a `-` for an ascending sort. The accepted attribute names are: `id, is_active, name, username, date_joined, last_login`. For example `sorts=-id,-is_active` will sort the users first by descending id and then ascending is_active. A sortparameter with multiple instances of the same sort attribute will respond with the ERROR_INVALID_SORT_ATTRIBUTE error.
  Future<Response> adminListUsersWithHttpInfo({ int? page, String? search, int? size, String? sorts, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/users/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sorts != null) {
      queryParams.addAll(_queryParams('', 'sorts', sorts));
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

  /// Returns all users with detailed information on each user, if the requesting user is staff.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [String] search:
  ///   If provided only users with id or username or first_name that match the query will be returned.
  ///
  /// * [int] size:
  ///   Defines how many users should be returned per page.
  ///
  /// * [String] sorts:
  ///   A comma separated string of attributes to sort by, each attribute must be prefixed with `+` for a descending sort or a `-` for an ascending sort. The accepted attribute names are: `id, is_active, name, username, date_joined, last_login`. For example `sorts=-id,-is_active` will sort the users first by descending id and then ascending is_active. A sortparameter with multiple instances of the same sort attribute will respond with the ERROR_INVALID_SORT_ATTRIBUTE error.
  Future<PaginationSerializerUserAdminResponse?> adminListUsers({ int? page, String? search, int? size, String? sorts, }) async {
    final response = await adminListUsersWithHttpInfo( page: page, search: search, size: size, sorts: sorts, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerUserAdminResponse',) as PaginationSerializerUserAdminResponse;
    
    }
    return null;
  }

  /// Returns all workspaces with detailed information on each workspace, if the requesting user is staff.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [String] search:
  ///   If provided only workspaces with id or name that match the query will be returned.
  ///
  /// * [int] size:
  ///   Defines how many workspaces should be returned per page.
  ///
  /// * [String] sorts:
  ///   A comma separated string of attributes to sort by, each attribute must be prefixed with `+` for a descending sort or a `-` for an ascending sort. The accepted attribute names are: `id, name, application_count, created_on, row_count, storage_usage`. For example `sorts=-id,-name` will sort the workspaces first by descending id and then ascending name. A sortparameter with multiple instances of the same sort attribute will respond with the ERROR_INVALID_SORT_ATTRIBUTE error.
  Future<Response> adminListWorkspacesWithHttpInfo({ int? page, String? search, int? size, String? sorts, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/admin/workspaces/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sorts != null) {
      queryParams.addAll(_queryParams('', 'sorts', sorts));
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

  /// Returns all workspaces with detailed information on each workspace, if the requesting user is staff.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Defines which page should be returned.
  ///
  /// * [String] search:
  ///   If provided only workspaces with id or name that match the query will be returned.
  ///
  /// * [int] size:
  ///   Defines how many workspaces should be returned per page.
  ///
  /// * [String] sorts:
  ///   A comma separated string of attributes to sort by, each attribute must be prefixed with `+` for a descending sort or a `-` for an ascending sort. The accepted attribute names are: `id, name, application_count, created_on, row_count, storage_usage`. For example `sorts=-id,-name` will sort the workspaces first by descending id and then ascending name. A sortparameter with multiple instances of the same sort attribute will respond with the ERROR_INVALID_SORT_ATTRIBUTE error.
  Future<PaginationSerializerWorkspacesAdminResponse?> adminListWorkspaces({ int? page, String? search, int? size, String? sorts, }) async {
    final response = await adminListWorkspacesWithHttpInfo( page: page, search: search, size: size, sorts: sorts, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PaginationSerializerWorkspacesAdminResponse',) as PaginationSerializerWorkspacesAdminResponse;
    
    }
    return null;
  }

  /// Registers a new license. After registering you can assign users to the license that will be able to use the license's features while the license is active. If an existing license with the same `license_id` already exists and the provided license has been issued later than that one, the existing one will be upgraded.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RegisterLicense] registerLicense (required):
  Future<Response> adminRegisterLicenseWithHttpInfo(RegisterLicense registerLicense,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/licenses/';

    // ignore: prefer_final_locals
    Object? postBody = registerLicense;

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

  /// Registers a new license. After registering you can assign users to the license that will be able to use the license's features while the license is active. If an existing license with the same `license_id` already exists and the provided license has been issued later than that one, the existing one will be upgraded.
  ///
  /// Parameters:
  ///
  /// * [RegisterLicense] registerLicense (required):
  Future<License?> adminRegisterLicense(RegisterLicense registerLicense,) async {
    final response = await adminRegisterLicenseWithHttpInfo(registerLicense,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'License',) as License;
    
    }
    return null;
  }

  /// Removes all the users that are on the license. This will empty all the seats.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license, this is `id` and not `license_id`.
  Future<Response> adminRemoveAllUsersFromLicenseWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/licenses/{id}/remove-all-users/'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Removes all the users that are on the license. This will empty all the seats.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license, this is `id` and not `license_id`.
  Future<void> adminRemoveAllUsersFromLicense(int id,) async {
    final response = await adminRemoveAllUsersFromLicenseWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes the existing license related to the provided parameter. If the license is active, then all the users that are using the license will lose access to the features granted by that license.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license, this is `id` and not `license_id`.
  Future<Response> adminRemoveLicenseWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/licenses/{id}/'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Removes the existing license related to the provided parameter. If the license is active, then all the users that are using the license will lose access to the features granted by that license.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license, this is `id` and not `license_id`.
  Future<void> adminRemoveLicense(int id,) async {
    final response = await adminRemoveLicenseWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes the user related to the provided parameter and to the license related to the parameter. This only happens if the user is on the license, otherwise nothing will happen.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license, this is `id` and not `license_id`.
  ///
  /// * [int] userId (required):
  ///   The ID of the user that must be removed from the license.
  Future<Response> adminRemoveUserFromLicenseWithHttpInfo(int id, int userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/licenses/{id}/{user_id}/'
      .replaceAll('{id}', id.toString())
      .replaceAll('{user_id}', userId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Removes the user related to the provided parameter and to the license related to the parameter. This only happens if the user is on the license, otherwise nothing will happen.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The internal identifier of the license, this is `id` and not `license_id`.
  ///
  /// * [int] userId (required):
  ///   The ID of the user that must be removed from the license.
  Future<void> adminRemoveUserFromLicense(int id, int userId,) async {
    final response = await adminRemoveUserFromLicenseWithHttpInfo(id, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
