# openapi.model.PatchedViewUpdateView

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
**cardCoverImageField** | **int** | References a file field of which the first image must be shown as card cover image. | [optional] 
**title** | **String** | The title that is displayed at the beginning of the form. | [optional] 
**description** | **String** | The description that is displayed at the beginning of the form. | [optional] 
**mode** | [**Mode51eEnum**](Mode51eEnum.md) | Configurable mode of the form.  * `form` - form * `survey` - survey | [optional] 
**coverImage** | [**UserFile**](UserFile.md) | The cover image that must be displayed at the top of the form. | [optional] 
**logoImage** | [**UserFile**](UserFile.md) | The logo image that must be displayed at the top of the form. | [optional] 
**submitText** | **String** | The text displayed on the submit button. | [optional] 
**submitAction** | [**SubmitActionEnum**](SubmitActionEnum.md) | The action that must be performed after the visitor has filled out the form.  * `MESSAGE` - Message * `REDIRECT` - Redirect | [optional] 
**submitActionMessage** | **String** | If the `submit_action` is MESSAGE, then this message will be shown to the visitor after submitting the form. | [optional] 
**submitActionRedirectUrl** | **String** | If the `submit_action` is REDIRECT,then the visitors will be redirected to the this URL after submitting the form. | [optional] 
**receiveNotificationOnSubmit** | **bool** | A boolean indicating if the current user should be notified when the form is submitted. | [readonly] 
**singleSelectField** | **int** |  | [optional] 
**dateField** | **int** |  | [optional] 
**icalFeedUrl** | **String** | Read-only field with ICal feed endpoint. Note: this url will not be active if ical_public value is set to False. | [readonly] 
**icalPublic** | **bool** | A flag to show if ical feed is exposed. Set this field to True when modifying this resource to enable ICal feed url. | [optional] 
**startDateField** | **int** |  | [optional] 
**endDateField** | **int** |  | [optional] 
**timescale** | [**TimescaleEnum**](TimescaleEnum.md) | The timescale that the timeline should be displayed in.  * `day` - Day * `week` - Week * `month` - Month * `year` - Year | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


