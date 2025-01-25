# openapi.model.RepeatElementCreateElement

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order** | **double** | Lowest first. | [readonly] 
**beforeId** | **int** | If provided, creates the element before the element with the given id. | [optional] 
**type** | [**TypeD53Enum**](TypeD53Enum.md) | The type of the element.  * `heading` - heading * `text` - text * `link` - link * `image` - image * `input_text` - input_text * `column` - column * `button` - button * `table` - table * `repeat` - repeat * `record_selector` - record_selector * `form_container` - form_container * `choice` - choice * `checkbox` - checkbox * `iframe` - iframe * `datetime_picker` - datetime_picker * `header` - header * `footer` - footer * `auth_form` - auth_form | 
**parentElementId** | **int** | If provided, creates the element as a child of the element with the given id. | [optional] 
**placeInContainer** | **String** | The place in the container. | [optional] 
**visibility** | [**Visibility789Enum**](Visibility789Enum.md) |  | [optional] [default to Visibility789Enum.all]
**styles** | [**ButtonConfigBlock**](ButtonConfigBlock.md) |  | [optional] 
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
**schemaProperty** | **String** | A multiple valued schema property to use for the data source. | [optional] 
**dataSourceId** | **int** | The data source we want to show in the element for. Only data_sources that return list are allowed. | [optional] 
**itemsPerPage** | **int** | The amount item loaded with each page. | [optional] [default to 20]
**buttonLoadMoreLabel** | **String** | The label of the show more button | [optional] [default to '']
**propertyOptions** | [**List<CollectionElementPropertyOptions>**](CollectionElementPropertyOptions.md) | The schema property options that can be set for the collection element. | [optional] [default to const []]
**isPubliclySortable** | **bool** | Whether this collection element is publicly sortable. | [readonly] [default to true]
**isPubliclyFilterable** | **bool** | Whether this collection element is publicly filterable. | [readonly] [default to true]
**isPubliclySearchable** | **bool** | Whether this collection element is publicly searchable. | [readonly] [default to true]
**orientation** | [**OrientationEnum**](OrientationEnum.md) |  | [optional] 
**itemsPerRow** | [**Object**](.md) | The amount repetitions per row, per device type. Only applicable when the orientation is horizontal. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


