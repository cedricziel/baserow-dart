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


/// tests for BuilderDomainsApi
void main() {
  // final instance = BuilderDomainsApi();

  group('tests for BuilderDomainsApi', () {
    // This endpoint can be used to check whether a domain exists for SSL certificate purposes. It's compatible with the Caddy on_demand TLS as described here: https://caddyserver.com/docs/json/apps/tls/automation/on_demand/ask/. It will respond with a 200 status code if it exists or a 404 if it doesn't exist.
    //
    //Future askPublicBuilderDomainExists({ int domain }) async
    test('test askPublicBuilderDomainExists', () async {
      // TODO
    });

    // Creates a new domain for an application builder
    //
    //Future<DomainTypeDomain> createBuilderDomain(int builderId, { String clientSessionId, DomainTypeCreateDomain domainTypeCreateDomain }) async
    test('test createBuilderDomain', () async {
      // TODO
    });

    // Deletes an existing domain of an application builder
    //
    //Future deleteBuilderDomain(int domainId, { String clientSessionId }) async
    test('test deleteBuilderDomain', () async {
      // TODO
    });

    // Gets all the domains of a builder
    //
    //Future<List<DomainTypeDomain>> getBuilderDomains(int builderId, { String clientSessionId }) async
    test('test getBuilderDomains', () async {
      // TODO
    });

    // Apply a new order to the domains of a builder
    //
    //Future orderBuilderDomains(int builderId, OrderDomains orderDomains, { String clientSessionId }) async
    test('test orderBuilderDomains', () async {
      // TODO
    });

    // This endpoint starts an asynchronous job to publish the builder. The job clones the current version of the given builder and publish it for the given domain.
    //
    //Future publishBuilderDomain(int domainId, { String clientSessionId }) async
    test('test publishBuilderDomain', () async {
      // TODO
    });

    // Updates an existing domain of an application builder
    //
    //Future<DomainTypeDomain> updateBuilderDomain(int domainId, { String clientSessionId, PatchedUpdateDomain patchedUpdateDomain }) async
    test('test updateBuilderDomain', () async {
      // TODO
    });

  });
}
