//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for BuilderWorkflowActionsApi
void main() {
  // final instance = BuilderWorkflowActionsApi();

  group('tests for BuilderWorkflowActionsApi', () {
    // Creates a new builder workflow action
    //
    //Future<BuilderWorkflowActionTypeBuilderWorkflowAction> createBuilderPageWorkflowAction(int pageId, { String clientSessionId, BuilderWorkflowActionTypeCreateBuilderWorkflowAction builderWorkflowActionTypeCreateBuilderWorkflowAction }) async
    test('test createBuilderPageWorkflowAction', () async {
      // TODO
    });

    // Deletes the workflow action related by the given id.
    //
    //Future deleteBuilderPageWorkflowAction(int workflowActionId, { String clientSessionId }) async
    test('test deleteBuilderPageWorkflowAction', () async {
      // TODO
    });

    // Dispatches the service of the related workflow_action and returns the result.
    //
    //Future dispatchBuilderPageWorkflowAction(int workflowActionId, { String clientSessionId }) async
    test('test dispatchBuilderPageWorkflowAction', () async {
      // TODO
    });

    // Lists all the workflow actions of the page related to the provided parameter if the user has access to the related builder's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
    //
    //Future<List<BuilderWorkflowActionTypeBuilderWorkflowAction>> listBuilderPageWorkflowActions(int pageId) async
    test('test listBuilderPageWorkflowActions', () async {
      // TODO
    });

    // Lists all the workflow actions with their public accessible data. Some configuration might be omitted for security reasons such as passwords or PII.
    //
    //Future<List<PublicBuilderWorkflowActionTypeBuilderWorkflowAction>> listPublicBuilderPageWorkflowActions(int pageId) async
    test('test listPublicBuilderPageWorkflowActions', () async {
      // TODO
    });

    // Apply a new order to the workflow actions of a page
    //
    //Future orderBuilderWorkflowActions(int pageId, OrderWorkflowActions orderWorkflowActions, { String clientSessionId }) async
    test('test orderBuilderWorkflowActions', () async {
      // TODO
    });

    // Updates an existing builder workflow action.
    //
    //Future<BuilderWorkflowActionTypeBuilderWorkflowAction> updateBuilderPageWorkflowAction(int workflowActionId, { String clientSessionId, PatchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions patchedBuilderWorkflowActionTypeUpdateBuilderWorkflowActions }) async
    test('test updateBuilderPageWorkflowAction', () async {
      // TODO
    });

  });
}
