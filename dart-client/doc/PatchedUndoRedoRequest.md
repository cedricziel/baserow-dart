# openapi.model.PatchedUndoRedoRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scopes** | [**ActionScopes**](ActionScopes.md) | A JSON object with keys and values representing the various action scopes to include when undoing or redoing. Every action in Baserow will be associated with a action scope, when undoing/redoing only actions which match any of the provided scope key:value pairs will included when this endpoint picks the next action to undo/redo. If no scopes are provided then all actions performed in the client session will be included when undoing/redoing. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


