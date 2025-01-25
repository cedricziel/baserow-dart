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


/// tests for BuilderDataSourcesApi
void main() {
  // final instance = BuilderDataSourcesApi();

  group('tests for BuilderDataSourcesApi', () {
    // Creates a new builder data_source
    //
    //Future<IntegrationServiceDataSource> createBuilderPageDataSource(int pageId, { String clientSessionId, IntegrationServiceCreateDataSource integrationServiceCreateDataSource }) async
    test('test createBuilderPageDataSource', () async {
      // TODO
    });

    // Deletes the data_source related by the given id.
    //
    //Future deleteBuilderPageDataSource(int dataSourceId, { String clientSessionId }) async
    test('test deleteBuilderPageDataSource', () async {
      // TODO
    });

    // Dispatches the service of the related data_source and returns the result.
    //
    //Future dispatchBuilderPageDataSource(int dataSourceId, { String clientSessionId, DispatchDataSourceRequest dispatchDataSourceRequest }) async
    test('test dispatchBuilderPageDataSource', () async {
      // TODO
    });

    // Dispatches the service of the related page data_sources
    //
    //Future dispatchBuilderPageDataSources(int pageId, { String clientSessionId }) async
    test('test dispatchBuilderPageDataSources', () async {
      // TODO
    });

    // Dispatches the service of the related data_source and returns the result.
    //
    //Future dispatchPublicBuilderPageDataSource(int dataSourceId, { String clientSessionId, DispatchDataSourceRequest dispatchDataSourceRequest }) async
    test('test dispatchPublicBuilderPageDataSource', () async {
      // TODO
    });

    // Dispatches the service of the related page data_sources
    //
    //Future dispatchPublicBuilderPageDataSources(int pageId, { String clientSessionId }) async
    test('test dispatchPublicBuilderPageDataSources', () async {
      // TODO
    });

    // Find the record names associated with a given list of record ids.
    //
    //Future<Map<String, String>> getRecordNamesBuilderPageDataSource(int dataSourceId, { String recordIds }) async
    test('test getRecordNamesBuilderPageDataSource', () async {
      // TODO
    });

    // Lists all the data_sources of the page related to the provided parameter if the user has access to the related builder's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
    //
    //Future<List<IntegrationServiceDataSource>> listBuilderPageDataSources(int pageId) async
    test('test listBuilderPageDataSources', () async {
      // TODO
    });

    // Lists all the data_sources of the page related to the provided parameter if the builder is public.
    //
    //Future<List<IntegrationServicePublicDataSource>> listPublicBuilderPageDataSources(int pageId) async
    test('test listPublicBuilderPageDataSources', () async {
      // TODO
    });

    // Moves the data_source in the page before another data_source or at the end of the page if no before data_source is given. The data_sources must belong to the same page.
    //
    //Future<IntegrationServiceDataSource> moveBuilderPageDataSource(int dataSourceId, { String clientSessionId, PatchedMoveDataSource patchedMoveDataSource }) async
    test('test moveBuilderPageDataSource', () async {
      // TODO
    });

    // Updates an existing builder data_source.
    //
    //Future<IntegrationServiceDataSource> updateBuilderPageDataSource(int dataSourceId, { String clientSessionId, PatchedIntegrationServiceUpdateDataSource patchedIntegrationServiceUpdateDataSource }) async
    test('test updateBuilderPageDataSource', () async {
      // TODO
    });

  });
}
