# openapi.model.ActionScopes

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**root** | **bool** | If set to true then actions registered in the root scope will be included when undoing or redoing. | [optional] 
**workspace** | **int** | If set to a workspaces id then any actions directly related to that workspace will be be included when undoing or redoing. | [optional] 
**application** | **int** | If set to an applications id then any actions directly related to that application will be be included when undoing or redoing. | [optional] 
**table** | **int** | If set to a table id then any actions directly related to that table will be be included when undoing or redoing. | [optional] 
**view** | **int** | If set to an view id then any actions directly related to that view will be be included when undoing or redoing. | [optional] 
**teamsInWorkspace** | **int** | If set to a workspace id then any actions directly related to that workspace will be be included when undoing or redoing. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


