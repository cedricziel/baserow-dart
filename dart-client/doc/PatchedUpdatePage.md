# openapi.model.PatchedUpdatePage

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**path** | **String** |  | [optional] 
**pathParams** | [**List<PathParam>**](PathParam.md) |  | [optional] [default to const []]
**visibility** | [**VisibilityC5fEnum**](VisibilityC5fEnum.md) | Controls the page's visibility. When set to 'logged-in', the builder's login_page must also be set.  * `all` - All * `logged-in` - Logged In | [optional] 
**roleType** | [**RoleTypeEnum**](RoleTypeEnum.md) | Role type is used in conjunction with roles to control access to this page.  * `allow_all` - Allow All * `allow_all_except` - Allow All Except * `disallow_all_except` - Disallow All Except | [optional] 
**roles** | [**Object**](.md) | List of user roles that are associated with this page. Used in conjunction with role_type. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


