# openapi.api.DatabaseTableFieldsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changePrimaryField**](DatabaseTableFieldsApi.md#changeprimaryfield) | **POST** /api/database/fields/table/{table_id}/change-primary-field/ | 
[**createDatabaseTableField**](DatabaseTableFieldsApi.md#createdatabasetablefield) | **POST** /api/database/fields/table/{table_id}/ | 
[**deleteDatabaseTableField**](DatabaseTableFieldsApi.md#deletedatabasetablefield) | **DELETE** /api/database/fields/{field_id}/ | 
[**duplicateTableField**](DatabaseTableFieldsApi.md#duplicatetablefield) | **POST** /api/database/fields/{field_id}/duplicate/async/ | 
[**generateFormulaWithAi**](DatabaseTableFieldsApi.md#generateformulawithai) | **POST** /api/database/fields/table/{table_id}/generate-ai-formula/ | 
[**generateTableAiFieldValue**](DatabaseTableFieldsApi.md#generatetableaifieldvalue) | **POST** /api/database/fields/{field_id}/generate-ai-field-values/ | 
[**getDatabaseFieldUniqueRowValues**](DatabaseTableFieldsApi.md#getdatabasefielduniquerowvalues) | **GET** /api/database/fields/{field_id}/unique_row_values/ | 
[**getDatabaseTableField**](DatabaseTableFieldsApi.md#getdatabasetablefield) | **GET** /api/database/fields/{field_id}/ | 
[**listDatabaseTableFields**](DatabaseTableFieldsApi.md#listdatabasetablefields) | **GET** /api/database/fields/table/{table_id}/ | 
[**typeFormulaField**](DatabaseTableFieldsApi.md#typeformulafield) | **POST** /api/database/formula/{table_id}/type/ | 
[**updateDatabaseTableField**](DatabaseTableFieldsApi.md#updatedatabasetablefield) | **PATCH** /api/database/fields/{field_id}/ | 


# **changePrimaryField**
> FieldField changePrimaryField(tableId, changePrimaryFieldParams, clientSessionId, clientUndoRedoActionGroupId)



Changes the primary field of a table to the one provided in the body payload.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableFieldsApi();
final tableId = 56; // int | The table where to update the primary field in.
final changePrimaryFieldParams = ChangePrimaryFieldParams(); // ChangePrimaryFieldParams | 
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    final result = api_instance.changePrimaryField(tableId, changePrimaryFieldParams, clientSessionId, clientUndoRedoActionGroupId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableFieldsApi->changePrimaryField: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| The table where to update the primary field in. | 
 **changePrimaryFieldParams** | [**ChangePrimaryFieldParams**](ChangePrimaryFieldParams.md)|  | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 

### Return type

[**FieldField**](FieldField.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDatabaseTableField**
> FieldFieldSerializerWithRelatedFields createDatabaseTableField(tableId, clientSessionId, clientUndoRedoActionGroupId, fieldCreateField)



Creates a new field for the table related to the provided `table_id` parameter if the authorized user has access to the related database's workspace. Depending on the type, different properties can optionally be set.If creating the field causes other fields to change then the specificinstances of those fields will be included in the related fields response key.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: Database token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableFieldsApi();
final tableId = 56; // int | Creates a new field for the provided table related to the value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final fieldCreateField = FieldCreateField(); // FieldCreateField | 

try {
    final result = api_instance.createDatabaseTableField(tableId, clientSessionId, clientUndoRedoActionGroupId, fieldCreateField);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableFieldsApi->createDatabaseTableField: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| Creates a new field for the provided table related to the value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **fieldCreateField** | [**FieldCreateField**](FieldCreateField.md)|  | [optional] 

### Return type

[**FieldFieldSerializerWithRelatedFields**](FieldFieldSerializerWithRelatedFields.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT), [Database token](../README.md#Database token)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDatabaseTableField**
> RelatedFields deleteDatabaseTableField(fieldId, clientSessionId, clientUndoRedoActionGroupId)



Deletes the existing field if the authorized user has access to the related database's workspace. Note that all the related data to that field is also deleted. Primary fields cannot be deleted because their value represents the row. If deleting the field causes other fields to change then the specificinstances of those fields will be included in the related fields response key.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableFieldsApi();
final fieldId = 56; // int | Deletes the field related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    final result = api_instance.deleteDatabaseTableField(fieldId, clientSessionId, clientUndoRedoActionGroupId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableFieldsApi->deleteDatabaseTableField: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fieldId** | **int**| Deletes the field related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 

### Return type

[**RelatedFields**](RelatedFields.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **duplicateTableField**
> DuplicateFieldJobTypeResponse duplicateTableField(fieldId, clientSessionId, clientUndoRedoActionGroupId)



Duplicates the table with the provided `table_id` parameter if the authorized user has access to the database's workspace.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableFieldsApi();
final fieldId = 56; // int | The field to duplicate.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    final result = api_instance.duplicateTableField(fieldId, clientSessionId, clientUndoRedoActionGroupId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableFieldsApi->duplicateTableField: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fieldId** | **int**| The field to duplicate. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 

### Return type

[**DuplicateFieldJobTypeResponse**](DuplicateFieldJobTypeResponse.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateFormulaWithAi**
> GenerateFormulaWithAIResponse generateFormulaWithAi(tableId, generateFormulaWithAIRequest)



This endpoint generates a Baserow formula for the table related to the provided id, based on the human readable input provided in the request body. This is a **premium** feature.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableFieldsApi();
final tableId = 56; // int | The table to generate the formula for.
final generateFormulaWithAIRequest = GenerateFormulaWithAIRequest(); // GenerateFormulaWithAIRequest | 

try {
    final result = api_instance.generateFormulaWithAi(tableId, generateFormulaWithAIRequest);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableFieldsApi->generateFormulaWithAi: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| The table to generate the formula for. | 
 **generateFormulaWithAIRequest** | [**GenerateFormulaWithAIRequest**](GenerateFormulaWithAIRequest.md)|  | 

### Return type

[**GenerateFormulaWithAIResponse**](GenerateFormulaWithAIResponse.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateTableAiFieldValue**
> String generateTableAiFieldValue(fieldId, clientSessionId, clientUndoRedoActionGroupId)



Endpoint that's used by the AI field to start an sync task that will update the cell value of the provided row IDs based on the dynamically constructed prompt configured in the field settings.  This is a **premium** feature.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableFieldsApi();
final fieldId = 56; // int | The field to generate the value for.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    final result = api_instance.generateTableAiFieldValue(fieldId, clientSessionId, clientUndoRedoActionGroupId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableFieldsApi->generateTableAiFieldValue: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fieldId** | **int**| The field to generate the value for. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 

### Return type

**String**

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatabaseFieldUniqueRowValues**
> UniqueRowValues getDatabaseFieldUniqueRowValues(fieldId, limit, splitCommaSeparated)



Returns a list of all the unique row values for an existing field, sorted in order of frequency.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableFieldsApi();
final fieldId = 56; // int | Returns the values related to the provided field.
final limit = 56; // int | Defines how many values should be returned.
final splitCommaSeparated = true; // bool | Indicates whether the original column values must be splitted by comma.

try {
    final result = api_instance.getDatabaseFieldUniqueRowValues(fieldId, limit, splitCommaSeparated);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableFieldsApi->getDatabaseFieldUniqueRowValues: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fieldId** | **int**| Returns the values related to the provided field. | 
 **limit** | **int**| Defines how many values should be returned. | [optional] 
 **splitCommaSeparated** | **bool**| Indicates whether the original column values must be splitted by comma. | [optional] 

### Return type

[**UniqueRowValues**](UniqueRowValues.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatabaseTableField**
> FieldField getDatabaseTableField(fieldId)



Returns the existing field if the authorized user has access to the related database's workspace. Depending on the type different properties could be returned.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableFieldsApi();
final fieldId = 56; // int | Returns the field related to the provided value.

try {
    final result = api_instance.getDatabaseTableField(fieldId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableFieldsApi->getDatabaseTableField: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fieldId** | **int**| Returns the field related to the provided value. | 

### Return type

[**FieldField**](FieldField.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDatabaseTableFields**
> List<FieldField> listDatabaseTableFields(tableId)



Lists all the fields of the table related to the provided parameter if the user has access to the related database's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible. A table consists of fields and each field can have a different type. Each type can have different properties. A field is comparable with a regular table's column.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: Database token
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Database token').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableFieldsApi();
final tableId = 56; // int | Returns only the fields of the table related to the provided value.

try {
    final result = api_instance.listDatabaseTableFields(tableId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableFieldsApi->listDatabaseTableFields: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| Returns only the fields of the table related to the provided value. | 

### Return type

[**List<FieldField>**](FieldField.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT), [Database token](../README.md#Database token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **typeFormulaField**
> TypeFormulaResult typeFormulaField(tableId, typeFormulaRequest)



Calculates and returns the type of the specified formula value. Does not change the state of the field in any way.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableFieldsApi();
final tableId = 56; // int | The table id of the formula field to type.
final typeFormulaRequest = TypeFormulaRequest(); // TypeFormulaRequest | 

try {
    final result = api_instance.typeFormulaField(tableId, typeFormulaRequest);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableFieldsApi->typeFormulaField: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| The table id of the formula field to type. | 
 **typeFormulaRequest** | [**TypeFormulaRequest**](TypeFormulaRequest.md)|  | 

### Return type

[**TypeFormulaResult**](TypeFormulaResult.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDatabaseTableField**
> FieldFieldSerializerWithRelatedFields updateDatabaseTableField(fieldId, clientSessionId, clientUndoRedoActionGroupId, patchedFieldUpdateField)



Updates the existing field if the authorized user has access to the related database's workspace. The type can also be changed and depending on that type, different additional properties can optionally be set. If you change the field type it could happen that the data conversion fails, in that case the `ERROR_CANNOT_CHANGE_FIELD_TYPE` is returned, but this rarely happens. If a data value cannot be converted it is set to `null` so data might go lost.If updated the field causes other fields to change then the specificinstances of those fields will be included in the related fields response key.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: UserSource JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('UserSource JWT').setAccessToken(yourTokenGeneratorFunction);
// TODO Configure HTTP Bearer authorization: JWT
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('JWT').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DatabaseTableFieldsApi();
final fieldId = 56; // int | Updates the field related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final patchedFieldUpdateField = PatchedFieldUpdateField(); // PatchedFieldUpdateField | 

try {
    final result = api_instance.updateDatabaseTableField(fieldId, clientSessionId, clientUndoRedoActionGroupId, patchedFieldUpdateField);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableFieldsApi->updateDatabaseTableField: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fieldId** | **int**| Updates the field related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **patchedFieldUpdateField** | [**PatchedFieldUpdateField**](PatchedFieldUpdateField.md)|  | [optional] 

### Return type

[**FieldFieldSerializerWithRelatedFields**](FieldFieldSerializerWithRelatedFields.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

