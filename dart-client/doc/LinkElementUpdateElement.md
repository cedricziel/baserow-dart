# openapi.model.LinkElementUpdateElement

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**visibility** | [**Visibility789Enum**](Visibility789Enum.md) |  | [optional] 
**styles** | [**ButtonLinkConfigBlock**](ButtonLinkConfigBlock.md) |  | [optional] 
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
**navigationType** | [**NavigationTypeEnum**](NavigationTypeEnum.md) | The navigation type.  * `page` - Page * `custom` - Custom | [optional] 
**navigateToPageId** | **int** | ('Destination page id for this link. If null then we use the navigate_to_url property instead.',) | [optional] 
**navigateToUrl** | **String** | If no page is selected, this indicate the destination of the link. | [optional] [default to '']
**pageParameters** | [**List<PageParameterValue>**](PageParameterValue.md) | The parameters for each parameters of the selected page if any. | [optional] [default to const []]
**target** | [**TargetEnum**](TargetEnum.md) | The target of the link when we click on it.  * `self` - Self * `blank` - Blank | [optional] 
**value** | **String** | The value of the element. Must be an formula. | [optional] [default to '']
**variant** | [**VariantEnum**](VariantEnum.md) | The variant of the link.  * `link` - Link * `button` - Button | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


