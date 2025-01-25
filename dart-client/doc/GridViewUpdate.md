# openapi.model.GridViewUpdate

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**filterType** | [**ConditionTypeEnum**](ConditionTypeEnum.md) | Indicates whether all the rows should apply to all filters (AND) or to any filter (OR).  * `AND` - And * `OR` - Or | [optional] 
**filtersDisabled** | **bool** | Allows users to see results unfiltered while still keeping the filters saved for the view. | [optional] 
**publicViewPassword** | **String** | The new password or an empty string to remove any previous password from the view and make it publicly accessible again. | [optional] 
**ownershipType** | **String** | Indicates how the access to the view is determined. By default, views are collaborative and shared for all users that have access to the table. | [optional] 
**rowIdentifierType** | [**RowIdentifierTypeEnum**](RowIdentifierTypeEnum.md) |  | [optional] 
**rowHeightSize** | [**RowHeightSizeEnum**](RowHeightSizeEnum.md) |  | [optional] 
**public** | **bool** | Indicates whether the view is publicly accessible to visitors. | [optional] 
**slug** | **String** | The unique slug that can be used to construct a public URL. | [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


