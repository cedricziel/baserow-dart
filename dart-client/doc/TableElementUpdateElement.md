# openapi.model.TableElementUpdateElement

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**visibility** | [**Visibility789Enum**](Visibility789Enum.md) |  | [optional] 
**styles** | [**ButtonTableConfigBlock**](ButtonTableConfigBlock.md) |  | [optional] 
**styleBorderTopColor** | **String** | Top border color. | [optional] 
**styleBorderTopSize** | **int** | Pixel height of the top border. | [optional] 
**stylePaddingTop** | **int** | Padding size of the top border. | [optional] 
**styleMarginTop** | **int** | Margin size of the top border. | [optional] 
**styleBorderBottomColor** | **String** | Bottom border color | [optional] 
**styleBorderBottomSize** | **int** | Pixel height of the bottom border. | [optional] 
**stylePaddingBottom** | **int** | Padding size of the bottom border. | [optional] 
**styleMarginBottom** | **int** | Margin size of the bottom border. | [optional] 
**styleBorderLeftColor** | **String** | Left border color | [optional] 
**styleBorderLeftSize** | **int** | Pixel height of the left border. | [optional] 
**stylePaddingLeft** | **int** | Padding size of the left border. | [optional] 
**styleMarginLeft** | **int** | Margin size of the left border. | [optional] 
**styleBorderRightColor** | **String** | Right border color | [optional] 
**styleBorderRightSize** | **int** | Pixel height of the right border. | [optional] 
**stylePaddingRight** | **int** | Padding size of the right border. | [optional] 
**styleMarginRight** | **int** | Margin size of the right border. | [optional] 
**styleBackground** | [**StyleBackgroundEnum**](StyleBackgroundEnum.md) | What type of background the element should have.  * `none` - None * `color` - Color * `image` - Image | [optional] 
**styleBackgroundColor** | **String** | The background color if `style_background` is color. | [optional] 
**styleBackgroundFile** | [**UserFile**](UserFile.md) | The background image file | [optional] 
**styleBackgroundMode** | [**StyleBackgroundModeEnum**](StyleBackgroundModeEnum.md) | The mode of the background image  * `tile` - Tile * `fill` - Fill * `fit` - Fit | [optional] 
**styleWidth** | [**StyleWidthEnum**](StyleWidthEnum.md) | Indicates the width of the element.  * `full` - Full * `full-width` - Full Width * `normal` - Normal * `medium` - Medium * `small` - Small | [optional] 
**roleType** | [**RoleTypeEnum**](RoleTypeEnum.md) |  | [optional] 
**roles** | [**Object**](.md) | User roles associated with this element, used in conjunction with role_type. | [optional] 
**schemaProperty** | **String** | A multiple valued schema property to use for the data source. | [optional] 
**dataSourceId** | **int** | The data source we want to show in the element for. Only data_sources that return list are allowed. | [optional] 
**itemsPerPage** | **int** | The amount item loaded with each page. | [optional] [default to 20]
**buttonLoadMoreLabel** | **String** | The label of the show more button | [optional] [default to '']
**propertyOptions** | [**List<CollectionElementPropertyOptions>**](CollectionElementPropertyOptions.md) | The schema property options that can be set for the collection element. | [optional] [default to const []]
**isPubliclySortable** | **bool** | Whether this collection element is publicly sortable. | [readonly] [default to true]
**isPubliclyFilterable** | **bool** | Whether this collection element is publicly filterable. | [readonly] [default to true]
**isPubliclySearchable** | **bool** | Whether this collection element is publicly searchable. | [readonly] [default to true]
**fields** | [**List<CollectionField>**](CollectionField.md) |  | [optional] [default to const []]
**orientation** | [**Object**](.md) | The table orientation (horizontal or vertical) for each device type | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


