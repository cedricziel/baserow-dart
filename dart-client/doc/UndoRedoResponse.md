# openapi.model.UndoRedoResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actions** | [**List<UndoRedoAction>**](UndoRedoAction.md) |  | [default to const []]
**resultCode** | **String** | Indicates the result of the undo/redo operation. Will be 'SUCCESS' on success, 'NOTHING_TO_DO' when there is no action to undo/redo and 'SKIPPED_DUE_TO_ERROR' when the undo/redo failed due to a conflict or error and was skipped over. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


