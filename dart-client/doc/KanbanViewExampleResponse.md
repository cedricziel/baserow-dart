# openapi.model.KanbanViewExampleResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rows** | [**Map<String, KanbanViewExampleResponseStack>**](KanbanViewExampleResponseStack.md) | Every select option related to the view's single select field can have its own entry like this. | [default to const {}]
**fieldOptions** | [**List<KanbanViewFieldOptions>**](KanbanViewFieldOptions.md) |  | [default to const []]
**rowMetadata** | [**Map<String, RowMetadata>**](RowMetadata.md) | An object keyed by row id with a value being an object containing additional metadata about that row. A row might not have metadata and will not be present as a key if so. | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


