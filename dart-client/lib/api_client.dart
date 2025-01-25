//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of baserow_api;

class ApiClient {
  ApiClient({this.basePath = 'http://localhost', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AIFieldCreateField':
          return AIFieldCreateField.fromJson(value);
        case 'AIFieldField':
          return AIFieldField.fromJson(value);
        case 'AIFieldFieldSerializerWithRelatedFields':
          return AIFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'AIFieldUpdateField':
          return AIFieldUpdateField.fromJson(value);
        case 'AcceptWorkspaceInvitation400Response':
          return AcceptWorkspaceInvitation400Response.fromJson(value);
        case 'Account':
          return Account.fromJson(value);
        case 'ActionScopes':
          return ActionScopes.fromJson(value);
        case 'AdminAddUserToLicense400Response':
          return AdminAddUserToLicense400Response.fromJson(value);
        case 'AdminAddUserToLicense404Response':
          return AdminAddUserToLicense404Response.fromJson(value);
        case 'AdminCreateUser400Response':
          return AdminCreateUser400Response.fromJson(value);
        case 'AdminDashboard':
          return AdminDashboard.fromJson(value);
        case 'AdminDashboardPerDay':
          return AdminDashboardPerDay.fromJson(value);
        case 'AdminDeleteUser400Response':
          return AdminDeleteUser400Response.fromJson(value);
        case 'AdminDeleteWorkspace400Response':
          return AdminDeleteWorkspace400Response.fromJson(value);
        case 'AdminEditUser400Response':
          return AdminEditUser400Response.fromJson(value);
        case 'AdminGetLicense404Response':
          return AdminGetLicense404Response.fromJson(value);
        case 'AdminImpersonateUser200Response':
          return AdminImpersonateUser200Response.fromJson(value);
        case 'AdminImpersonateUser200ResponseUser':
          return AdminImpersonateUser200ResponseUser.fromJson(value);
        case 'AdminRegisterLicense400Response':
          return AdminRegisterLicense400Response.fromJson(value);
        case 'AdminRemoveUserFromLicense400Response':
          return AdminRemoveUserFromLicense400Response.fromJson(value);
        case 'AggregationRawTypeEnum':
          return AggregationRawTypeEnumTypeTransformer().decode(value);
        case 'AiOutputTypeEnum':
          return AiOutputTypeEnumTypeTransformer().decode(value);
        case 'AirtableImportJobCreateJob':
          return AirtableImportJobCreateJob.fromJson(value);
        case 'AirtableImportJobJob':
          return AirtableImportJobJob.fromJson(value);
        case 'AlignmentEnum':
          return AlignmentEnumTypeTransformer().decode(value);
        case 'AnthropicSettings':
          return AnthropicSettings.fromJson(value);
        case 'AppAuthProviderAppAuthProvider':
          return AppAuthProviderAppAuthProvider.fromJson(value);
        case 'AppAuthProviderBaseAppAuthProvider':
          return AppAuthProviderBaseAppAuthProvider.fromJson(value);
        case 'ApplicationApplication':
          return ApplicationApplication.fromJson(value);
        case 'ApplicationBaseApplicationCreatePolymorphic':
          return ApplicationBaseApplicationCreatePolymorphic.fromJson(value);
        case 'ArrayFormulaTypeEnum':
          return ArrayFormulaTypeEnumTypeTransformer().decode(value);
        case 'AssignRole400Response':
          return AssignRole400Response.fromJson(value);
        case 'AssignRole404Response':
          return AssignRole404Response.fromJson(value);
        case 'AsyncAuditLogExport400Response':
          return AsyncAuditLogExport400Response.fromJson(value);
        case 'AsyncAuditLogExport404Response':
          return AsyncAuditLogExport404Response.fromJson(value);
        case 'AuditLog':
          return AuditLog.fromJson(value);
        case 'AuditLogActionType':
          return AuditLogActionType.fromJson(value);
        case 'AuditLogExportJobCreateJob':
          return AuditLogExportJobCreateJob.fromJson(value);
        case 'AuditLogExportJobJob':
          return AuditLogExportJobJob.fromJson(value);
        case 'AuditLogList400Response':
          return AuditLogList400Response.fromJson(value);
        case 'AuditLogUser':
          return AuditLogUser.fromJson(value);
        case 'AuditLogWorkspace':
          return AuditLogWorkspace.fromJson(value);
        case 'AuthFormElementCreateElement':
          return AuthFormElementCreateElement.fromJson(value);
        case 'AuthFormElementElement':
          return AuthFormElementElement.fromJson(value);
        case 'AuthFormElementPublicElement':
          return AuthFormElementPublicElement.fromJson(value);
        case 'AuthFormElementUpdateElement':
          return AuthFormElementUpdateElement.fromJson(value);
        case 'AuthProviderLoginUrl400Response':
          return AuthProviderLoginUrl400Response.fromJson(value);
        case 'AuthenticationProviderAuthProvider':
          return AuthenticationProviderAuthProvider.fromJson(value);
        case 'AutonumberFieldCreateField':
          return AutonumberFieldCreateField.fromJson(value);
        case 'AutonumberFieldField':
          return AutonumberFieldField.fromJson(value);
        case 'AutonumberFieldFieldSerializerWithRelatedFields':
          return AutonumberFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'AutonumberFieldUpdateField':
          return AutonumberFieldUpdateField.fromJson(value);
        case 'BaseExporterOptions':
          return BaseExporterOptions.fromJson(value);
        case 'BaserowImpersonateAuthToken':
          return BaserowImpersonateAuthToken.fromJson(value);
        case 'BatchAssignRole400Response':
          return BatchAssignRole400Response.fromJson(value);
        case 'BatchCreateDatabaseTableRows400Response':
          return BatchCreateDatabaseTableRows400Response.fromJson(value);
        case 'BatchCreateRoleAssignment':
          return BatchCreateRoleAssignment.fromJson(value);
        case 'BatchDeleteDatabaseTableRows400Response':
          return BatchDeleteDatabaseTableRows400Response.fromJson(value);
        case 'BatchDeleteRows':
          return BatchDeleteRows.fromJson(value);
        case 'BlankEnum':
          return BlankEnumTypeTransformer().decode(value);
        case 'BooleanFieldCreateField':
          return BooleanFieldCreateField.fromJson(value);
        case 'BooleanFieldField':
          return BooleanFieldField.fromJson(value);
        case 'BooleanFieldFieldSerializerWithRelatedFields':
          return BooleanFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'BooleanFieldUpdateField':
          return BooleanFieldUpdateField.fromJson(value);
        case 'BuilderApplication':
          return BuilderApplication.fromJson(value);
        case 'BuilderBaseApplicationCreatePolymorphic':
          return BuilderBaseApplicationCreatePolymorphic.fromJson(value);
        case 'BuilderBaseApplicationUpdatePolymorphic':
          return BuilderBaseApplicationUpdatePolymorphic.fromJson(value);
        case 'BuilderWorkflowAction':
          return BuilderWorkflowAction.fromJson(value);
        case 'BuilderWorkflowActionTypeBuilderWorkflowAction':
          return BuilderWorkflowActionTypeBuilderWorkflowAction.fromJson(value);
        case 'BuilderWorkflowActionTypeCreateBuilderWorkflowAction':
          return BuilderWorkflowActionTypeCreateBuilderWorkflowAction.fromJson(value);
        case 'ButtonConfigBlock':
          return ButtonConfigBlock.fromJson(value);
        case 'ButtonElementCreateElement':
          return ButtonElementCreateElement.fromJson(value);
        case 'ButtonElementElement':
          return ButtonElementElement.fromJson(value);
        case 'ButtonElementPublicElement':
          return ButtonElementPublicElement.fromJson(value);
        case 'ButtonElementUpdateElement':
          return ButtonElementUpdateElement.fromJson(value);
        case 'ButtonInputConfigBlock':
          return ButtonInputConfigBlock.fromJson(value);
        case 'ButtonLinkConfigBlock':
          return ButtonLinkConfigBlock.fromJson(value);
        case 'ButtonTableConfigBlock':
          return ButtonTableConfigBlock.fromJson(value);
        case 'ButtonThemeConfigBlock':
          return ButtonThemeConfigBlock.fromJson(value);
        case 'ButtonWidthEnum':
          return ButtonWidthEnumTypeTransformer().decode(value);
        case 'CalendarIcalFeed400Response':
          return CalendarIcalFeed400Response.fromJson(value);
        case 'CalendarViewCreateView':
          return CalendarViewCreateView.fromJson(value);
        case 'CalendarViewExampleResponse':
          return CalendarViewExampleResponse.fromJson(value);
        case 'CalendarViewExampleResponseStack':
          return CalendarViewExampleResponseStack.fromJson(value);
        case 'CalendarViewFieldOptions':
          return CalendarViewFieldOptions.fromJson(value);
        case 'CalendarViewUpdate':
          return CalendarViewUpdate.fromJson(value);
        case 'CalendarViewView':
          return CalendarViewView.fromJson(value);
        case 'CancelJob400Response':
          return CancelJob400Response.fromJson(value);
        case 'ChangePassword400Response':
          return ChangePassword400Response.fromJson(value);
        case 'ChangePasswordBodyValidation':
          return ChangePasswordBodyValidation.fromJson(value);
        case 'ChangePrimaryField400Response':
          return ChangePrimaryField400Response.fromJson(value);
        case 'ChangePrimaryField404Response':
          return ChangePrimaryField404Response.fromJson(value);
        case 'ChangePrimaryFieldParams':
          return ChangePrimaryFieldParams.fromJson(value);
        case 'CheckboxElementCreateElement':
          return CheckboxElementCreateElement.fromJson(value);
        case 'CheckboxElementElement':
          return CheckboxElementElement.fromJson(value);
        case 'CheckboxElementPublicElement':
          return CheckboxElementPublicElement.fromJson(value);
        case 'CheckboxElementUpdateElement':
          return CheckboxElementUpdateElement.fromJson(value);
        case 'ChoiceElementCreateElement':
          return ChoiceElementCreateElement.fromJson(value);
        case 'ChoiceElementElement':
          return ChoiceElementElement.fromJson(value);
        case 'ChoiceElementPublicElement':
          return ChoiceElementPublicElement.fromJson(value);
        case 'ChoiceElementUpdateElement':
          return ChoiceElementUpdateElement.fromJson(value);
        case 'ChoiceOption':
          return ChoiceOption.fromJson(value);
        case 'Collaborator':
          return Collaborator.fromJson(value);
        case 'CollectionElementPropertyOptions':
          return CollectionElementPropertyOptions.fromJson(value);
        case 'CollectionField':
          return CollectionField.fromJson(value);
        case 'ColumnElementCreateElement':
          return ColumnElementCreateElement.fromJson(value);
        case 'ColumnElementElement':
          return ColumnElementElement.fromJson(value);
        case 'ColumnElementPublicElement':
          return ColumnElementPublicElement.fromJson(value);
        case 'ColumnElementUpdateElement':
          return ColumnElementUpdateElement.fromJson(value);
        case 'CombinedThemeConfigBlocks':
          return CombinedThemeConfigBlocks.fromJson(value);
        case 'CommonSAMLResponse':
          return CommonSAMLResponse.fromJson(value);
        case 'ConditionTypeEnum':
          return ConditionTypeEnumTypeTransformer().decode(value);
        case 'ConditionalColorValueProviderConfColor':
          return ConditionalColorValueProviderConfColor.fromJson(value);
        case 'ConditionalColorValueProviderConfColorFilter':
          return ConditionalColorValueProviderConfColorFilter.fromJson(value);
        case 'ConditionalColorValueProviderConfColorFilterGroup':
          return ConditionalColorValueProviderConfColorFilterGroup.fromJson(value);
        case 'ConditionalColorValueProviderConfColors':
          return ConditionalColorValueProviderConfColors.fromJson(value);
        case 'CountFieldCreateField':
          return CountFieldCreateField.fromJson(value);
        case 'CountFieldCreateFieldNumberSeparator':
          return CountFieldCreateFieldNumberSeparator.fromJson(value);
        case 'CountFieldField':
          return CountFieldField.fromJson(value);
        case 'CountFieldFieldSerializerWithRelatedFields':
          return CountFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'CountFieldUpdateField':
          return CountFieldUpdateField.fromJson(value);
        case 'CreateBuilderPage400Response':
          return CreateBuilderPage400Response.fromJson(value);
        case 'CreateDatabaseDataSyncTable400Response':
          return CreateDatabaseDataSyncTable400Response.fromJson(value);
        case 'CreateDatabaseTable400Response':
          return CreateDatabaseTable400Response.fromJson(value);
        case 'CreateDatabaseTableField400Response':
          return CreateDatabaseTableField400Response.fromJson(value);
        case 'CreateDatabaseTableRow400Response':
          return CreateDatabaseTableRow400Response.fromJson(value);
        case 'CreateDatabaseTableRow404Response':
          return CreateDatabaseTableRow404Response.fromJson(value);
        case 'CreateDatabaseTableViewFilter400Response':
          return CreateDatabaseTableViewFilter400Response.fromJson(value);
        case 'CreateDatabaseTableViewFilter404Response':
          return CreateDatabaseTableViewFilter404Response.fromJson(value);
        case 'CreateDatabaseTableViewGroup400Response':
          return CreateDatabaseTableViewGroup400Response.fromJson(value);
        case 'CreateDatabaseTableViewSort400Response':
          return CreateDatabaseTableViewSort400Response.fromJson(value);
        case 'CreateDatabaseTableWebhook400Response':
          return CreateDatabaseTableWebhook400Response.fromJson(value);
        case 'CreatePage':
          return CreatePage.fromJson(value);
        case 'CreateRoleAssignment':
          return CreateRoleAssignment.fromJson(value);
        case 'CreateRowComment400Response':
          return CreateRowComment400Response.fromJson(value);
        case 'CreateSnapshot400Response':
          return CreateSnapshot400Response.fromJson(value);
        case 'CreateSnapshotJobCreateJob':
          return CreateSnapshotJobCreateJob.fromJson(value);
        case 'CreateSnapshotJobJob':
          return CreateSnapshotJobJob.fromJson(value);
        case 'CreateSubject400Response':
          return CreateSubject400Response.fromJson(value);
        case 'CreateSubject404Response':
          return CreateSubject404Response.fromJson(value);
        case 'CreateUser200Response':
          return CreateUser200Response.fromJson(value);
        case 'CreateUser400Response':
          return CreateUser400Response.fromJson(value);
        case 'CreateUser404Response':
          return CreateUser404Response.fromJson(value);
        case 'CreateViewFilter':
          return CreateViewFilter.fromJson(value);
        case 'CreateViewFilterGroup':
          return CreateViewFilterGroup.fromJson(value);
        case 'CreateViewGroupBy':
          return CreateViewGroupBy.fromJson(value);
        case 'CreateViewSort':
          return CreateViewSort.fromJson(value);
        case 'CreateWorkspaceInvitation':
          return CreateWorkspaceInvitation.fromJson(value);
        case 'CreateWorkspaceInvitation400Response':
          return CreateWorkspaceInvitation400Response.fromJson(value);
        case 'CreatedByFieldCreateField':
          return CreatedByFieldCreateField.fromJson(value);
        case 'CreatedByFieldField':
          return CreatedByFieldField.fromJson(value);
        case 'CreatedByFieldFieldSerializerWithRelatedFields':
          return CreatedByFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'CreatedByFieldUpdateField':
          return CreatedByFieldUpdateField.fromJson(value);
        case 'CreatedOnFieldCreateField':
          return CreatedOnFieldCreateField.fromJson(value);
        case 'CreatedOnFieldField':
          return CreatedOnFieldField.fromJson(value);
        case 'CreatedOnFieldFieldSerializerWithRelatedFields':
          return CreatedOnFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'CreatedOnFieldUpdateField':
          return CreatedOnFieldUpdateField.fromJson(value);
        case 'CsvColumnSeparatorEnum':
          return CsvColumnSeparatorEnumTypeTransformer().decode(value);
        case 'CsvExporterOptions':
          return CsvExporterOptions.fromJson(value);
        case 'CustomDomainCreateDomain':
          return CustomDomainCreateDomain.fromJson(value);
        case 'CustomDomainDomain':
          return CustomDomainDomain.fromJson(value);
        case 'Dashboard':
          return Dashboard.fromJson(value);
        case 'DataSync':
          return DataSync.fromJson(value);
        case 'DataSyncCreateDataSync':
          return DataSyncCreateDataSync.fromJson(value);
        case 'DataSyncDataSync':
          return DataSyncDataSync.fromJson(value);
        case 'DataSyncListDataSyncPropertiesRequest':
          return DataSyncListDataSyncPropertiesRequest.fromJson(value);
        case 'DataSyncSyncedProperty':
          return DataSyncSyncedProperty.fromJson(value);
        case 'DatabaseApplication':
          return DatabaseApplication.fromJson(value);
        case 'DatabaseBaseApplicationCreatePolymorphic':
          return DatabaseBaseApplicationCreatePolymorphic.fromJson(value);
        case 'DatabaseBaseApplicationUpdatePolymorphic':
          return DatabaseBaseApplicationUpdatePolymorphic.fromJson(value);
        case 'DatabaseTablePublicViewLinkRowFieldLookup401Response':
          return DatabaseTablePublicViewLinkRowFieldLookup401Response.fromJson(value);
        case 'DatabaseTablePublicViewLinkRowFieldLookup404Response':
          return DatabaseTablePublicViewLinkRowFieldLookup404Response.fromJson(value);
        case 'DateFieldCreateField':
          return DateFieldCreateField.fromJson(value);
        case 'DateFieldField':
          return DateFieldField.fromJson(value);
        case 'DateFieldFieldSerializerWithRelatedFields':
          return DateFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'DateFieldUpdateField':
          return DateFieldUpdateField.fromJson(value);
        case 'DateFormatEnum':
          return DateFormatEnumTypeTransformer().decode(value);
        case 'DateTimeFormatEnum':
          return DateTimeFormatEnumTypeTransformer().decode(value);
        case 'DateTimePickerElementCreateElement':
          return DateTimePickerElementCreateElement.fromJson(value);
        case 'DateTimePickerElementElement':
          return DateTimePickerElementElement.fromJson(value);
        case 'DateTimePickerElementPublicElement':
          return DateTimePickerElementPublicElement.fromJson(value);
        case 'DateTimePickerElementUpdateElement':
          return DateTimePickerElementUpdateElement.fromJson(value);
        case 'DecoratorValueProviderTypeCreateViewDecoration':
          return DecoratorValueProviderTypeCreateViewDecoration.fromJson(value);
        case 'DecoratorValueProviderTypeViewDecoration':
          return DecoratorValueProviderTypeViewDecoration.fromJson(value);
        case 'DeleteApplication400Response':
          return DeleteApplication400Response.fromJson(value);
        case 'DeleteApplicationIntegration404Response':
          return DeleteApplicationIntegration404Response.fromJson(value);
        case 'DeleteApplicationUserSource404Response':
          return DeleteApplicationUserSource404Response.fromJson(value);
        case 'DeleteBuilderDomain404Response':
          return DeleteBuilderDomain404Response.fromJson(value);
        case 'DeleteBuilderPage400Response':
          return DeleteBuilderPage400Response.fromJson(value);
        case 'DeleteBuilderPageDataSource404Response':
          return DeleteBuilderPageDataSource404Response.fromJson(value);
        case 'DeleteBuilderPageElement404Response':
          return DeleteBuilderPageElement404Response.fromJson(value);
        case 'DeleteBuilderPageWorkflowAction404Response':
          return DeleteBuilderPageWorkflowAction404Response.fromJson(value);
        case 'DeleteDatabaseTableField400Response':
          return DeleteDatabaseTableField400Response.fromJson(value);
        case 'DeleteRowComment400Response':
          return DeleteRowComment400Response.fromJson(value);
        case 'DeleteRowComment404Response':
          return DeleteRowComment404Response.fromJson(value);
        case 'DeleteSnapshot400Response':
          return DeleteSnapshot400Response.fromJson(value);
        case 'DeleteSnapshot404Response':
          return DeleteSnapshot404Response.fromJson(value);
        case 'DeleteSubject400Response':
          return DeleteSubject400Response.fromJson(value);
        case 'DeleteWorkspace400Response':
          return DeleteWorkspace400Response.fromJson(value);
        case 'DispatchBuilderPageDataSource404Response':
          return DispatchBuilderPageDataSource404Response.fromJson(value);
        case 'DispatchBuilderPageWorkflowAction400Response':
          return DispatchBuilderPageWorkflowAction400Response.fromJson(value);
        case 'DispatchDataSourceDataSourceContext':
          return DispatchDataSourceDataSourceContext.fromJson(value);
        case 'DispatchDataSourceRequest':
          return DispatchDataSourceRequest.fromJson(value);
        case 'DispatchPublicBuilderPageDataSources404Response':
          return DispatchPublicBuilderPageDataSources404Response.fromJson(value);
        case 'DomainTypeCreateDomain':
          return DomainTypeCreateDomain.fromJson(value);
        case 'DomainTypeDomain':
          return DomainTypeDomain.fromJson(value);
        case 'DuplicateApplicationAsync400Response':
          return DuplicateApplicationAsync400Response.fromJson(value);
        case 'DuplicateApplicationJobCreateJob':
          return DuplicateApplicationJobCreateJob.fromJson(value);
        case 'DuplicateApplicationJobJob':
          return DuplicateApplicationJobJob.fromJson(value);
        case 'DuplicateApplicationJobTypeResponse':
          return DuplicateApplicationJobTypeResponse.fromJson(value);
        case 'DuplicateElement':
          return DuplicateElement.fromJson(value);
        case 'DuplicateFieldJobCreateJob':
          return DuplicateFieldJobCreateJob.fromJson(value);
        case 'DuplicateFieldJobJob':
          return DuplicateFieldJobJob.fromJson(value);
        case 'DuplicateFieldJobTypeResponse':
          return DuplicateFieldJobTypeResponse.fromJson(value);
        case 'DuplicatePageJobCreateJob':
          return DuplicatePageJobCreateJob.fromJson(value);
        case 'DuplicatePageJobJob':
          return DuplicatePageJobJob.fromJson(value);
        case 'DuplicatePageJobTypeResponse':
          return DuplicatePageJobTypeResponse.fromJson(value);
        case 'DuplicateTableJobCreateJob':
          return DuplicateTableJobCreateJob.fromJson(value);
        case 'DuplicateTableJobJob':
          return DuplicateTableJobJob.fromJson(value);
        case 'DuplicateTableJobTypeResponse':
          return DuplicateTableJobTypeResponse.fromJson(value);
        case 'DurationFieldCreateField':
          return DurationFieldCreateField.fromJson(value);
        case 'DurationFieldField':
          return DurationFieldField.fromJson(value);
        case 'DurationFieldFieldSerializerWithRelatedFields':
          return DurationFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'DurationFieldUpdateField':
          return DurationFieldUpdateField.fromJson(value);
        case 'DurationFormatEnum':
          return DurationFormatEnumTypeTransformer().decode(value);
        case 'Element':
          return Element.fromJson(value);
        case 'ElementTypeCreateElement':
          return ElementTypeCreateElement.fromJson(value);
        case 'ElementTypeElement':
          return ElementTypeElement.fromJson(value);
        case 'ElementTypePublicElement':
          return ElementTypePublicElement.fromJson(value);
        case 'EmailFieldCreateField':
          return EmailFieldCreateField.fromJson(value);
        case 'EmailFieldField':
          return EmailFieldField.fromJson(value);
        case 'EmailFieldFieldSerializerWithRelatedFields':
          return EmailFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'EmailFieldUpdateField':
          return EmailFieldUpdateField.fromJson(value);
        case 'EmailNotificationFrequencyEnum':
          return EmailNotificationFrequencyEnumTypeTransformer().decode(value);
        case 'EmailTester400Response':
          return EmailTester400Response.fromJson(value);
        case 'EmailTester400ResponseDetail':
          return EmailTester400ResponseDetail.fromJson(value);
        case 'EmailTesterRequest':
          return EmailTesterRequest.fromJson(value);
        case 'EmailTesterResponse':
          return EmailTesterResponse.fromJson(value);
        case 'EmailVerificationEnum':
          return EmailVerificationEnumTypeTransformer().decode(value);
        case 'EventTypeEnum':
          return EventTypeEnumTypeTransformer().decode(value);
        case 'EventsEnum':
          return EventsEnumTypeTransformer().decode(value);
        case 'ExampleBatchRowsRequest':
          return ExampleBatchRowsRequest.fromJson(value);
        case 'ExampleBatchRowsResponse':
          return ExampleBatchRowsResponse.fromJson(value);
        case 'ExampleBatchUpdateRowRequestSerializerWithUserFieldNames':
          return ExampleBatchUpdateRowRequestSerializerWithUserFieldNames.fromJson(value);
        case 'ExampleRowRequest':
          return ExampleRowRequest.fromJson(value);
        case 'ExampleRowRequestSerializerWithUserFieldNames':
          return ExampleRowRequestSerializerWithUserFieldNames.fromJson(value);
        case 'ExampleRowResponse':
          return ExampleRowResponse.fromJson(value);
        case 'ExampleRowResponseSerializerWithUserFieldNames':
          return ExampleRowResponseSerializerWithUserFieldNames.fromJson(value);
        case 'ExcelExporterOptions':
          return ExcelExporterOptions.fromJson(value);
        case 'ExportApplicationsJobCreateJob':
          return ExportApplicationsJobCreateJob.fromJson(value);
        case 'ExportApplicationsJobJob':
          return ExportApplicationsJobJob.fromJson(value);
        case 'ExportApplicationsJobTypeResponse':
          return ExportApplicationsJobTypeResponse.fromJson(value);
        case 'ExportCharsetEnum':
          return ExportCharsetEnumTypeTransformer().decode(value);
        case 'ExportJob':
          return ExportJob.fromJson(value);
        case 'ExportTable400Response':
          return ExportTable400Response.fromJson(value);
        case 'ExportTable404Response':
          return ExportTable404Response.fromJson(value);
        case 'ExportWorkspaceApplicationsAsync404Response':
          return ExportWorkspaceApplicationsAsync404Response.fromJson(value);
        case 'ExporterTypeEnum':
          return ExporterTypeEnumTypeTransformer().decode(value);
        case 'FacebookAuthProviderModelAuthProvider':
          return FacebookAuthProviderModelAuthProvider.fromJson(value);
        case 'Field':
          return Field.fromJson(value);
        case 'FieldCreateField':
          return FieldCreateField.fromJson(value);
        case 'FieldField':
          return FieldField.fromJson(value);
        case 'FieldFieldSerializerWithRelatedFields':
          return FieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'FieldSerializerWithRelatedFields':
          return FieldSerializerWithRelatedFields.fromJson(value);
        case 'FileFieldCreateField':
          return FileFieldCreateField.fromJson(value);
        case 'FileFieldField':
          return FileFieldField.fromJson(value);
        case 'FileFieldFieldSerializerWithRelatedFields':
          return FileFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'FileFieldResponse':
          return FileFieldResponse.fromJson(value);
        case 'FileFieldUpdateField':
          return FileFieldUpdateField.fromJson(value);
        case 'FileImportJobCreateJob':
          return FileImportJobCreateJob.fromJson(value);
        case 'FileImportJobJob':
          return FileImportJobJob.fromJson(value);
        case 'FileImportJobTypeResponse':
          return FileImportJobTypeResponse.fromJson(value);
        case 'FilterActionTypeEnum':
          return FilterActionTypeEnumTypeTransformer().decode(value);
        case 'FooterElementCreateElement':
          return FooterElementCreateElement.fromJson(value);
        case 'FooterElementElement':
          return FooterElementElement.fromJson(value);
        case 'FooterElementPublicElement':
          return FooterElementPublicElement.fromJson(value);
        case 'FooterElementUpdateElement':
          return FooterElementUpdateElement.fromJson(value);
        case 'FormContainerElementCreateElement':
          return FormContainerElementCreateElement.fromJson(value);
        case 'FormContainerElementElement':
          return FormContainerElementElement.fromJson(value);
        case 'FormContainerElementPublicElement':
          return FormContainerElementPublicElement.fromJson(value);
        case 'FormContainerElementUpdateElement':
          return FormContainerElementUpdateElement.fromJson(value);
        case 'FormViewCreateView':
          return FormViewCreateView.fromJson(value);
        case 'FormViewFieldOptions':
          return FormViewFieldOptions.fromJson(value);
        case 'FormViewFieldOptionsCondition':
          return FormViewFieldOptionsCondition.fromJson(value);
        case 'FormViewFieldOptionsConditionGroup':
          return FormViewFieldOptionsConditionGroup.fromJson(value);
        case 'FormViewSubmitted':
          return FormViewSubmitted.fromJson(value);
        case 'FormViewUpdate':
          return FormViewUpdate.fromJson(value);
        case 'FormViewView':
          return FormViewView.fromJson(value);
        case 'FormatEnum':
          return FormatEnumTypeTransformer().decode(value);
        case 'FormulaFieldCreateField':
          return FormulaFieldCreateField.fromJson(value);
        case 'FormulaFieldField':
          return FormulaFieldField.fromJson(value);
        case 'FormulaFieldFieldSerializerWithRelatedFields':
          return FormulaFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'FormulaFieldUpdateField':
          return FormulaFieldUpdateField.fromJson(value);
        case 'FormulaTypeEnum':
          return FormulaTypeEnumTypeTransformer().decode(value);
        case 'FullHealthCheck':
          return FullHealthCheck.fromJson(value);
        case 'GalleryViewCreateView':
          return GalleryViewCreateView.fromJson(value);
        case 'GalleryViewFieldOptions':
          return GalleryViewFieldOptions.fromJson(value);
        case 'GalleryViewUpdate':
          return GalleryViewUpdate.fromJson(value);
        case 'GalleryViewView':
          return GalleryViewView.fromJson(value);
        case 'GenerateFormulaWithAIRequest':
          return GenerateFormulaWithAIRequest.fromJson(value);
        case 'GenerateFormulaWithAIResponse':
          return GenerateFormulaWithAIResponse.fromJson(value);
        case 'GenerateFormulaWithAi400Response':
          return GenerateFormulaWithAi400Response.fromJson(value);
        case 'GenerateTableAiFieldValue400Response':
          return GenerateTableAiFieldValue400Response.fromJson(value);
        case 'GenerateTableAiFieldValue404Response':
          return GenerateTableAiFieldValue404Response.fromJson(value);
        case 'GeneratedConditionalColorCreateViewDecoration':
          return GeneratedConditionalColorCreateViewDecoration.fromJson(value);
        case 'GeneratedConditionalColorCreateViewDecorationValueProviderType':
          return GeneratedConditionalColorCreateViewDecorationValueProviderType.fromJson(value);
        case 'GeneratedConditionalColorUpdateViewDecoration':
          return GeneratedConditionalColorUpdateViewDecoration.fromJson(value);
        case 'GeneratedConditionalColorUpdateViewDecorationValueProviderType':
          return GeneratedConditionalColorUpdateViewDecorationValueProviderType.fromJson(value);
        case 'GeneratedConditionalColorViewDecoration':
          return GeneratedConditionalColorViewDecoration.fromJson(value);
        case 'GeneratedSingleSelectColorCreateViewDecoration':
          return GeneratedSingleSelectColorCreateViewDecoration.fromJson(value);
        case 'GeneratedSingleSelectColorUpdateViewDecoration':
          return GeneratedSingleSelectColorUpdateViewDecoration.fromJson(value);
        case 'GeneratedSingleSelectColorViewDecoration':
          return GeneratedSingleSelectColorViewDecoration.fromJson(value);
        case 'GenerativeAISettings':
          return GenerativeAISettings.fromJson(value);
        case 'GetAdjacentDatabaseTableRow404Response':
          return GetAdjacentDatabaseTableRow404Response.fromJson(value);
        case 'GetAuthProvider404Response':
          return GetAuthProvider404Response.fromJson(value);
        case 'GetDatabaseTableField404Response':
          return GetDatabaseTableField404Response.fromJson(value);
        case 'GetDatabaseTableGridViewFieldAggregation200Response':
          return GetDatabaseTableGridViewFieldAggregation200Response.fromJson(value);
        case 'GetDatabaseTableGridViewFieldAggregation200ResponseValue':
          return GetDatabaseTableGridViewFieldAggregation200ResponseValue.fromJson(value);
        case 'GetDatabaseTableGridViewFieldAggregation400Response':
          return GetDatabaseTableGridViewFieldAggregation400Response.fromJson(value);
        case 'GetDatabaseTableGridViewFieldAggregation404Response':
          return GetDatabaseTableGridViewFieldAggregation404Response.fromJson(value);
        case 'GetDatabaseTablePublicGridViewFieldAggregations200Response':
          return GetDatabaseTablePublicGridViewFieldAggregations200Response.fromJson(value);
        case 'GetDatabaseTablePublicGridViewFieldAggregations200ResponseFieldId':
          return GetDatabaseTablePublicGridViewFieldAggregations200ResponseFieldId.fromJson(value);
        case 'GetDatabaseTablePublicGridViewFieldAggregations400Response':
          return GetDatabaseTablePublicGridViewFieldAggregations400Response.fromJson(value);
        case 'GetDatabaseTablePublicGridViewFieldAggregations404Response':
          return GetDatabaseTablePublicGridViewFieldAggregations404Response.fromJson(value);
        case 'GetDatabaseTableViewDecoration404Response':
          return GetDatabaseTableViewDecoration404Response.fromJson(value);
        case 'GetDatabaseTableViewFieldOptions400Response':
          return GetDatabaseTableViewFieldOptions400Response.fromJson(value);
        case 'GetDatabaseTableViewFilter404Response':
          return GetDatabaseTableViewFilter404Response.fromJson(value);
        case 'GetDatabaseTableViewFilterGroup404Response':
          return GetDatabaseTableViewFilterGroup404Response.fromJson(value);
        case 'GetDatabaseTableViewGroup404Response':
          return GetDatabaseTableViewGroup404Response.fromJson(value);
        case 'GetDatabaseTableViewSort404Response':
          return GetDatabaseTableViewSort404Response.fromJson(value);
        case 'GetDatabaseTableWebhook404Response':
          return GetDatabaseTableWebhook404Response.fromJson(value);
        case 'GetDatabaseToken404Response':
          return GetDatabaseToken404Response.fromJson(value);
        case 'GetExportJob404Response':
          return GetExportJob404Response.fromJson(value);
        case 'GetJob404Response':
          return GetJob404Response.fromJson(value);
        case 'GetMetaDatabaseTableFormView401Response':
          return GetMetaDatabaseTableFormView401Response.fromJson(value);
        case 'GetMetaDatabaseTableFormView404Response':
          return GetMetaDatabaseTableFormView404Response.fromJson(value);
        case 'GetPublicBuilderById404Response':
          return GetPublicBuilderById404Response.fromJson(value);
        case 'GetRecordNamesBuilderPageDataSource400Response':
          return GetRecordNamesBuilderPageDataSource400Response.fromJson(value);
        case 'GetTableDataSync404Response':
          return GetTableDataSync404Response.fromJson(value);
        case 'GetTableDataSyncProperties400Response':
          return GetTableDataSyncProperties400Response.fromJson(value);
        case 'GetTableDataSyncTypeProperties400Response':
          return GetTableDataSyncTypeProperties400Response.fromJson(value);
        case 'GetTeam404Response':
          return GetTeam404Response.fromJson(value);
        case 'GetWorkspaceInvitation400Response':
          return GetWorkspaceInvitation400Response.fromJson(value);
        case 'GetWorkspaceInvitationByToken400Response':
          return GetWorkspaceInvitationByToken400Response.fromJson(value);
        case 'GitHubAuthProviderModelAuthProvider':
          return GitHubAuthProviderModelAuthProvider.fromJson(value);
        case 'GitHubIssuesDataSyncCreateDataSync':
          return GitHubIssuesDataSyncCreateDataSync.fromJson(value);
        case 'GitHubIssuesDataSyncDataSync':
          return GitHubIssuesDataSyncDataSync.fromJson(value);
        case 'GitHubIssuesDataSyncListDataSyncPropertiesRequest':
          return GitHubIssuesDataSyncListDataSyncPropertiesRequest.fromJson(value);
        case 'GitHubIssuesDataSyncUpdateDataSync':
          return GitHubIssuesDataSyncUpdateDataSync.fromJson(value);
        case 'GitLabAuthProviderModelAuthProvider':
          return GitLabAuthProviderModelAuthProvider.fromJson(value);
        case 'GitLabIssuesDataSyncCreateDataSync':
          return GitLabIssuesDataSyncCreateDataSync.fromJson(value);
        case 'GitLabIssuesDataSyncDataSync':
          return GitLabIssuesDataSyncDataSync.fromJson(value);
        case 'GitLabIssuesDataSyncListDataSyncPropertiesRequest':
          return GitLabIssuesDataSyncListDataSyncPropertiesRequest.fromJson(value);
        case 'GitLabIssuesDataSyncUpdateDataSync':
          return GitLabIssuesDataSyncUpdateDataSync.fromJson(value);
        case 'GoogleAuthProviderModelAuthProvider':
          return GoogleAuthProviderModelAuthProvider.fromJson(value);
        case 'GridViewCreateView':
          return GridViewCreateView.fromJson(value);
        case 'GridViewFieldOptions':
          return GridViewFieldOptions.fromJson(value);
        case 'GridViewFieldOptionsAggregationRawType':
          return GridViewFieldOptionsAggregationRawType.fromJson(value);
        case 'GridViewFilter':
          return GridViewFilter.fromJson(value);
        case 'GridViewUpdate':
          return GridViewUpdate.fromJson(value);
        case 'GridViewView':
          return GridViewView.fromJson(value);
        case 'HeaderElementCreateElement':
          return HeaderElementCreateElement.fromJson(value);
        case 'HeaderElementElement':
          return HeaderElementElement.fromJson(value);
        case 'HeaderElementPublicElement':
          return HeaderElementPublicElement.fromJson(value);
        case 'HeaderElementUpdateElement':
          return HeaderElementUpdateElement.fromJson(value);
        case 'HeadingElementCreateElement':
          return HeadingElementCreateElement.fromJson(value);
        case 'HeadingElementElement':
          return HeadingElementElement.fromJson(value);
        case 'HeadingElementPublicElement':
          return HeadingElementPublicElement.fromJson(value);
        case 'HeadingElementUpdateElement':
          return HeadingElementUpdateElement.fromJson(value);
        case 'HubSpotContactsDataSyncCreateDataSync':
          return HubSpotContactsDataSyncCreateDataSync.fromJson(value);
        case 'HubSpotContactsDataSyncDataSync':
          return HubSpotContactsDataSyncDataSync.fromJson(value);
        case 'HubSpotContactsDataSyncListDataSyncPropertiesRequest':
          return HubSpotContactsDataSyncListDataSyncPropertiesRequest.fromJson(value);
        case 'HubSpotContactsDataSyncUpdateDataSync':
          return HubSpotContactsDataSyncUpdateDataSync.fromJson(value);
        case 'ICalCalendarDataSyncCreateDataSync':
          return ICalCalendarDataSyncCreateDataSync.fromJson(value);
        case 'ICalCalendarDataSyncDataSync':
          return ICalCalendarDataSyncDataSync.fromJson(value);
        case 'ICalCalendarDataSyncListDataSyncPropertiesRequest':
          return ICalCalendarDataSyncListDataSyncPropertiesRequest.fromJson(value);
        case 'ICalCalendarDataSyncUpdateDataSync':
          return ICalCalendarDataSyncUpdateDataSync.fromJson(value);
        case 'IFrameElementCreateElement':
          return IFrameElementCreateElement.fromJson(value);
        case 'IFrameElementElement':
          return IFrameElementElement.fromJson(value);
        case 'IFrameElementPublicElement':
          return IFrameElementPublicElement.fromJson(value);
        case 'IFrameElementUpdateElement':
          return IFrameElementUpdateElement.fromJson(value);
        case 'IdEnum':
          return IdEnumTypeTransformer().decode(value);
        case 'ImageConfigBlock':
          return ImageConfigBlock.fromJson(value);
        case 'ImageConstraintEnum':
          return ImageConstraintEnumTypeTransformer().decode(value);
        case 'ImageElementCreateElement':
          return ImageElementCreateElement.fromJson(value);
        case 'ImageElementElement':
          return ImageElementElement.fromJson(value);
        case 'ImageElementPublicElement':
          return ImageElementPublicElement.fromJson(value);
        case 'ImageElementUpdateElement':
          return ImageElementUpdateElement.fromJson(value);
        case 'ImageSourceTypeEnum':
          return ImageSourceTypeEnumTypeTransformer().decode(value);
        case 'ImageThemeConfigBlock':
          return ImageThemeConfigBlock.fromJson(value);
        case 'ImportApplicationsJobCreateJob':
          return ImportApplicationsJobCreateJob.fromJson(value);
        case 'ImportApplicationsJobJob':
          return ImportApplicationsJobJob.fromJson(value);
        case 'ImportApplicationsJobTypeResponse':
          return ImportApplicationsJobTypeResponse.fromJson(value);
        case 'ImportExportResource404Response':
          return ImportExportResource404Response.fromJson(value);
        case 'ImportResource':
          return ImportResource.fromJson(value);
        case 'ImportResourceUploadFile400Response':
          return ImportResourceUploadFile400Response.fromJson(value);
        case 'ImportWorkspaceApplicationsAsync400Response':
          return ImportWorkspaceApplicationsAsync400Response.fromJson(value);
        case 'InputConfigBlock':
          return InputConfigBlock.fromJson(value);
        case 'InputTextElementCreateElement':
          return InputTextElementCreateElement.fromJson(value);
        case 'InputTextElementElement':
          return InputTextElementElement.fromJson(value);
        case 'InputTextElementPublicElement':
          return InputTextElementPublicElement.fromJson(value);
        case 'InputTextElementUpdateElement':
          return InputTextElementUpdateElement.fromJson(value);
        case 'InputThemeConfigBlock':
          return InputThemeConfigBlock.fromJson(value);
        case 'InputTypeEnum':
          return InputTypeEnumTypeTransformer().decode(value);
        case 'InstallTemplate400Response':
          return InstallTemplate400Response.fromJson(value);
        case 'InstallTemplate404Response':
          return InstallTemplate404Response.fromJson(value);
        case 'InstallTemplateAsync400Response':
          return InstallTemplateAsync400Response.fromJson(value);
        case 'InstallTemplateJobCreateJob':
          return InstallTemplateJobCreateJob.fromJson(value);
        case 'InstallTemplateJobJob':
          return InstallTemplateJobJob.fromJson(value);
        case 'InstallTemplateJobTypeResponse':
          return InstallTemplateJobTypeResponse.fromJson(value);
        case 'InstanceId':
          return InstanceId.fromJson(value);
        case 'IntegrationCreateIntegration':
          return IntegrationCreateIntegration.fromJson(value);
        case 'IntegrationIntegration':
          return IntegrationIntegration.fromJson(value);
        case 'IntegrationService':
          return IntegrationService.fromJson(value);
        case 'IntegrationServiceCreateDataSource':
          return IntegrationServiceCreateDataSource.fromJson(value);
        case 'IntegrationServiceDataSource':
          return IntegrationServiceDataSource.fromJson(value);
        case 'IntegrationServicePublicDataSource':
          return IntegrationServicePublicDataSource.fromJson(value);
        case 'IntegrationServiceService':
          return IntegrationServiceService.fromJson(value);
        case 'JiraIssuesDataSyncCreateDataSync':
          return JiraIssuesDataSyncCreateDataSync.fromJson(value);
        case 'JiraIssuesDataSyncDataSync':
          return JiraIssuesDataSyncDataSync.fromJson(value);
        case 'JiraIssuesDataSyncListDataSyncPropertiesRequest':
          return JiraIssuesDataSyncListDataSyncPropertiesRequest.fromJson(value);
        case 'JiraIssuesDataSyncUpdateDataSync':
          return JiraIssuesDataSyncUpdateDataSync.fromJson(value);
        case 'Job':
          return Job.fromJson(value);
        case 'JobTypeCreateJob':
          return JobTypeCreateJob.fromJson(value);
        case 'JobTypeJob':
          return JobTypeJob.fromJson(value);
        case 'KanbanViewCreateView':
          return KanbanViewCreateView.fromJson(value);
        case 'KanbanViewExampleResponse':
          return KanbanViewExampleResponse.fromJson(value);
        case 'KanbanViewExampleResponseStack':
          return KanbanViewExampleResponseStack.fromJson(value);
        case 'KanbanViewFieldOptions':
          return KanbanViewFieldOptions.fromJson(value);
        case 'KanbanViewUpdate':
          return KanbanViewUpdate.fromJson(value);
        case 'KanbanViewView':
          return KanbanViewView.fromJson(value);
        case 'LastModifiedByFieldCreateField':
          return LastModifiedByFieldCreateField.fromJson(value);
        case 'LastModifiedByFieldField':
          return LastModifiedByFieldField.fromJson(value);
        case 'LastModifiedByFieldFieldSerializerWithRelatedFields':
          return LastModifiedByFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'LastModifiedByFieldUpdateField':
          return LastModifiedByFieldUpdateField.fromJson(value);
        case 'LastModifiedFieldCreateField':
          return LastModifiedFieldCreateField.fromJson(value);
        case 'LastModifiedFieldField':
          return LastModifiedFieldField.fromJson(value);
        case 'LastModifiedFieldFieldSerializerWithRelatedFields':
          return LastModifiedFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'LastModifiedFieldUpdateField':
          return LastModifiedFieldUpdateField.fromJson(value);
        case 'LeaveWorkspace400Response':
          return LeaveWorkspace400Response.fromJson(value);
        case 'License':
          return License.fromJson(value);
        case 'LicenseUser':
          return LicenseUser.fromJson(value);
        case 'LicenseUserLookup':
          return LicenseUserLookup.fromJson(value);
        case 'LicenseWithUsers':
          return LicenseWithUsers.fromJson(value);
        case 'LinkElementCreateElement':
          return LinkElementCreateElement.fromJson(value);
        case 'LinkElementElement':
          return LinkElementElement.fromJson(value);
        case 'LinkElementPublicElement':
          return LinkElementPublicElement.fromJson(value);
        case 'LinkElementUpdateElement':
          return LinkElementUpdateElement.fromJson(value);
        case 'LinkRowFieldCreateField':
          return LinkRowFieldCreateField.fromJson(value);
        case 'LinkRowFieldField':
          return LinkRowFieldField.fromJson(value);
        case 'LinkRowFieldFieldSerializerWithRelatedFields':
          return LinkRowFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'LinkRowFieldUpdateField':
          return LinkRowFieldUpdateField.fromJson(value);
        case 'LinkRowValue':
          return LinkRowValue.fromJson(value);
        case 'LinkThemeConfigBlock':
          return LinkThemeConfigBlock.fromJson(value);
        case 'ListAllApplications400Response':
          return ListAllApplications400Response.fromJson(value);
        case 'ListApplicationIntegrations404Response':
          return ListApplicationIntegrations404Response.fromJson(value);
        case 'ListDataSyncProperty':
          return ListDataSyncProperty.fromJson(value);
        case 'ListDatabaseTableCalendarViewRows400Response':
          return ListDatabaseTableCalendarViewRows400Response.fromJson(value);
        case 'ListDatabaseTableFields401Response':
          return ListDatabaseTableFields401Response.fromJson(value);
        case 'ListDatabaseTableFields404Response':
          return ListDatabaseTableFields404Response.fromJson(value);
        case 'ListDatabaseTableGalleryViewRows400Response':
          return ListDatabaseTableGalleryViewRows400Response.fromJson(value);
        case 'ListDatabaseTableGalleryViewRows404Response':
          return ListDatabaseTableGalleryViewRows404Response.fromJson(value);
        case 'ListDatabaseTableKanbanViewRows400Response':
          return ListDatabaseTableKanbanViewRows400Response.fromJson(value);
        case 'ListDatabaseTableRowNames200Response':
          return ListDatabaseTableRowNames200Response.fromJson(value);
        case 'ListDatabaseTableRowNames200ResponseTableId':
          return ListDatabaseTableRowNames200ResponseTableId.fromJson(value);
        case 'ListDatabaseTableRows400Response':
          return ListDatabaseTableRows400Response.fromJson(value);
        case 'ListDatabaseTableRows404Response':
          return ListDatabaseTableRows404Response.fromJson(value);
        case 'ListExportWorkspaceApplications':
          return ListExportWorkspaceApplications.fromJson(value);
        case 'ListPublicBuilderPageDataSources404Response':
          return ListPublicBuilderPageDataSources404Response.fromJson(value);
        case 'ListRoleAssignments404Response':
          return ListRoleAssignments404Response.fromJson(value);
        case 'ListWorkspaceUsers400Response':
          return ListWorkspaceUsers400Response.fromJson(value);
        case 'ListWorkspaceUsersWithMemberData':
          return ListWorkspaceUsersWithMemberData.fromJson(value);
        case 'LocalBaserowAggregateRows':
          return LocalBaserowAggregateRows.fromJson(value);
        case 'LocalBaserowAggregateRowsCreateDataSource':
          return LocalBaserowAggregateRowsCreateDataSource.fromJson(value);
        case 'LocalBaserowAggregateRowsDataSource':
          return LocalBaserowAggregateRowsDataSource.fromJson(value);
        case 'LocalBaserowAggregateRowsPublicDataSource':
          return LocalBaserowAggregateRowsPublicDataSource.fromJson(value);
        case 'LocalBaserowAggregateRowsService':
          return LocalBaserowAggregateRowsService.fromJson(value);
        case 'LocalBaserowAggregateRowsUpdateDataSource':
          return LocalBaserowAggregateRowsUpdateDataSource.fromJson(value);
        case 'LocalBaserowContextData':
          return LocalBaserowContextData.fromJson(value);
        case 'LocalBaserowCreateRowWorkflowActionBuilderWorkflowAction':
          return LocalBaserowCreateRowWorkflowActionBuilderWorkflowAction.fromJson(value);
        case 'LocalBaserowCreateRowWorkflowActionCreateBuilderWorkflowAction':
          return LocalBaserowCreateRowWorkflowActionCreateBuilderWorkflowAction.fromJson(value);
        case 'LocalBaserowCreateRowWorkflowActionUpdateBuilderWorkflowActions':
          return LocalBaserowCreateRowWorkflowActionUpdateBuilderWorkflowActions.fromJson(value);
        case 'LocalBaserowDatabaseApplication':
          return LocalBaserowDatabaseApplication.fromJson(value);
        case 'LocalBaserowDeleteRow':
          return LocalBaserowDeleteRow.fromJson(value);
        case 'LocalBaserowDeleteRowCreateDataSource':
          return LocalBaserowDeleteRowCreateDataSource.fromJson(value);
        case 'LocalBaserowDeleteRowDataSource':
          return LocalBaserowDeleteRowDataSource.fromJson(value);
        case 'LocalBaserowDeleteRowPublicDataSource':
          return LocalBaserowDeleteRowPublicDataSource.fromJson(value);
        case 'LocalBaserowDeleteRowService':
          return LocalBaserowDeleteRowService.fromJson(value);
        case 'LocalBaserowDeleteRowUpdateDataSource':
          return LocalBaserowDeleteRowUpdateDataSource.fromJson(value);
        case 'LocalBaserowDeleteRowWorkflowActionBuilderWorkflowAction':
          return LocalBaserowDeleteRowWorkflowActionBuilderWorkflowAction.fromJson(value);
        case 'LocalBaserowDeleteRowWorkflowActionCreateBuilderWorkflowAction':
          return LocalBaserowDeleteRowWorkflowActionCreateBuilderWorkflowAction.fromJson(value);
        case 'LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions':
          return LocalBaserowDeleteRowWorkflowActionUpdateBuilderWorkflowActions.fromJson(value);
        case 'LocalBaserowGetRow':
          return LocalBaserowGetRow.fromJson(value);
        case 'LocalBaserowGetRowCreateDataSource':
          return LocalBaserowGetRowCreateDataSource.fromJson(value);
        case 'LocalBaserowGetRowDataSource':
          return LocalBaserowGetRowDataSource.fromJson(value);
        case 'LocalBaserowGetRowPublicDataSource':
          return LocalBaserowGetRowPublicDataSource.fromJson(value);
        case 'LocalBaserowGetRowService':
          return LocalBaserowGetRowService.fromJson(value);
        case 'LocalBaserowGetRowUpdateDataSource':
          return LocalBaserowGetRowUpdateDataSource.fromJson(value);
        case 'LocalBaserowIntegrationCreateIntegration':
          return LocalBaserowIntegrationCreateIntegration.fromJson(value);
        case 'LocalBaserowIntegrationIntegration':
          return LocalBaserowIntegrationIntegration.fromJson(value);
        case 'LocalBaserowIntegrationUpdateIntegration':
          return LocalBaserowIntegrationUpdateIntegration.fromJson(value);
        case 'LocalBaserowListRows':
          return LocalBaserowListRows.fromJson(value);
        case 'LocalBaserowListRowsCreateDataSource':
          return LocalBaserowListRowsCreateDataSource.fromJson(value);
        case 'LocalBaserowListRowsDataSource':
          return LocalBaserowListRowsDataSource.fromJson(value);
        case 'LocalBaserowListRowsPublicDataSource':
          return LocalBaserowListRowsPublicDataSource.fromJson(value);
        case 'LocalBaserowListRowsService':
          return LocalBaserowListRowsService.fromJson(value);
        case 'LocalBaserowListRowsUpdateDataSource':
          return LocalBaserowListRowsUpdateDataSource.fromJson(value);
        case 'LocalBaserowPasswordAppAuthProviderAppAuthProvider':
          return LocalBaserowPasswordAppAuthProviderAppAuthProvider.fromJson(value);
        case 'LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider':
          return LocalBaserowPasswordAppAuthProviderBaseAppAuthProvider.fromJson(value);
        case 'LocalBaserowTableDataSyncCreateDataSync':
          return LocalBaserowTableDataSyncCreateDataSync.fromJson(value);
        case 'LocalBaserowTableDataSyncDataSync':
          return LocalBaserowTableDataSyncDataSync.fromJson(value);
        case 'LocalBaserowTableDataSyncListDataSyncPropertiesRequest':
          return LocalBaserowTableDataSyncListDataSyncPropertiesRequest.fromJson(value);
        case 'LocalBaserowTableDataSyncUpdateDataSync':
          return LocalBaserowTableDataSyncUpdateDataSync.fromJson(value);
        case 'LocalBaserowTableServiceFieldMapping':
          return LocalBaserowTableServiceFieldMapping.fromJson(value);
        case 'LocalBaserowTableServiceFilter':
          return LocalBaserowTableServiceFilter.fromJson(value);
        case 'LocalBaserowTableServiceSort':
          return LocalBaserowTableServiceSort.fromJson(value);
        case 'LocalBaserowUpdateRowWorkflowActionBuilderWorkflowAction':
          return LocalBaserowUpdateRowWorkflowActionBuilderWorkflowAction.fromJson(value);
        case 'LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction':
          return LocalBaserowUpdateRowWorkflowActionCreateBuilderWorkflowAction.fromJson(value);
        case 'LocalBaserowUpdateRowWorkflowActionUpdateBuilderWorkflowActions':
          return LocalBaserowUpdateRowWorkflowActionUpdateBuilderWorkflowActions.fromJson(value);
        case 'LocalBaserowUpsertRow':
          return LocalBaserowUpsertRow.fromJson(value);
        case 'LocalBaserowUpsertRowCreateDataSource':
          return LocalBaserowUpsertRowCreateDataSource.fromJson(value);
        case 'LocalBaserowUpsertRowDataSource':
          return LocalBaserowUpsertRowDataSource.fromJson(value);
        case 'LocalBaserowUpsertRowPublicDataSource':
          return LocalBaserowUpsertRowPublicDataSource.fromJson(value);
        case 'LocalBaserowUpsertRowService':
          return LocalBaserowUpsertRowService.fromJson(value);
        case 'LocalBaserowUpsertRowUpdateDataSource':
          return LocalBaserowUpsertRowUpdateDataSource.fromJson(value);
        case 'LocalBaserowUserSourceBasePublicUserSource':
          return LocalBaserowUserSourceBasePublicUserSource.fromJson(value);
        case 'LocalBaserowUserSourceCreateUserSource':
          return LocalBaserowUserSourceCreateUserSource.fromJson(value);
        case 'LocalBaserowUserSourceUpdateUserSource':
          return LocalBaserowUserSourceUpdateUserSource.fromJson(value);
        case 'LocalBaserowUserSourceUserSource':
          return LocalBaserowUserSourceUserSource.fromJson(value);
        case 'LocalBaserowUserSourceUserSourceRoles':
          return LocalBaserowUserSourceUserSourceRoles.fromJson(value);
        case 'LocalBaserowView':
          return LocalBaserowView.fromJson(value);
        case 'LogoutWorkflowActionBuilderWorkflowAction':
          return LogoutWorkflowActionBuilderWorkflowAction.fromJson(value);
        case 'LogoutWorkflowActionCreateBuilderWorkflowAction':
          return LogoutWorkflowActionCreateBuilderWorkflowAction.fromJson(value);
        case 'LogoutWorkflowActionUpdateBuilderWorkflowActions':
          return LogoutWorkflowActionUpdateBuilderWorkflowActions.fromJson(value);
        case 'LongTextFieldCreateField':
          return LongTextFieldCreateField.fromJson(value);
        case 'LongTextFieldField':
          return LongTextFieldField.fromJson(value);
        case 'LongTextFieldFieldSerializerWithRelatedFields':
          return LongTextFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'LongTextFieldUpdateField':
          return LongTextFieldUpdateField.fromJson(value);
        case 'LookupFieldCreateField':
          return LookupFieldCreateField.fromJson(value);
        case 'LookupFieldField':
          return LookupFieldField.fromJson(value);
        case 'LookupFieldFieldSerializerWithRelatedFields':
          return LookupFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'LookupFieldUpdateField':
          return LookupFieldUpdateField.fromJson(value);
        case 'MarkNotificationAsRead404Response':
          return MarkNotificationAsRead404Response.fromJson(value);
        case 'MistralSettings':
          return MistralSettings.fromJson(value);
        case 'Mode51eEnum':
          return Mode51eEnumTypeTransformer().decode(value);
        case 'Mode884Enum':
          return Mode884EnumTypeTransformer().decode(value);
        case 'ModelExport':
          return ModelExport.fromJson(value);
        case 'MoveApplicationIntegration400Response':
          return MoveApplicationIntegration400Response.fromJson(value);
        case 'MoveApplicationUserSource400Response':
          return MoveApplicationUserSource400Response.fromJson(value);
        case 'MoveBuilderPageDataSource400Response':
          return MoveBuilderPageDataSource400Response.fromJson(value);
        case 'MoveBuilderPageElement400Response':
          return MoveBuilderPageElement400Response.fromJson(value);
        case 'MultipleCollaboratorsFieldCreateField':
          return MultipleCollaboratorsFieldCreateField.fromJson(value);
        case 'MultipleCollaboratorsFieldField':
          return MultipleCollaboratorsFieldField.fromJson(value);
        case 'MultipleCollaboratorsFieldFieldSerializerWithRelatedFields':
          return MultipleCollaboratorsFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'MultipleCollaboratorsFieldUpdateField':
          return MultipleCollaboratorsFieldUpdateField.fromJson(value);
        case 'MultipleSelectFieldCreateField':
          return MultipleSelectFieldCreateField.fromJson(value);
        case 'MultipleSelectFieldField':
          return MultipleSelectFieldField.fromJson(value);
        case 'MultipleSelectFieldFieldSerializerWithRelatedFields':
          return MultipleSelectFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'MultipleSelectFieldUpdateField':
          return MultipleSelectFieldUpdateField.fromJson(value);
        case 'NavigationTypeEnum':
          return NavigationTypeEnumTypeTransformer().decode(value);
        case 'NotificationRecipient':
          return NotificationRecipient.fromJson(value);
        case 'NotificationWorkflowActionBuilderWorkflowAction':
          return NotificationWorkflowActionBuilderWorkflowAction.fromJson(value);
        case 'NotificationWorkflowActionCreateBuilderWorkflowAction':
          return NotificationWorkflowActionCreateBuilderWorkflowAction.fromJson(value);
        case 'NotificationWorkflowActionUpdateBuilderWorkflowActions':
          return NotificationWorkflowActionUpdateBuilderWorkflowActions.fromJson(value);
        case 'NullEnum':
          return NullEnumTypeTransformer().decode(value);
        case 'NumberDecimalPlacesEnum':
          return NumberDecimalPlacesEnumTypeTransformer().decode(value);
        case 'NumberFieldCreateField':
          return NumberFieldCreateField.fromJson(value);
        case 'NumberFieldField':
          return NumberFieldField.fromJson(value);
        case 'NumberFieldFieldSerializerWithRelatedFields':
          return NumberFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'NumberFieldUpdateField':
          return NumberFieldUpdateField.fromJson(value);
        case 'NumberSeparatorEnum':
          return NumberSeparatorEnumTypeTransformer().decode(value);
        case 'OllamaSettings':
          return OllamaSettings.fromJson(value);
        case 'OpenAISettings':
          return OpenAISettings.fromJson(value);
        case 'OpenApiRoleAssignment':
          return OpenApiRoleAssignment.fromJson(value);
        case 'OpenApiSubjectField':
          return OpenApiSubjectField.fromJson(value);
        case 'OpenIdConnectAuthProviderModelAuthProvider':
          return OpenIdConnectAuthProviderModelAuthProvider.fromJson(value);
        case 'OpenPageWorkflowActionBuilderWorkflowAction':
          return OpenPageWorkflowActionBuilderWorkflowAction.fromJson(value);
        case 'OpenPageWorkflowActionCreateBuilderWorkflowAction':
          return OpenPageWorkflowActionCreateBuilderWorkflowAction.fromJson(value);
        case 'OpenPageWorkflowActionUpdateBuilderWorkflowActions':
          return OpenPageWorkflowActionUpdateBuilderWorkflowActions.fromJson(value);
        case 'OpenRouterSettings':
          return OpenRouterSettings.fromJson(value);
        case 'OptionTypeEnum':
          return OptionTypeEnumTypeTransformer().decode(value);
        case 'OrderApplications':
          return OrderApplications.fromJson(value);
        case 'OrderBuilderDomains400Response':
          return OrderBuilderDomains400Response.fromJson(value);
        case 'OrderBuilderDomains404Response':
          return OrderBuilderDomains404Response.fromJson(value);
        case 'OrderBuilderPages400Response':
          return OrderBuilderPages400Response.fromJson(value);
        case 'OrderBuilderPages404Response':
          return OrderBuilderPages404Response.fromJson(value);
        case 'OrderBuilderWorkflowActions404Response':
          return OrderBuilderWorkflowActions404Response.fromJson(value);
        case 'OrderByEnum':
          return OrderByEnumTypeTransformer().decode(value);
        case 'OrderDatabaseTableViews400Response':
          return OrderDatabaseTableViews400Response.fromJson(value);
        case 'OrderDatabaseTables400Response':
          return OrderDatabaseTables400Response.fromJson(value);
        case 'OrderDomains':
          return OrderDomains.fromJson(value);
        case 'OrderEnum':
          return OrderEnumTypeTransformer().decode(value);
        case 'OrderPages':
          return OrderPages.fromJson(value);
        case 'OrderTables':
          return OrderTables.fromJson(value);
        case 'OrderViews':
          return OrderViews.fromJson(value);
        case 'OrderWorkflowActions':
          return OrderWorkflowActions.fromJson(value);
        case 'OrderWorkspaces':
          return OrderWorkspaces.fromJson(value);
        case 'OrientationEnum':
          return OrientationEnumTypeTransformer().decode(value);
        case 'OwnershipTypeEnum':
          return OwnershipTypeEnumTypeTransformer().decode(value);
        case 'Page':
          return Page.fromJson(value);
        case 'PageBackgroundModeEnum':
          return PageBackgroundModeEnumTypeTransformer().decode(value);
        case 'PageParameterValue':
          return PageParameterValue.fromJson(value);
        case 'PaginationSerializerAuditLog':
          return PaginationSerializerAuditLog.fromJson(value);
        case 'PaginationSerializerAuditLogUser':
          return PaginationSerializerAuditLogUser.fromJson(value);
        case 'PaginationSerializerAuditLogWorkspace':
          return PaginationSerializerAuditLogWorkspace.fromJson(value);
        case 'PaginationSerializerExampleRowResponseSerializerWithUserFieldNames':
          return PaginationSerializerExampleRowResponseSerializerWithUserFieldNames.fromJson(value);
        case 'PaginationSerializerLicenseUserLookup':
          return PaginationSerializerLicenseUserLookup.fromJson(value);
        case 'PaginationSerializerLinkRowValue':
          return PaginationSerializerLinkRowValue.fromJson(value);
        case 'PaginationSerializerNotificationRecipient':
          return PaginationSerializerNotificationRecipient.fromJson(value);
        case 'PaginationSerializerRowComment':
          return PaginationSerializerRowComment.fromJson(value);
        case 'PaginationSerializerRowHistory':
          return PaginationSerializerRowHistory.fromJson(value);
        case 'PaginationSerializerTrashContents':
          return PaginationSerializerTrashContents.fromJson(value);
        case 'PaginationSerializerUserAdminResponse':
          return PaginationSerializerUserAdminResponse.fromJson(value);
        case 'PaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse':
          return PaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse.fromJson(value);
        case 'PaginationSerializerWithGridViewFieldOptionsExampleRowResponse':
          return PaginationSerializerWithGridViewFieldOptionsExampleRowResponse.fromJson(value);
        case 'PaginationSerializerWithTimelineViewFieldOptionsExampleRowResponse':
          return PaginationSerializerWithTimelineViewFieldOptionsExampleRowResponse.fromJson(value);
        case 'PaginationSerializerWorkspacesAdminResponse':
          return PaginationSerializerWorkspacesAdminResponse.fromJson(value);
        case 'PasswordAuthProviderModelAuthProvider':
          return PasswordAuthProviderModelAuthProvider.fromJson(value);
        case 'PasswordFieldCreateField':
          return PasswordFieldCreateField.fromJson(value);
        case 'PasswordFieldField':
          return PasswordFieldField.fromJson(value);
        case 'PasswordFieldFieldSerializerWithRelatedFields':
          return PasswordFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'PasswordFieldUpdateField':
          return PasswordFieldUpdateField.fromJson(value);
        case 'PatchedAccount':
          return PatchedAccount.fromJson(value);
        case 'PatchedApplicationBaseApplicationUpdatePolymorphic':
          return PatchedApplicationBaseApplicationUpdatePolymorphic.fromJson(value);
        case 'PatchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions':
          return PatchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions.fromJson(value);
        case 'PatchedCombinedThemeConfigBlocks':
          return PatchedCombinedThemeConfigBlocks.fromJson(value);
        case 'PatchedDataSyncUpdateDataSync':
          return PatchedDataSyncUpdateDataSync.fromJson(value);
        case 'PatchedDecoratorValueProviderTypeUpdateViewDecoration':
          return PatchedDecoratorValueProviderTypeUpdateViewDecoration.fromJson(value);
        case 'PatchedElementTypeUpdateElement':
          return PatchedElementTypeUpdateElement.fromJson(value);
        case 'PatchedExampleBatchUpdateRowsRequest':
          return PatchedExampleBatchUpdateRowsRequest.fromJson(value);
        case 'PatchedExampleUpdateRowRequestSerializerWithUserFieldNames':
          return PatchedExampleUpdateRowRequestSerializerWithUserFieldNames.fromJson(value);
        case 'PatchedFieldUpdateField':
          return PatchedFieldUpdateField.fromJson(value);
        case 'PatchedGenerativeAISettings':
          return PatchedGenerativeAISettings.fromJson(value);
        case 'PatchedIntegrationServiceUpdateDataSource':
          return PatchedIntegrationServiceUpdateDataSource.fromJson(value);
        case 'PatchedMoveDataSource':
          return PatchedMoveDataSource.fromJson(value);
        case 'PatchedMoveElement':
          return PatchedMoveElement.fromJson(value);
        case 'PatchedMoveIntegration':
          return PatchedMoveIntegration.fromJson(value);
        case 'PatchedMoveUserSource':
          return PatchedMoveUserSource.fromJson(value);
        case 'PatchedSettings':
          return PatchedSettings.fromJson(value);
        case 'PatchedTableUpdate':
          return PatchedTableUpdate.fromJson(value);
        case 'PatchedTableWebhookUpdateRequest':
          return PatchedTableWebhookUpdateRequest.fromJson(value);
        case 'PatchedTokenUpdate':
          return PatchedTokenUpdate.fromJson(value);
        case 'PatchedTokenUpdatePermissions':
          return PatchedTokenUpdatePermissions.fromJson(value);
        case 'PatchedTokenUpdatePermissionsCreate':
          return PatchedTokenUpdatePermissionsCreate.fromJson(value);
        case 'PatchedTokenUpdatePermissionsCreateAnyOfInnerInner':
          return PatchedTokenUpdatePermissionsCreateAnyOfInnerInner.fromJson(value);
        case 'PatchedTrashEntryRequest':
          return PatchedTrashEntryRequest.fromJson(value);
        case 'PatchedUndoRedoRequest':
          return PatchedUndoRedoRequest.fromJson(value);
        case 'PatchedUpdateDomain':
          return PatchedUpdateDomain.fromJson(value);
        case 'PatchedUpdatePage':
          return PatchedUpdatePage.fromJson(value);
        case 'PatchedUpdatePremiumViewAttributes':
          return PatchedUpdatePremiumViewAttributes.fromJson(value);
        case 'PatchedUpdateViewFilter':
          return PatchedUpdateViewFilter.fromJson(value);
        case 'PatchedUpdateViewFilterGroup':
          return PatchedUpdateViewFilterGroup.fromJson(value);
        case 'PatchedUpdateViewGroupBy':
          return PatchedUpdateViewGroupBy.fromJson(value);
        case 'PatchedUpdateViewSort':
          return PatchedUpdateViewSort.fromJson(value);
        case 'PatchedUpdateWorkspaceInvitation':
          return PatchedUpdateWorkspaceInvitation.fromJson(value);
        case 'PatchedUpdateWorkspaceUser':
          return PatchedUpdateWorkspaceUser.fromJson(value);
        case 'PatchedUserAdminUpdate':
          return PatchedUserAdminUpdate.fromJson(value);
        case 'PatchedViewFieldOptions':
          return PatchedViewFieldOptions.fromJson(value);
        case 'PatchedViewUpdateView':
          return PatchedViewUpdateView.fromJson(value);
        case 'PatchedWorkspace':
          return PatchedWorkspace.fromJson(value);
        case 'PathParam':
          return PathParam.fromJson(value);
        case 'PathParamTypeEnum':
          return PathParamTypeEnumTypeTransformer().decode(value);
        case 'PermissionObject':
          return PermissionObject.fromJson(value);
        case 'PhoneNumberFieldCreateField':
          return PhoneNumberFieldCreateField.fromJson(value);
        case 'PhoneNumberFieldField':
          return PhoneNumberFieldField.fromJson(value);
        case 'PhoneNumberFieldFieldSerializerWithRelatedFields':
          return PhoneNumberFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'PhoneNumberFieldUpdateField':
          return PhoneNumberFieldUpdateField.fromJson(value);
        case 'PostgreSQLDataSyncCreateDataSync':
          return PostgreSQLDataSyncCreateDataSync.fromJson(value);
        case 'PostgreSQLDataSyncDataSync':
          return PostgreSQLDataSyncDataSync.fromJson(value);
        case 'PostgreSQLDataSyncListDataSyncPropertiesRequest':
          return PostgreSQLDataSyncListDataSyncPropertiesRequest.fromJson(value);
        case 'PostgreSQLDataSyncUpdateDataSync':
          return PostgreSQLDataSyncUpdateDataSync.fromJson(value);
        case 'PostgresqlSslmodeEnum':
          return PostgresqlSslmodeEnumTypeTransformer().decode(value);
        case 'PremiumViewAttributesUpdate400Response':
          return PremiumViewAttributesUpdate400Response.fromJson(value);
        case 'PremiumViewAttributesUpdate404Response':
          return PremiumViewAttributesUpdate404Response.fromJson(value);
        case 'PublicBuilder':
          return PublicBuilder.fromJson(value);
        case 'PublicBuilderWorkflowActionTypeBuilderWorkflowAction':
          return PublicBuilderWorkflowActionTypeBuilderWorkflowAction.fromJson(value);
        case 'PublicField':
          return PublicField.fromJson(value);
        case 'PublicFormView':
          return PublicFormView.fromJson(value);
        case 'PublicFormViewField':
          return PublicFormViewField.fromJson(value);
        case 'PublicFormViewFieldOptions':
          return PublicFormViewFieldOptions.fromJson(value);
        case 'PublicListDatabaseTableCalendarViewRows400Response':
          return PublicListDatabaseTableCalendarViewRows400Response.fromJson(value);
        case 'PublicListDatabaseTableGalleryViewRows400Response':
          return PublicListDatabaseTableGalleryViewRows400Response.fromJson(value);
        case 'PublicListDatabaseTableGalleryViewRows404Response':
          return PublicListDatabaseTableGalleryViewRows404Response.fromJson(value);
        case 'PublicListDatabaseTableGridViewRows400Response':
          return PublicListDatabaseTableGridViewRows400Response.fromJson(value);
        case 'PublicListDatabaseTableGridViewRows404Response':
          return PublicListDatabaseTableGridViewRows404Response.fromJson(value);
        case 'PublicListDatabaseTableKanbanViewRows400Response':
          return PublicListDatabaseTableKanbanViewRows400Response.fromJson(value);
        case 'PublicListDatabaseTableKanbanViewRows404Response':
          return PublicListDatabaseTableKanbanViewRows404Response.fromJson(value);
        case 'PublicListDatabaseTableTimelineViewRows404Response':
          return PublicListDatabaseTableTimelineViewRows404Response.fromJson(value);
        case 'PublicNone':
          return PublicNone.fromJson(value);
        case 'PublicPage':
          return PublicPage.fromJson(value);
        case 'PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse':
          return PublicPaginationSerializerWithGalleryViewFieldOptionsExampleRowResponse.fromJson(value);
        case 'PublicPaginationSerializerWithGridViewFieldOptionsExampleRowResponse':
          return PublicPaginationSerializerWithGridViewFieldOptionsExampleRowResponse.fromJson(value);
        case 'PublicPaginationSerializerWithTimelineViewFieldOptionsExampleRowResponse':
          return PublicPaginationSerializerWithTimelineViewFieldOptionsExampleRowResponse.fromJson(value);
        case 'PublicView':
          return PublicView.fromJson(value);
        case 'PublicViewAuthRequest':
          return PublicViewAuthRequest.fromJson(value);
        case 'PublicViewAuthResponse':
          return PublicViewAuthResponse.fromJson(value);
        case 'PublicViewGroupBy':
          return PublicViewGroupBy.fromJson(value);
        case 'PublicViewInfo':
          return PublicViewInfo.fromJson(value);
        case 'PublicViewSort':
          return PublicViewSort.fromJson(value);
        case 'PublicViewTable':
          return PublicViewTable.fromJson(value);
        case 'PublishDomainJobCreateJob':
          return PublishDomainJobCreateJob.fromJson(value);
        case 'PublishDomainJobJob':
          return PublishDomainJobJob.fromJson(value);
        case 'RatingFieldCreateField':
          return RatingFieldCreateField.fromJson(value);
        case 'RatingFieldField':
          return RatingFieldField.fromJson(value);
        case 'RatingFieldFieldSerializerWithRelatedFields':
          return RatingFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'RatingFieldUpdateField':
          return RatingFieldUpdateField.fromJson(value);
        case 'RecordSelectorElementCreateElement':
          return RecordSelectorElementCreateElement.fromJson(value);
        case 'RecordSelectorElementElement':
          return RecordSelectorElementElement.fromJson(value);
        case 'RecordSelectorElementPublicElement':
          return RecordSelectorElementPublicElement.fromJson(value);
        case 'RecordSelectorElementUpdateElement':
          return RecordSelectorElementUpdateElement.fromJson(value);
        case 'RefreshDataSourceWorkflowActionBuilderWorkflowAction':
          return RefreshDataSourceWorkflowActionBuilderWorkflowAction.fromJson(value);
        case 'RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction':
          return RefreshDataSourceWorkflowActionCreateBuilderWorkflowAction.fromJson(value);
        case 'RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions':
          return RefreshDataSourceWorkflowActionUpdateBuilderWorkflowActions.fromJson(value);
        case 'Register':
          return Register.fromJson(value);
        case 'RegisterLicense':
          return RegisterLicense.fromJson(value);
        case 'RelatedFields':
          return RelatedFields.fromJson(value);
        case 'RepeatElementCreateElement':
          return RepeatElementCreateElement.fromJson(value);
        case 'RepeatElementElement':
          return RepeatElementElement.fromJson(value);
        case 'RepeatElementPublicElement':
          return RepeatElementPublicElement.fromJson(value);
        case 'RepeatElementUpdateElement':
          return RepeatElementUpdateElement.fromJson(value);
        case 'Report':
          return Report.fromJson(value);
        case 'RequestMethodEnum':
          return RequestMethodEnumTypeTransformer().decode(value);
        case 'ResetPassword400Response':
          return ResetPassword400Response.fromJson(value);
        case 'ResetPasswordBodyValidation':
          return ResetPasswordBodyValidation.fromJson(value);
        case 'Restore400Response':
          return Restore400Response.fromJson(value);
        case 'RestoreSnapshotJobCreateJob':
          return RestoreSnapshotJobCreateJob.fromJson(value);
        case 'RestoreSnapshotJobJob':
          return RestoreSnapshotJobJob.fromJson(value);
        case 'RoleTypeEnum':
          return RoleTypeEnumTypeTransformer().decode(value);
        case 'RollupFieldCreateField':
          return RollupFieldCreateField.fromJson(value);
        case 'RollupFieldField':
          return RollupFieldField.fromJson(value);
        case 'RollupFieldFieldSerializerWithRelatedFields':
          return RollupFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'RollupFieldUpdateField':
          return RollupFieldUpdateField.fromJson(value);
        case 'RotateDatabaseViewSlug400Response':
          return RotateDatabaseViewSlug400Response.fromJson(value);
        case 'RowComment':
          return RowComment.fromJson(value);
        case 'RowCommentCreate':
          return RowCommentCreate.fromJson(value);
        case 'RowCommentsNotificationMode':
          return RowCommentsNotificationMode.fromJson(value);
        case 'RowCommentsNotificationModeEnum':
          return RowCommentsNotificationModeEnumTypeTransformer().decode(value);
        case 'RowHeightSizeEnum':
          return RowHeightSizeEnumTypeTransformer().decode(value);
        case 'RowHistory':
          return RowHistory.fromJson(value);
        case 'RowHistoryUser':
          return RowHistoryUser.fromJson(value);
        case 'RowIdentifierTypeEnum':
          return RowIdentifierTypeEnumTypeTransformer().decode(value);
        case 'RowMetadata':
          return RowMetadata.fromJson(value);
        case 'SAMLResponse':
          return SAMLResponse.fromJson(value);
        case 'SamlAppAuthProviderModelAppAuthProvider':
          return SamlAppAuthProviderModelAppAuthProvider.fromJson(value);
        case 'SamlAppAuthProviderModelBaseAppAuthProvider':
          return SamlAppAuthProviderModelBaseAppAuthProvider.fromJson(value);
        case 'SamlAuthProviderModelAuthProvider':
          return SamlAuthProviderModelAuthProvider.fromJson(value);
        case 'ScopeTypeEnum':
          return ScopeTypeEnumTypeTransformer().decode(value);
        case 'SecureFileServeDownload403Response':
          return SecureFileServeDownload403Response.fromJson(value);
        case 'SelectColorValueProviderConf':
          return SelectColorValueProviderConf.fromJson(value);
        case 'SelectOption':
          return SelectOption.fromJson(value);
        case 'SendPasswordResetEmail400Response':
          return SendPasswordResetEmail400Response.fromJson(value);
        case 'SendResetPasswordEmailBodyValidation':
          return SendResetPasswordEmailBodyValidation.fromJson(value);
        case 'Sender':
          return Sender.fromJson(value);
        case 'Settings':
          return Settings.fromJson(value);
        case 'ShareTypeEnum':
          return ShareTypeEnumTypeTransformer().decode(value);
        case 'SingleAuditLogExportJobRequest':
          return SingleAuditLogExportJobRequest.fromJson(value);
        case 'SingleAuditLogExportJobResponse':
          return SingleAuditLogExportJobResponse.fromJson(value);
        case 'SingleSelectFieldCreateField':
          return SingleSelectFieldCreateField.fromJson(value);
        case 'SingleSelectFieldField':
          return SingleSelectFieldField.fromJson(value);
        case 'SingleSelectFieldFieldSerializerWithRelatedFields':
          return SingleSelectFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'SingleSelectFieldUpdateField':
          return SingleSelectFieldUpdateField.fromJson(value);
        case 'Snapshot':
          return Snapshot.fromJson(value);
        case 'SourceTypeEnum':
          return SourceTypeEnumTypeTransformer().decode(value);
        case 'StateEnum':
          return StateEnumTypeTransformer().decode(value);
        case 'StyleBackgroundEnum':
          return StyleBackgroundEnumTypeTransformer().decode(value);
        case 'StyleBackgroundModeEnum':
          return StyleBackgroundModeEnumTypeTransformer().decode(value);
        case 'StyleEnum':
          return StyleEnumTypeTransformer().decode(value);
        case 'StyleWidthEnum':
          return StyleWidthEnumTypeTransformer().decode(value);
        case 'SubDomainCreateDomain':
          return SubDomainCreateDomain.fromJson(value);
        case 'SubDomainDomain':
          return SubDomainDomain.fromJson(value);
        case 'SubjectType0b2Enum':
          return SubjectType0b2EnumTypeTransformer().decode(value);
        case 'SubjectType398Enum':
          return SubjectType398EnumTypeTransformer().decode(value);
        case 'SubjectUser':
          return SubjectUser.fromJson(value);
        case 'SubmitActionEnum':
          return SubmitActionEnumTypeTransformer().decode(value);
        case 'SyncDataSyncTableAsync400Response':
          return SyncDataSyncTableAsync400Response.fromJson(value);
        case 'SyncDataSyncTableJobCreateJob':
          return SyncDataSyncTableJobCreateJob.fromJson(value);
        case 'SyncDataSyncTableJobJob':
          return SyncDataSyncTableJobJob.fromJson(value);
        case 'SyncDataSyncTableJobTypeResponse':
          return SyncDataSyncTableJobTypeResponse.fromJson(value);
        case 'Table':
          return Table.fromJson(value);
        case 'TableCellAlignmentEnum':
          return TableCellAlignmentEnumTypeTransformer().decode(value);
        case 'TableCreate':
          return TableCreate.fromJson(value);
        case 'TableElementCreateElement':
          return TableElementCreateElement.fromJson(value);
        case 'TableElementElement':
          return TableElementElement.fromJson(value);
        case 'TableElementPublicElement':
          return TableElementPublicElement.fromJson(value);
        case 'TableElementUpdateElement':
          return TableElementUpdateElement.fromJson(value);
        case 'TableImport':
          return TableImport.fromJson(value);
        case 'TableSerializerWithFields':
          return TableSerializerWithFields.fromJson(value);
        case 'TableThemeConfigBlock':
          return TableThemeConfigBlock.fromJson(value);
        case 'TableWebhook':
          return TableWebhook.fromJson(value);
        case 'TableWebhookCall':
          return TableWebhookCall.fromJson(value);
        case 'TableWebhookCreateRequest':
          return TableWebhookCreateRequest.fromJson(value);
        case 'TableWebhookEventConfig':
          return TableWebhookEventConfig.fromJson(value);
        case 'TableWebhookTestCallRequest':
          return TableWebhookTestCallRequest.fromJson(value);
        case 'TableWebhookTestCallResponse':
          return TableWebhookTestCallResponse.fromJson(value);
        case 'TableWithoutDataSync':
          return TableWithoutDataSync.fromJson(value);
        case 'TargetEnum':
          return TargetEnumTypeTransformer().decode(value);
        case 'Team':
          return Team.fromJson(value);
        case 'TeamResponse':
          return TeamResponse.fromJson(value);
        case 'TeamSampleSubject':
          return TeamSampleSubject.fromJson(value);
        case 'TeamSubject':
          return TeamSubject.fromJson(value);
        case 'TeamSubjectResponse':
          return TeamSubjectResponse.fromJson(value);
        case 'Template':
          return Template.fromJson(value);
        case 'TemplateCategories':
          return TemplateCategories.fromJson(value);
        case 'TextElementCreateElement':
          return TextElementCreateElement.fromJson(value);
        case 'TextElementElement':
          return TextElementElement.fromJson(value);
        case 'TextElementPublicElement':
          return TextElementPublicElement.fromJson(value);
        case 'TextElementUpdateElement':
          return TextElementUpdateElement.fromJson(value);
        case 'TextFieldCreateField':
          return TextFieldCreateField.fromJson(value);
        case 'TextFieldField':
          return TextFieldField.fromJson(value);
        case 'TextFieldFieldSerializerWithRelatedFields':
          return TextFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'TextFieldUpdateField':
          return TextFieldUpdateField.fromJson(value);
        case 'TimeFormatEnum':
          return TimeFormatEnumTypeTransformer().decode(value);
        case 'TimelineViewCreateView':
          return TimelineViewCreateView.fromJson(value);
        case 'TimelineViewFieldOptions':
          return TimelineViewFieldOptions.fromJson(value);
        case 'TimelineViewUpdate':
          return TimelineViewUpdate.fromJson(value);
        case 'TimelineViewView':
          return TimelineViewView.fromJson(value);
        case 'TimescaleEnum':
          return TimescaleEnumTypeTransformer().decode(value);
        case 'Token':
          return Token.fromJson(value);
        case 'TokenAuth401Response':
          return TokenAuth401Response.fromJson(value);
        case 'TokenBlacklist':
          return TokenBlacklist.fromJson(value);
        case 'TokenCreate':
          return TokenCreate.fromJson(value);
        case 'TokenObtainPair':
          return TokenObtainPair.fromJson(value);
        case 'TokenObtainPairWithUser':
          return TokenObtainPairWithUser.fromJson(value);
        case 'TokenRefresh401Response':
          return TokenRefresh401Response.fromJson(value);
        case 'TokenRefreshWithUser':
          return TokenRefreshWithUser.fromJson(value);
        case 'TokenVerify200Response':
          return TokenVerify200Response.fromJson(value);
        case 'TokenVerifyWithUser':
          return TokenVerifyWithUser.fromJson(value);
        case 'TrashContents':
          return TrashContents.fromJson(value);
        case 'TrashItemTypeEnum':
          return TrashItemTypeEnumTypeTransformer().decode(value);
        case 'TrashStructure':
          return TrashStructure.fromJson(value);
        case 'TrashStructureApplication':
          return TrashStructureApplication.fromJson(value);
        case 'TrashStructureWorkspace':
          return TrashStructureWorkspace.fromJson(value);
        case 'Type050Enum':
          return Type050EnumTypeTransformer().decode(value);
        case 'Type051Enum':
          return Type051EnumTypeTransformer().decode(value);
        case 'Type2e6Enum':
          return Type2e6EnumTypeTransformer().decode(value);
        case 'Type40dEnum':
          return Type40dEnumTypeTransformer().decode(value);
        case 'Type509Enum':
          return Type509EnumTypeTransformer().decode(value);
        case 'Type622Enum':
          return Type622EnumTypeTransformer().decode(value);
        case 'Type6ebEnum':
          return Type6ebEnumTypeTransformer().decode(value);
        case 'Type8b0Enum':
          return Type8b0EnumTypeTransformer().decode(value);
        case 'Type99fEnum':
          return Type99fEnumTypeTransformer().decode(value);
        case 'Type9c4Enum':
          return Type9c4EnumTypeTransformer().decode(value);
        case 'TypeBc4Enum':
          return TypeBc4EnumTypeTransformer().decode(value);
        case 'TypeD46Enum':
          return TypeD46EnumTypeTransformer().decode(value);
        case 'TypeD53Enum':
          return TypeD53EnumTypeTransformer().decode(value);
        case 'TypeFormulaField400Response':
          return TypeFormulaField400Response.fromJson(value);
        case 'TypeFormulaRequest':
          return TypeFormulaRequest.fromJson(value);
        case 'TypeFormulaResult':
          return TypeFormulaResult.fromJson(value);
        case 'TypographyConfigBlock':
          return TypographyConfigBlock.fromJson(value);
        case 'TypographyThemeConfigBlock':
          return TypographyThemeConfigBlock.fromJson(value);
        case 'URLFieldCreateField':
          return URLFieldCreateField.fromJson(value);
        case 'URLFieldField':
          return URLFieldField.fromJson(value);
        case 'URLFieldFieldSerializerWithRelatedFields':
          return URLFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'URLFieldUpdateField':
          return URLFieldUpdateField.fromJson(value);
        case 'UUIDFieldCreateField':
          return UUIDFieldCreateField.fromJson(value);
        case 'UUIDFieldField':
          return UUIDFieldField.fromJson(value);
        case 'UUIDFieldFieldSerializerWithRelatedFields':
          return UUIDFieldFieldSerializerWithRelatedFields.fromJson(value);
        case 'UUIDFieldUpdateField':
          return UUIDFieldUpdateField.fromJson(value);
        case 'UndoRedoAction':
          return UndoRedoAction.fromJson(value);
        case 'UndoRedoResponse':
          return UndoRedoResponse.fromJson(value);
        case 'UniqueRowValues':
          return UniqueRowValues.fromJson(value);
        case 'UpdateBuilderPage400Response':
          return UpdateBuilderPage400Response.fromJson(value);
        case 'UpdateBuilderPage404Response':
          return UpdateBuilderPage404Response.fromJson(value);
        case 'UpdateDatabaseTableField400Response':
          return UpdateDatabaseTableField400Response.fromJson(value);
        case 'UpdateDatabaseTableView400Response':
          return UpdateDatabaseTableView400Response.fromJson(value);
        case 'UpdateDatabaseTableViewGroup400Response':
          return UpdateDatabaseTableViewGroup400Response.fromJson(value);
        case 'UpdateDatabaseTableViewSort400Response':
          return UpdateDatabaseTableViewSort400Response.fromJson(value);
        case 'UpdateDatabaseToken400Response':
          return UpdateDatabaseToken400Response.fromJson(value);
        case 'UpdateRowComment400Response':
          return UpdateRowComment400Response.fromJson(value);
        case 'UpdateTableDataSync400Response':
          return UpdateTableDataSync400Response.fromJson(value);
        case 'UpdateTeam400Response':
          return UpdateTeam400Response.fromJson(value);
        case 'UpdateTeam404Response':
          return UpdateTeam404Response.fromJson(value);
        case 'UpdateWorkspace400Response':
          return UpdateWorkspace400Response.fromJson(value);
        case 'UpdateWorkspaceInvitation400Response':
          return UpdateWorkspaceInvitation400Response.fromJson(value);
        case 'UpdateWorkspaceUser404Response':
          return UpdateWorkspaceUser404Response.fromJson(value);
        case 'UploadFile400Response':
          return UploadFile400Response.fromJson(value);
        case 'UploadFileFormView400Response':
          return UploadFileFormView400Response.fromJson(value);
        case 'UploadViaUrl400Response':
          return UploadViaUrl400Response.fromJson(value);
        case 'User':
          return User.fromJson(value);
        case 'UserAdminCreate':
          return UserAdminCreate.fromJson(value);
        case 'UserAdminResponse':
          return UserAdminResponse.fromJson(value);
        case 'UserAdminWorkspaces':
          return UserAdminWorkspaces.fromJson(value);
        case 'UserFile':
          return UserFile.fromJson(value);
        case 'UserFileUploadViaURLRequest':
          return UserFileUploadViaURLRequest.fromJson(value);
        case 'UserSourceBasePublicUserSource':
          return UserSourceBasePublicUserSource.fromJson(value);
        case 'UserSourceCreateUserSource':
          return UserSourceCreateUserSource.fromJson(value);
        case 'UserSourceForceTokenAuth200Response':
          return UserSourceForceTokenAuth200Response.fromJson(value);
        case 'UserSourceTokenRefresh200Response':
          return UserSourceTokenRefresh200Response.fromJson(value);
        case 'UserSourceUser':
          return UserSourceUser.fromJson(value);
        case 'UserSourceUserSource':
          return UserSourceUserSource.fromJson(value);
        case 'UserSourceUserSourceRoles':
          return UserSourceUserSourceRoles.fromJson(value);
        case 'UserWorkspaceInvitation':
          return UserWorkspaceInvitation.fromJson(value);
        case 'UsersPerUserSource':
          return UsersPerUserSource.fromJson(value);
        case 'ValidationTypeEnum':
          return ValidationTypeEnumTypeTransformer().decode(value);
        case 'ValueProviderTypeEnum':
          return ValueProviderTypeEnumTypeTransformer().decode(value);
        case 'VariantEnum':
          return VariantEnumTypeTransformer().decode(value);
        case 'VerifyEmail400Response':
          return VerifyEmail400Response.fromJson(value);
        case 'VerifyEmail401Response':
          return VerifyEmail401Response.fromJson(value);
        case 'VerifyEmailAddress':
          return VerifyEmailAddress.fromJson(value);
        case 'View':
          return View.fromJson(value);
        case 'ViewCreateView':
          return ViewCreateView.fromJson(value);
        case 'ViewDecoration':
          return ViewDecoration.fromJson(value);
        case 'ViewFieldOptions':
          return ViewFieldOptions.fromJson(value);
        case 'ViewFilter':
          return ViewFilter.fromJson(value);
        case 'ViewFilterGroup':
          return ViewFilterGroup.fromJson(value);
        case 'ViewGroupBy':
          return ViewGroupBy.fromJson(value);
        case 'ViewSort':
          return ViewSort.fromJson(value);
        case 'ViewView':
          return ViewView.fromJson(value);
        case 'Visibility789Enum':
          return Visibility789EnumTypeTransformer().decode(value);
        case 'VisibilityC5fEnum':
          return VisibilityC5fEnumTypeTransformer().decode(value);
        case 'Workspace':
          return Workspace.fromJson(value);
        case 'WorkspaceAdminUsers':
          return WorkspaceAdminUsers.fromJson(value);
        case 'WorkspaceCreateTeam400Response':
          return WorkspaceCreateTeam400Response.fromJson(value);
        case 'WorkspaceCreateTeam404Response':
          return WorkspaceCreateTeam404Response.fromJson(value);
        case 'WorkspaceGetApplication400Response':
          return WorkspaceGetApplication400Response.fromJson(value);
        case 'WorkspaceGetContents400Response':
          return WorkspaceGetContents400Response.fromJson(value);
        case 'WorkspaceInvitation':
          return WorkspaceInvitation.fromJson(value);
        case 'WorkspaceOrderApplications400Response':
          return WorkspaceOrderApplications400Response.fromJson(value);
        case 'WorkspacePermissions404Response':
          return WorkspacePermissions404Response.fromJson(value);
        case 'WorkspaceUser':
          return WorkspaceUser.fromJson(value);
        case 'WorkspaceUserEnterpriseTeam':
          return WorkspaceUserEnterpriseTeam.fromJson(value);
        case 'WorkspaceUserWorkspace':
          return WorkspaceUserWorkspace.fromJson(value);
        case 'WorkspacesAdminResponse':
          return WorkspacesAdminResponse.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
