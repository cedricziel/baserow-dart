import 'package:baserow/baserow.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'baserow_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('BaserowClient', () {
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

    test('creates headers with token auth', () {
      final client = BaserowClient(
        config: const BaserowConfig(
          baseUrl: 'http://localhost',
          token: 'test-token',
          authType: BaserowAuthType.token,
        ),
        httpClient: mockClient,
      );

      final headers = client.createHeaders();
      expect(headers['Authorization'], equals('Token test-token'));
    });

    test('creates headers with JWT auth', () {
      final client = BaserowClient(
        config: const BaserowConfig(
          baseUrl: 'http://localhost',
          token: 'test-token',
          authType: BaserowAuthType.jwt,
        ),
        httpClient: mockClient,
      );

      final headers = client.createHeaders();
      expect(headers['Authorization'], equals('JWT test-token'));
    });

    test('creates headers without auth when no token', () {
      final client = BaserowClient(
        config: const BaserowConfig(
          baseUrl: 'http://localhost',
        ),
        httpClient: mockClient,
      );

      final headers = client.createHeaders();
      expect(headers.containsKey('Authorization'), isFalse);
    });

    test('closes http client and cancels refresh timer', () {
      final client = BaserowClient(
        config: BaserowConfig(
          baseUrl: 'http://localhost',
          token: 'test-token',
          refreshToken: 'refresh-token',
          authType: BaserowAuthType.jwt,
          refreshInterval: const Duration(minutes: 1),
        ),
        httpClient: mockClient,
      );

      client.close();
      verify(mockClient.close()).called(1);
    });
  });
}
