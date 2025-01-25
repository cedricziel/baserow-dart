# openapi.model.ExportApplicationsJobCreateJob

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** |  | [readonly] 
**exportedFileName** | **String** |  | [readonly] 
**type** | [**Type99fEnum**](Type99fEnum.md) | The type of the job.  * `duplicate_application` - duplicate_application * `install_template` - install_template * `create_snapshot` - create_snapshot * `restore_snapshot` - restore_snapshot * `export_applications` - export_applications * `import_applications` - import_applications * `airtable` - airtable * `file_import` - file_import * `duplicate_table` - duplicate_table * `duplicate_field` - duplicate_field * `sync_data_sync_table` - sync_data_sync_table * `duplicate_page` - duplicate_page * `publish_domain` - publish_domain * `audit_log_export` - audit_log_export | 
**applicationIds** | **List<int>** | The application IDs to export. If not provided, all the applications for the workspace will be exported. | [optional] [default to const []]
**onlyStructure** | **bool** | If True, only the structure of the applications will be exported. If False, the data will be included as well. | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


