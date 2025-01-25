# openapi.model.CalendarViewExampleResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rows** | [**Map<String, CalendarViewExampleResponseStack>**](CalendarViewExampleResponseStack.md) | Every date bucket (e.g. '2023-01-01') related to the view's date field can have its own entry like this. | [default to const {}]
**fieldOptions** | [**List<CalendarViewFieldOptions>**](CalendarViewFieldOptions.md) |  | [default to const []]
**rowMetadata** | [**Map<String, RowMetadata>**](RowMetadata.md) | An object keyed by row id with a value being an object containing additional metadata about that row. A row might not have metadata and will not be present as a key if so. | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


