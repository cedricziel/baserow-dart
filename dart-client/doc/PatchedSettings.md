# openapi.model.PatchedSettings

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowNewSignups** | **bool** | Indicates whether new users can create a new account when signing up. | [optional] 
**allowSignupsViaWorkspaceInvitations** | **bool** | Indicates whether invited users can create an account when signing up, even if allow_new_signups is disabled. | [optional] 
**allowResetPassword** | **bool** | Indicates whether users can request a password reset link. | [optional] 
**allowGlobalWorkspaceCreation** | **bool** | Indicates whether all users can create workspaces, or just staff. | [optional] 
**accountDeletionGraceDelay** | **int** | Number of days after the last login for an account pending deletion to be deleted | [optional] 
**showAdminSignupPage** | **bool** | Indicates that there are no admin users in the database yet, so in the frontend the signup form will be shown instead of the login page. | [optional] 
**trackWorkspaceUsage** | **bool** | Runs a job once per day which calculates per workspace row counts and file storage usage, displayed on the admin workspace page. | [optional] 
**showBaserowHelpRequest** | **bool** | Indicates whether the `We need your help!` message will be shown on the dashboard | [optional] 
**coBrandingLogo** | [**UserFile**](UserFile.md) | Co-branding logo that's placed next to the Baserow logo (176x29). | [optional] 
**emailVerification** | [**EmailVerificationEnum**](EmailVerificationEnum.md) |  | [optional] 
**verifyImportSignature** | **bool** | Indicates whether the signature of imported files should be verified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


