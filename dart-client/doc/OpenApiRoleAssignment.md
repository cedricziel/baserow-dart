# openapi.model.OpenApiRoleAssignment

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [readonly] 
**role** | **String** | The uid of the role assigned to the user or team in the given workspace. | 
**subject** | [**OpenApiSubjectField**](OpenApiSubjectField.md) | The structure of the subject field depends on the subject typereturned and will have additional fields accordingly | 
**subjectId** | **int** | The subject ID. | 
**scopeId** | **int** | The unique scope ID. | 
**subjectType** | [**SubjectType398Enum**](SubjectType398Enum.md) | The subject type.  * `auth.User` - auth.User * `anonymous` - anonymous * `user_source.user` - user_source.user * `core.Token` - core.Token * `baserow_enterprise.Team` - baserow_enterprise.Team | 
**scopeType** | [**ScopeTypeEnum**](ScopeTypeEnum.md) | The type of the scope object. The scope object limit the role assignment to this scope and all its descendants.  * `core` - core * `application` - application * `workspace` - workspace * `workspace_invitation` - workspace_invitation * `snapshot` - snapshot * `workspace_user` - workspace_user * `integration` - integration * `user_source` - user_source * `database` - database * `database_table` - database_table * `database_field` - database_field * `database_view` - database_view * `database_view_decoration` - database_view_decoration * `database_view_sort` - database_view_sort * `database_view_group` - database_view_group * `database_view_filter` - database_view_filter * `database_view_filter_group` - database_view_filter_group * `token` - token * `builder` - builder * `builder_page` - builder_page * `builder_element` - builder_element * `builder_domain` - builder_domain * `builder_data_source` - builder_data_source * `builder_workflow_action` - builder_workflow_action * `team` - team * `team_subject` - team_subject * `license` - license | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


