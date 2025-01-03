import 'dart:convert';

import 'package:baserow/baserow.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'baserow_test.mocks.dart';

void main() {
  group('Files', () {
    late MockClient mockClient;
    late BaserowClient client;

    setUp(() {
      mockClient = MockClient();
      client = BaserowClient(
        config: const BaserowConfig(baseUrl: 'http://localhost'),
        httpClient: mockClient,
      );
    });

    tearDown(() {
      client.close();
    });

    group('uploadFile', () {
      test('successfully uploads file', () async {
        final fileBytes = utf8.encode('test file content');
        final filename = 'test.txt';
        final uploadResponse = {
          'url': 'https://files.baserow.io/user_files/test.txt',
          'thumbnails': {
            'tiny': {
              'url': 'https://files.baserow.io/thumbnails/tiny/test.txt',
              'width': 21,
              'height': 21
            },
            'small': {
              'url': 'https://files.baserow.io/thumbnails/small/test.txt',
              'width': 48,
              'height': 48
            }
          },
          'name': 'test.txt',
          'size': 16,
          'mime_type': 'text/plain',
          'is_image': false,
          'uploaded_at': '2024-01-01T12:00:00.000Z'
        };

        when(mockClient.send(any)).thenAnswer((_) async {
          final response = http.StreamedResponse(
            Stream.value(utf8.encode(json.encode(uploadResponse))),
            200,
          );
          return response;
        });

        final response = await client.uploadFile(fileBytes, filename);

        expect(response.url, equals(uploadResponse['url']));
        expect(response.name, equals(uploadResponse['name']));
        expect(response.size, equals(uploadResponse['size']));
        expect(response.mimeType, equals(uploadResponse['mime_type']));
        expect(response.isImage, equals(uploadResponse['is_image']));
        expect(response.uploadedAt, equals(uploadResponse['uploaded_at']));
        expect(response.thumbnails.length, equals(2));
        expect(response.thumbnails['tiny']?.width, equals(21));
        expect(response.thumbnails['small']?.height, equals(48));
      });

      test('handles upload error', () async {
        final fileBytes = utf8.encode('test file content');
        final filename = 'test.txt';

        when(mockClient.send(any)).thenAnswer((_) async {
          final response = http.StreamedResponse(
            Stream.value(utf8.encode('{"error": "File too large"}')),
            413,
          );
          return response;
        });

        expect(
          () => client.uploadFile(fileBytes, filename),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            413,
          )),
        );
      });

      test('parses response with missing optional fields', () async {
        final fileBytes = utf8.encode('test file content');
        final filename = 'test.txt';
        final uploadResponse = {
          'url': 'https://files.baserow.io/user_files/test.txt',
          'thumbnails': {},
          'name': 'test.txt',
          'size': 16,
          'mime_type': 'text/plain',
          'is_image': false,
          'uploaded_at': '2024-01-01T12:00:00.000Z'
        };

        when(mockClient.send(any)).thenAnswer((_) async {
          final response = http.StreamedResponse(
            Stream.value(utf8.encode(json.encode(uploadResponse))),
            200,
          );
          return response;
        });

        final response = await client.uploadFile(fileBytes, filename);

        expect(response.url, equals(uploadResponse['url']));
        expect(response.thumbnails, isEmpty);
        expect(response.imageWidth, isNull);
        expect(response.imageHeight, isNull);
      });
    });

    group('uploadFileViaUrl', () {
      test('successfully uploads file via URL', () async {
        final uploadResponse = {
          'url': 'https://files.baserow.io/user_files/test.png',
          'thumbnails': {
            'tiny': {
              'url': 'https://files.baserow.io/thumbnails/tiny/test.png',
              'width': 21,
              'height': 21
            },
            'small': {
              'url': 'https://files.baserow.io/thumbnails/small/test.png',
              'width': 48,
              'height': 48
            }
          },
          'name': 'test.png',
          'size': 229940,
          'mime_type': 'image/png',
          'is_image': true,
          'image_width': 1280,
          'image_height': 585,
          'uploaded_at': '2024-01-01T12:00:00.000Z'
        };

        when(mockClient.post(
          Uri.parse('http://localhost/api/user-files/upload-via-url/'),
          headers: anyNamed('headers'),
          body: jsonEncode({'url': 'https://example.com/image.png'}),
        )).thenAnswer((_) async => http.Response(
              jsonEncode(uploadResponse),
              200,
            ));

        final response =
            await client.uploadFileViaUrl('https://example.com/image.png');

        expect(response.url, equals(uploadResponse['url']));
        expect(response.name, equals(uploadResponse['name']));
        expect(response.size, equals(uploadResponse['size']));
        expect(response.mimeType, equals(uploadResponse['mime_type']));
        expect(response.isImage, equals(uploadResponse['is_image']));
        expect(response.imageWidth, equals(uploadResponse['image_width']));
        expect(response.imageHeight, equals(uploadResponse['image_height']));
        expect(response.uploadedAt, equals(uploadResponse['uploaded_at']));
        expect(response.thumbnails.length, equals(2));
        expect(response.thumbnails['tiny']?.width, equals(21));
        expect(response.thumbnails['small']?.height, equals(48));
      });

      test('handles upload error', () async {
        when(mockClient.post(
          Uri.parse('http://localhost/api/user-files/upload-via-url/'),
          headers: anyNamed('headers'),
          body: jsonEncode({'url': 'https://example.com/invalid.png'}),
        )).thenAnswer((_) async => http.Response(
              '{"error": "Failed to download file"}',
              400,
            ));

        expect(
          () => client.uploadFileViaUrl('https://example.com/invalid.png'),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            400,
          )),
        );
      });
    });
  });
}
