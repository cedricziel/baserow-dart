//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;


class DatabaseTokensApi {
  DatabaseTokensApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// This endpoint check be used to check if the provided personal API token is valid. If returns a `200` response if so and a `403` is not. This can be used by integrations like Zapier or n8n to test if a token is valid.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> checkDatabaseTokenWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/tokens/check/';

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

  /// This endpoint check be used to check if the provided personal API token is valid. If returns a `200` response if so and a `403` is not. This can be used by integrations like Zapier or n8n to test if a token is valid.
  Future<void> checkDatabaseToken() async {
    final response = await checkDatabaseTokenWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Creates a new database token for a given workspace and for the authorized user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TokenCreate] tokenCreate (required):
  Future<Response> createDatabaseTokenWithHttpInfo(TokenCreate tokenCreate,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/tokens/';

    // ignore: prefer_final_locals
    Object? postBody = tokenCreate;

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

  /// Creates a new database token for a given workspace and for the authorized user.
  ///
  /// Parameters:
  ///
  /// * [TokenCreate] tokenCreate (required):
  Future<Token?> createDatabaseToken(TokenCreate tokenCreate,) async {
    final response = await createDatabaseTokenWithHttpInfo(tokenCreate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Token',) as Token;
    
    }
    return null;
  }

  /// Deletes the existing database token if it is owned by the authorized user and ifthe user has access to the related workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tokenId (required):
  ///   Deletes the database token related to the provided value.
  Future<Response> deleteDatabaseTokenWithHttpInfo(int tokenId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/tokens/{token_id}/'
      .replaceAll('{token_id}', tokenId.toString());

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

  /// Deletes the existing database token if it is owned by the authorized user and ifthe user has access to the related workspace.
  ///
  /// Parameters:
  ///
  /// * [int] tokenId (required):
  ///   Deletes the database token related to the provided value.
  Future<void> deleteDatabaseToken(int tokenId,) async {
    final response = await deleteDatabaseTokenWithHttpInfo(tokenId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Returns the requested database token if it is owned by the authorized user andif the user has access to the related workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tokenId (required):
  ///   Returns the database token related to the provided value.
  Future<Response> getDatabaseTokenWithHttpInfo(int tokenId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/tokens/{token_id}/'
      .replaceAll('{token_id}', tokenId.toString());

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

  /// Returns the requested database token if it is owned by the authorized user andif the user has access to the related workspace.
  ///
  /// Parameters:
  ///
  /// * [int] tokenId (required):
  ///   Returns the database token related to the provided value.
  Future<Token?> getDatabaseToken(int tokenId,) async {
    final response = await getDatabaseTokenWithHttpInfo(tokenId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Token',) as Token;
    
    }
    return null;
  }

  /// Lists all the database tokens that belong to the authorized user. A token can be used to create, read, update and delete rows in the tables of the token's workspace. It only works on the tables if the token has the correct permissions. The **Database table rows** endpoints can be used for these operations.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listDatabaseTokensWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/tokens/';

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

  /// Lists all the database tokens that belong to the authorized user. A token can be used to create, read, update and delete rows in the tables of the token's workspace. It only works on the tables if the token has the correct permissions. The **Database table rows** endpoints can be used for these operations.
  Future<List<Token>?> listDatabaseTokens() async {
    final response = await listDatabaseTokensWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Token>') as List)
        .cast<Token>()
        .toList(growable: false);

    }
    return null;
  }

  /// Updates the existing database token if it is owned by the authorized user and ifthe user has access to the related workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] tokenId (required):
  ///   Updates the database token related to the provided value.
  ///
  /// * [PatchedTokenUpdate] patchedTokenUpdate:
  Future<Response> updateDatabaseTokenWithHttpInfo(int tokenId, { PatchedTokenUpdate? patchedTokenUpdate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/database/tokens/{token_id}/'
      .replaceAll('{token_id}', tokenId.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchedTokenUpdate;

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

  /// Updates the existing database token if it is owned by the authorized user and ifthe user has access to the related workspace.
  ///
  /// Parameters:
  ///
  /// * [int] tokenId (required):
  ///   Updates the database token related to the provided value.
  ///
  /// * [PatchedTokenUpdate] patchedTokenUpdate:
  Future<Token?> updateDatabaseToken(int tokenId, { PatchedTokenUpdate? patchedTokenUpdate, }) async {
    final response = await updateDatabaseTokenWithHttpInfo(tokenId,  patchedTokenUpdate: patchedTokenUpdate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Token',) as Token;
    
    }
    return null;
  }
}
