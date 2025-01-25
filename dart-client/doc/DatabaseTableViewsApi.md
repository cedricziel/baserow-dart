# openapi.api.DatabaseTableViewsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**calendarIcalFeed**](DatabaseTableViewsApi.md#calendaricalfeed) | **GET** /api/database/views/calendar/{ical_slug}.ics | 
[**createDatabaseTableView**](DatabaseTableViewsApi.md#createdatabasetableview) | **POST** /api/database/views/table/{table_id}/ | 
[**databaseTablePublicViewLinkRowFieldLookup**](DatabaseTableViewsApi.md#databasetablepublicviewlinkrowfieldlookup) | **GET** /api/database/views/{slug}/link-row-field-lookup/{field_id}/ | 
[**deleteDatabaseTableView**](DatabaseTableViewsApi.md#deletedatabasetableview) | **DELETE** /api/database/views/{view_id}/ | 
[**duplicateDatabaseTableView**](DatabaseTableViewsApi.md#duplicatedatabasetableview) | **POST** /api/database/views/{view_id}/duplicate/ | 
[**getDatabaseTableView**](DatabaseTableViewsApi.md#getdatabasetableview) | **GET** /api/database/views/{view_id}/ | 
[**getDatabaseTableViewFieldOptions**](DatabaseTableViewsApi.md#getdatabasetableviewfieldoptions) | **GET** /api/database/views/{view_id}/field-options/ | 
[**getPublicViewInfo**](DatabaseTableViewsApi.md#getpublicviewinfo) | **GET** /api/database/views/{slug}/public/info/ | 
[**listDatabaseTableViews**](DatabaseTableViewsApi.md#listdatabasetableviews) | **GET** /api/database/views/table/{table_id}/ | 
[**orderDatabaseTableViews**](DatabaseTableViewsApi.md#orderdatabasetableviews) | **POST** /api/database/views/table/{table_id}/order/ | 
[**premiumViewAttributesUpdate**](DatabaseTableViewsApi.md#premiumviewattributesupdate) | **PATCH** /api/database/view/{view_id}/premium | 
[**publicViewTokenAuth**](DatabaseTableViewsApi.md#publicviewtokenauth) | **POST** /api/database/views/{slug}/public/auth/ | 
[**rotateCalendarViewIcalFeedSlug**](DatabaseTableViewsApi.md#rotatecalendarviewicalfeedslug) | **POST** /api/database/views/calendar/{view_id}/ical_slug_rotate/ | 
[**rotateDatabaseViewSlug**](DatabaseTableViewsApi.md#rotatedatabaseviewslug) | **POST** /api/database/views/{view_id}/rotate-slug/ | 
[**updateDatabaseTableView**](DatabaseTableViewsApi.md#updatedatabasetableview) | **PATCH** /api/database/views/{view_id}/ | 
[**updateDatabaseTableViewFieldOptions**](DatabaseTableViewsApi.md#updatedatabasetableviewfieldoptions) | **PATCH** /api/database/views/{view_id}/field-options/ | 


# **calendarIcalFeed**
> MultipartFile calendarIcalFeed(icalSlug, clientSessionId)



Returns ICal feed for a specific Calendar view identified by ical_slug value. Calendar View resource contains full url in .ical_feed_url field.

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

final api_instance = DatabaseTableViewsApi();
final icalSlug = icalSlug_example; // String | ICal feed unique slug.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.

try {
    final result = api_instance.calendarIcalFeed(icalSlug, clientSessionId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->calendarIcalFeed: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icalSlug** | **String**| ICal feed unique slug. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/calendar, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDatabaseTableView**
> ViewView createDatabaseTableView(tableId, clientSessionId, clientUndoRedoActionGroupId, include, viewCreateView)



Creates a new view for the table related to the provided `table_id` parameter. Depending on the type, different properties can optionally be set.

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

final api_instance = DatabaseTableViewsApi();
final tableId = 56; // int | Creates a view for the table related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final include = include_example; // String | A comma separated list of extra attributes to include on each view in the response. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively.
final viewCreateView = ViewCreateView(); // ViewCreateView | 

try {
    final result = api_instance.createDatabaseTableView(tableId, clientSessionId, clientUndoRedoActionGroupId, include, viewCreateView);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->createDatabaseTableView: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| Creates a view for the table related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **include** | **String**| A comma separated list of extra attributes to include on each view in the response. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively. | [optional] 
 **viewCreateView** | [**ViewCreateView**](ViewCreateView.md)|  | [optional] 

### Return type

[**ViewView**](ViewView.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **databaseTablePublicViewLinkRowFieldLookup**
> PaginationSerializerLinkRowValue databaseTablePublicViewLinkRowFieldLookup(fieldId, slug, search, searchMode)



If the view is publicly shared or if an authenticated user has access to the related workspace, then this endpoint can be used to do a value lookup of the link row fields that are included in the view. Normally it is not possible for a not authenticated visitor to fetch the rows of a table. This endpoint makes it possible to fetch the id and primary field value of the related table of a link row included in the view.

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

final api_instance = DatabaseTableViewsApi();
final fieldId = 56; // int | The field id of the link row field.
final slug = slug_example; // String | The slug related to the view.
final search = search_example; // String | If provided only rows with data that matches the search query are going to be returned.
final searchMode = searchMode_example; // String | If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour.

try {
    final result = api_instance.databaseTablePublicViewLinkRowFieldLookup(fieldId, slug, search, searchMode);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->databaseTablePublicViewLinkRowFieldLookup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fieldId** | **int**| The field id of the link row field. | 
 **slug** | **String**| The slug related to the view. | 
 **search** | **String**| If provided only rows with data that matches the search query are going to be returned. | [optional] 
 **searchMode** | **String**| If provided, allows API consumers to determine what kind of search experience they wish to have. If the default `SearchModes.MODE_FT_WITH_COUNT` is used, then Postgres full-text search is used. If `SearchModes.MODE_COMPAT` is provided then the search term will be exactly searched for including whitespace on each cell. This is the Baserow legacy search behaviour. | [optional] 

### Return type

[**PaginationSerializerLinkRowValue**](PaginationSerializerLinkRowValue.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDatabaseTableView**
> deleteDatabaseTableView(viewId, clientSessionId, clientUndoRedoActionGroupId)



Deletes the existing view. Note that all the related settings of the view are going to be deleted also. The data stays intact after deleting the view because this is related to the table and not the view.

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

final api_instance = DatabaseTableViewsApi();
final viewId = 56; // int | Deletes the view related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    api_instance.deleteDatabaseTableView(viewId, clientSessionId, clientUndoRedoActionGroupId);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->deleteDatabaseTableView: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| Deletes the view related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **duplicateDatabaseTableView**
> ViewView duplicateDatabaseTableView(viewId, clientSessionId, clientUndoRedoActionGroupId)



Duplicates an existing view if the user has access to it. When a view is duplicated everything is copied except: - The name is appended with the copy number. Ex: `ViewName`->`ViewName(2)` and `View(2)`->`View(3)` - If the original view is publicly shared, the new view will not be shared anymore

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

final api_instance = DatabaseTableViewsApi();
final viewId = 56; // int | Duplicates the view related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    final result = api_instance.duplicateDatabaseTableView(viewId, clientSessionId, clientUndoRedoActionGroupId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->duplicateDatabaseTableView: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| Duplicates the view related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 

### Return type

[**ViewView**](ViewView.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatabaseTableView**
> ViewView getDatabaseTableView(viewId, include)



Returns the existing view. Depending on the type different properties could be returned.

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

final api_instance = DatabaseTableViewsApi();
final viewId = 56; // int | Returns the view related to the provided value.
final include = include_example; // String | A comma separated list of extra attributes to include on the returned view. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively.

try {
    final result = api_instance.getDatabaseTableView(viewId, include);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->getDatabaseTableView: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| Returns the view related to the provided value. | 
 **include** | **String**| A comma separated list of extra attributes to include on the returned view. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively. | [optional] 

### Return type

[**ViewView**](ViewView.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatabaseTableViewFieldOptions**
> ViewFieldOptions getDatabaseTableViewFieldOptions(viewId)



Responds with the fields options of the provided view if the authenticated user has access to the related workspace.

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

final api_instance = DatabaseTableViewsApi();
final viewId = 56; // int | Responds with field options related to the provided value.

try {
    final result = api_instance.getDatabaseTableViewFieldOptions(viewId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->getDatabaseTableViewFieldOptions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| Responds with field options related to the provided value. | 

### Return type

[**ViewFieldOptions**](ViewFieldOptions.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPublicViewInfo**
> PublicViewInfo getPublicViewInfo(slug)



Returns the required public information to display a single shared view.

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

final api_instance = DatabaseTableViewsApi();
final slug = slug_example; // String | The slug of the view to get public information about.

try {
    final result = api_instance.getPublicViewInfo(slug);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->getPublicViewInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug of the view to get public information about. | 

### Return type

[**PublicViewInfo**](PublicViewInfo.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDatabaseTableViews**
> List<ViewView> listDatabaseTableViews(tableId, include, limit, type)



Lists all views of the table related to the provided `table_id`. If the workspace is related to a template, then this endpoint will be publicly accessible. A table can have multiple views. Each view can display the data in a different way. For example the `grid` view shows the in a spreadsheet like way. That type has custom endpoints for data retrieval and manipulation. In the future other views types like a calendar or Kanban are going to be added. Each type can have different properties.

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

final api_instance = DatabaseTableViewsApi();
final tableId = 56; // int | Returns only views of the table related to the provided value.
final include = include_example; // String | A comma separated list of extra attributes to include on each view in the response. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively.
final limit = 56; // int | The maximum amount of views that must be returned. This endpoint doesn't support pagination, but if you for example just need to fetch the first view, you can do that by setting a limit. There isn't a limit by default.
final type = type_example; // String | Optionally filter on the view type. If provided, only views of that type will be returned.

try {
    final result = api_instance.listDatabaseTableViews(tableId, include, limit, type);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->listDatabaseTableViews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| Returns only views of the table related to the provided value. | 
 **include** | **String**| A comma separated list of extra attributes to include on each view in the response. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively. | [optional] 
 **limit** | **int**| The maximum amount of views that must be returned. This endpoint doesn't support pagination, but if you for example just need to fetch the first view, you can do that by setting a limit. There isn't a limit by default. | [optional] 
 **type** | **String**| Optionally filter on the view type. If provided, only views of that type will be returned. | [optional] 

### Return type

[**List<ViewView>**](ViewView.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderDatabaseTableViews**
> orderDatabaseTableViews(tableId, orderViews, clientSessionId, clientUndoRedoActionGroupId)



Changes the order of the provided view ids to the matching position that the id has in the list. The order of the not provided views will be set to `0`.

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

final api_instance = DatabaseTableViewsApi();
final tableId = 56; // int | Updates the order of the views in the table related to the provided value.
final orderViews = OrderViews(); // OrderViews | 
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    api_instance.orderDatabaseTableViews(tableId, orderViews, clientSessionId, clientUndoRedoActionGroupId);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->orderDatabaseTableViews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableId** | **int**| Updates the order of the views in the table related to the provided value. | 
 **orderViews** | [**OrderViews**](OrderViews.md)|  | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 

### Return type

void (empty response body)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumViewAttributesUpdate**
> View premiumViewAttributesUpdate(viewId, patchedUpdatePremiumViewAttributes)



Sets view attributes only available for premium users.

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

final api_instance = DatabaseTableViewsApi();
final viewId = 56; // int | Sets show_logo of this view.
final patchedUpdatePremiumViewAttributes = PatchedUpdatePremiumViewAttributes(); // PatchedUpdatePremiumViewAttributes | 

try {
    final result = api_instance.premiumViewAttributesUpdate(viewId, patchedUpdatePremiumViewAttributes);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->premiumViewAttributesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| Sets show_logo of this view. | 
 **patchedUpdatePremiumViewAttributes** | [**PatchedUpdatePremiumViewAttributes**](PatchedUpdatePremiumViewAttributes.md)|  | [optional] 

### Return type

[**View**](View.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **publicViewTokenAuth**
> PublicViewAuthResponse publicViewTokenAuth(slug, publicViewAuthRequest)



Returns a valid never-expiring JWT token for this public shared view if the password provided matches with the one saved by the view's owner.

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

final api_instance = DatabaseTableViewsApi();
final slug = slug_example; // String | The slug of the grid view to get public information about.
final publicViewAuthRequest = PublicViewAuthRequest(); // PublicViewAuthRequest | 

try {
    final result = api_instance.publicViewTokenAuth(slug, publicViewAuthRequest);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->publicViewTokenAuth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**| The slug of the grid view to get public information about. | 
 **publicViewAuthRequest** | [**PublicViewAuthRequest**](PublicViewAuthRequest.md)|  | 

### Return type

[**PublicViewAuthResponse**](PublicViewAuthResponse.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rotateCalendarViewIcalFeedSlug**
> ViewView rotateCalendarViewIcalFeedSlug(viewId, clientSessionId, clientUndoRedoActionGroupId)



Rotates the unique slug of the calendar view's ical feed by replacing it with a new value. This would mean that the publicly shared URL of the view will change. Anyone with the old URL won't be able to access the view anymore.

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

final api_instance = DatabaseTableViewsApi();
final viewId = 56; // int | Rotates the ical feed slug of the calendar view related to the provided id.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    final result = api_instance.rotateCalendarViewIcalFeedSlug(viewId, clientSessionId, clientUndoRedoActionGroupId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->rotateCalendarViewIcalFeedSlug: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| Rotates the ical feed slug of the calendar view related to the provided id. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 

### Return type

[**ViewView**](ViewView.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rotateDatabaseViewSlug**
> ViewView rotateDatabaseViewSlug(viewId, clientSessionId, clientUndoRedoActionGroupId)



Rotates the unique slug of the view by replacing it with a new value. This would mean that the publicly shared URL of the view will change. Anyone with the old URL won't be able to access the viewanymore. Only view types which are sharable can have their slugs rotated.

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

final api_instance = DatabaseTableViewsApi();
final viewId = 56; // int | Rotates the slug of the view related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.

try {
    final result = api_instance.rotateDatabaseViewSlug(viewId, clientSessionId, clientUndoRedoActionGroupId);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->rotateDatabaseViewSlug: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| Rotates the slug of the view related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 

### Return type

[**ViewView**](ViewView.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDatabaseTableView**
> ViewView updateDatabaseTableView(viewId, clientSessionId, clientUndoRedoActionGroupId, include, patchedViewUpdateView)



Updates the existing view. The type cannot be changed. It depends on the existing type which properties can be changed.

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

final api_instance = DatabaseTableViewsApi();
final viewId = 56; // int | Updates the view related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final include = include_example; // String | A comma separated list of extra attributes to include on the returned view. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively.
final patchedViewUpdateView = PatchedViewUpdateView(); // PatchedViewUpdateView | 

try {
    final result = api_instance.updateDatabaseTableView(viewId, clientSessionId, clientUndoRedoActionGroupId, include, patchedViewUpdateView);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->updateDatabaseTableView: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| Updates the view related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **include** | **String**| A comma separated list of extra attributes to include on the returned view. The supported attributes are `filters`, `sortings` and `decorations`. For example `include=filters,sortings` will add the attributes `filters` and `sortings` to every returned view, containing a list of the views filters and sortings respectively. | [optional] 
 **patchedViewUpdateView** | [**PatchedViewUpdateView**](PatchedViewUpdateView.md)|  | [optional] 

### Return type

[**ViewView**](ViewView.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDatabaseTableViewFieldOptions**
> ViewFieldOptions updateDatabaseTableViewFieldOptions(viewId, clientSessionId, clientUndoRedoActionGroupId, patchedViewFieldOptions)



Updates the field options of a view. The field options differ per field type  This could for example be used to update the field width of a `grid` view if the user changes it.

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

final api_instance = DatabaseTableViewsApi();
final viewId = 56; // int | Updates the field options related to the provided value.
final clientSessionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone.
final clientUndoRedoActionGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call.
final patchedViewFieldOptions = PatchedViewFieldOptions(); // PatchedViewFieldOptions | 

try {
    final result = api_instance.updateDatabaseTableViewFieldOptions(viewId, clientSessionId, clientUndoRedoActionGroupId, patchedViewFieldOptions);
    print(result);
} catch (e) {
    print('Exception when calling DatabaseTableViewsApi->updateDatabaseTableViewFieldOptions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **int**| Updates the field options related to the provided value. | 
 **clientSessionId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular client session. Then using the undo/redo endpoints with the same ClientSessionId header this action can be undone/redone. | [optional] 
 **clientUndoRedoActionGroupId** | **String**| An optional header that marks the action performed by this request as having occurred in a particular action group.Then calling the undo/redo endpoint with the same ClientSessionId header, all the actions belonging to the same action group can be undone/redone together in a single API call. | [optional] 
 **patchedViewFieldOptions** | [**PatchedViewFieldOptions**](PatchedViewFieldOptions.md)|  | [optional] 

### Return type

[**ViewFieldOptions**](ViewFieldOptions.md)

### Authorization

[UserSource JWT](../README.md#UserSource JWT), [JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

