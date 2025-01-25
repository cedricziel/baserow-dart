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


/// tests for BuilderElementsApi
void main() {
  // final instance = BuilderElementsApi();

  group('tests for BuilderElementsApi', () {
    // Creates a new builder element
    //
    //Future<ElementTypeElement> createBuilderPageElement(int pageId, { String clientSessionId, ElementTypeCreateElement elementTypeCreateElement }) async
    test('test createBuilderPageElement', () async {
      // TODO
    });

    // Deletes the element related by the given id.
    //
    //Future deleteBuilderPageElement(int elementId, { String clientSessionId }) async
    test('test deleteBuilderPageElement', () async {
      // TODO
    });

    // Duplicates an element and all of the elements children and the associated workflow actions as well.
    //
    //Future<DuplicateElement> duplicateBuilderPageElement(int elementId, { String clientSessionId }) async
    test('test duplicateBuilderPageElement', () async {
      // TODO
    });

    // Lists all the elements of the page related to the provided parameter if the user has access to the related builder's workspace. If the workspace is related to a template, then this endpoint will be publicly accessible.
    //
    //Future<List<ElementTypeElement>> listBuilderPageElements(int pageId) async
    test('test listBuilderPageElements', () async {
      // TODO
    });

    // Lists all the elements of the page related to the provided parameter. If the user is Anonymous, the page must belong to a published builder instance to being accessible.
    //
    //Future<List<ElementTypePublicElement>> listPublicBuilderPageElements(int pageId) async
    test('test listPublicBuilderPageElements', () async {
      // TODO
    });

    // Moves the element in the page before another element or at the end of the page if no before element is given. The elements must belong to the same page.
    //
    //Future<ElementTypeElement> moveBuilderPageElement(int elementId, { String clientSessionId, PatchedMoveElement patchedMoveElement }) async
    test('test moveBuilderPageElement', () async {
      // TODO
    });

    // Updates an existing builder element.
    //
    //Future<ElementTypeElement> updateBuilderPageElement(int elementId, { String clientSessionId, PatchedElementTypeUpdateElement patchedElementTypeUpdateElement }) async
    test('test updateBuilderPageElement', () async {
      // TODO
    });

  });
}
