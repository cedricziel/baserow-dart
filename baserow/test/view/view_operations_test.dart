import 'dart:convert';

import 'package:baserow/baserow.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<http.Client>()])
import 'view_operations_test.mocks.dart';

void main() {
  late MockClient mockClient;
  late BaserowClient client;

  setUp(() {
    mockClient = MockClient();
    client = BaserowClient(
      config: BaserowConfig(baseUrl: 'http://localhost'),
      httpClient: mockClient,
    );
  });

  group('ViewOperations', () {
    test('createView creates a grid view', () async {
      const tableId = 1;
      const viewName = 'My Grid View';
      when(mockClient.post(
        Uri.parse('http://localhost/api/database/views/table/$tableId/'),
        headers: anyNamed('headers'),
        body: json.encode({
          'name': viewName,
          'type': 'grid',
          'filter_type': 'AND',
          'filters_disabled': false,
        }),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'id': 1,
              'name': viewName,
              'type': 'grid',
              'filter_type': 'AND',
              'filters_disabled': false,
              'ownership_type': 'collaborative',
              'slug': 'my-grid-view',
            }),
            200,
          ));

      final view = await client.createView(
        tableId,
        name: viewName,
        type: 'grid',
        filterType: 'AND',
        filtersDisabled: false,
      );

      expect(view.id, 1);
      expect(view.name, viewName);
      expect(view.type, 'grid');
      expect(view.filterType, 'AND');
      expect(view.filtersDisabled, false);
      expect(view.ownershipType, 'collaborative');
      expect(view.slug, 'my-grid-view');
    });

    test('createView creates a gallery view', () async {
      const tableId = 1;
      const viewName = 'My Gallery View';
      when(mockClient.post(
        Uri.parse('http://localhost/api/database/views/table/$tableId/'),
        headers: anyNamed('headers'),
        body: json.encode({
          'name': viewName,
          'type': 'gallery',
          'public': true,
        }),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'id': 2,
              'name': viewName,
              'type': 'gallery',
              'public': true,
              'ownership_type': 'collaborative',
              'slug': 'my-gallery-view',
            }),
            200,
          ));

      final view = await client.createView(
        tableId,
        name: viewName,
        type: 'gallery',
        public: true,
      );

      expect(view.id, 2);
      expect(view.name, viewName);
      expect(view.type, 'gallery');
      expect(view.public, true);
      expect(view.ownershipType, 'collaborative');
      expect(view.slug, 'my-gallery-view');
    });

    test('listViews returns list of views', () async {
      const tableId = 1;
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/views/table/$tableId/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            json.encode([
              {
                'id': 1,
                'name': 'Grid View',
                'type': 'grid',
                'filter_type': 'AND',
                'ownership_type': 'collaborative',
                'slug': 'grid-view',
              },
              {
                'id': 2,
                'name': 'Gallery View',
                'type': 'gallery',
                'public': true,
                'ownership_type': 'collaborative',
                'slug': 'gallery-view',
              },
            ]),
            200,
          ));

      final views = await client.listViews(tableId);

      expect(views.length, 2);
      expect(views[0].id, 1);
      expect(views[0].name, 'Grid View');
      expect(views[0].type, 'grid');
      expect(views[1].id, 2);
      expect(views[1].name, 'Gallery View');
      expect(views[1].type, 'gallery');
    });

    test('getView returns a single view', () async {
      const viewId = 1;
      when(mockClient.get(
        Uri.parse('http://localhost/api/database/views/$viewId/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'id': viewId,
              'name': 'Grid View',
              'type': 'grid',
              'filter_type': 'AND',
              'ownership_type': 'collaborative',
              'slug': 'grid-view',
            }),
            200,
          ));

      final view = await client.getView(viewId);

      expect(view.id, viewId);
      expect(view.name, 'Grid View');
      expect(view.type, 'grid');
      expect(view.filterType, 'AND');
      expect(view.ownershipType, 'collaborative');
      expect(view.slug, 'grid-view');
    });

    test('updateView updates view properties', () async {
      const viewId = 1;
      when(mockClient.patch(
        Uri.parse('http://localhost/api/database/views/$viewId/'),
        headers: anyNamed('headers'),
        body: json.encode({
          'name': 'Updated View',
          'filter_type': 'OR',
          'filters_disabled': true,
        }),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'id': viewId,
              'name': 'Updated View',
              'type': 'grid',
              'filter_type': 'OR',
              'filters_disabled': true,
              'ownership_type': 'collaborative',
              'slug': 'updated-view',
            }),
            200,
          ));

      final view = await client.updateView(
        viewId,
        name: 'Updated View',
        filterType: 'OR',
        filtersDisabled: true,
      );

      expect(view.id, viewId);
      expect(view.name, 'Updated View');
      expect(view.filterType, 'OR');
      expect(view.filtersDisabled, true);
    });

    test('deleteView deletes a view', () async {
      const viewId = 1;
      when(mockClient.delete(
        Uri.parse('http://localhost/api/database/views/$viewId/'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response('', 204));

      await client.deleteView(viewId);

      verify(mockClient.delete(
        Uri.parse('http://localhost/api/database/views/$viewId/'),
        headers: anyNamed('headers'),
      )).called(1);
    });

    test('createView throws when user has no access', () async {
      const tableId = 1;
      when(mockClient.post(
        Uri.parse('http://localhost/api/database/views/table/$tableId/'),
        headers: anyNamed('headers'),
        body: json.encode({
          'name': 'Test View',
          'type': 'grid',
        }),
      )).thenAnswer((_) async => http.Response(
            json.encode({
              'error': 'ERROR_USER_NOT_IN_GROUP',
              'detail': 'The user does not belong to the related workspace.',
            }),
            400,
          ));

      expect(
        () => client.createView(tableId, name: 'Test View', type: 'grid'),
        throwsA(isA<BaserowException>()),
      );
    });
  });
}
