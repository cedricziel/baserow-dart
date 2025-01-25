# openapi.model.Page

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**name** | **String** |  | 
**path** | **String** |  | 
**pathParams** | [**List<PathParam>**](PathParam.md) |  | [optional] [default to const []]
**order** | **int** | Lowest first. | 
**builderId** | **int** |  | [readonly] 
**shared** | **bool** |  | [readonly] 
**visibility** | [**VisibilityC5fEnum**](VisibilityC5fEnum.md) | Controls the page's visibility. When set to 'logged-in', the builder's login_page must also be set.  * `all` - All * `logged-in` - Logged In | [readonly] 
**roleType** | [**RoleTypeEnum**](RoleTypeEnum.md) | Role type is used in conjunction with roles to control access to this page.  * `allow_all` - Allow All * `allow_all_except` - Allow All Except * `disallow_all_except` - Disallow All Except | [readonly] 
**roles** | [**Object**](.md) | List of user roles that are associated with this page. Used in conjunction with role_type. | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


