# openapi.model.PaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fieldOptions** | [**Map<String, GalleryViewFieldOptions>**](GalleryViewFieldOptions.md) | An object containing the field id as key and the properties related to view as value. | [optional] [default to const {}]
**rowMetadata** | [**Map<String, RowMetadata>**](RowMetadata.md) | An object keyed by row id with a value being an object containing additional metadata about that row. A row might not have metadata and will not be present as a key if so. | [optional] [default to const {}]
**count** | **int** | The total amount of results. | 
**next** | **String** | URL to the next page. | 
**previous** | **String** | URL to the previous page. | 
**results** | [**List<ExampleRowResponse>**](ExampleRowResponse.md) |  | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


