import 'dart:convert';

import 'package:baserow/baserow.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:fake_async/fake_async.dart';

import 'baserow_test.mocks.dart';

void main() {
  group('Authentication', () {
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

    group('JWT Authentication', () {
      test('automatically refreshes token on interval', () {
        return fakeAsync((async) {
          final mockClient = MockClient();
          var tokenRefreshCount = 0;
          final refreshToken = 'refresh-token';

          final refreshUri =
              Uri.parse('http://localhost/api/user/token-refresh/');

          when(mockClient.post(
            refreshUri,
            headers: anyNamed('headers'),
            body: jsonEncode({'refresh_token': refreshToken}),
          )).thenAnswer((_) async {
            tokenRefreshCount++;
            return http.Response(
              jsonEncode({
                'access_token': 'new-access-token-$tokenRefreshCount',
                'token': 'old-token-$tokenRefreshCount', // Deprecated field
              }),
              200,
            );
          });

          // Verify it rejects wrong request body
          when(mockClient.post(
            refreshUri,
            headers: anyNamed('headers'),
            body: jsonEncode({'token': refreshToken}), // Wrong field name
          )).thenAnswer((_) async => http.Response(
              jsonEncode({
                'error': 'Invalid request body',
                'detail': 'Missing refresh_token field',
              }),
              400));

          final client = BaserowClient(
            config: BaserowConfig(
              baseUrl: 'http://localhost',
              token: 'initial-token',
              refreshToken: refreshToken,
              authType: BaserowAuthType.jwt,
              refreshInterval: const Duration(minutes: 1),
              onTokenRefresh: (token, _) {
                expect(token, equals('new-access-token-$tokenRefreshCount'));
              },
            ),
            httpClient: mockClient,
          );

          async.elapse(const Duration(minutes: 3));

          verify(mockClient.post(
            refreshUri,
            headers: anyNamed('headers'),
            body: jsonEncode({'refresh_token': refreshToken}),
          )).called(3);
          expect(client.config.token, equals('new-access-token-3'));

          client.close();
        });
      });

      test('handles refresh token failure gracefully', () {
        return fakeAsync((async) {
          final mockClient = MockClient();
          var refreshAttempts = 0;

          final refreshUri =
              Uri.parse('http://localhost/api/user/token-refresh/');

          when(mockClient.post(
            refreshUri,
            headers: anyNamed('headers'),
            body: anyNamed('body'),
          )).thenAnswer((_) async {
            refreshAttempts++;
            return http.Response(
              jsonEncode({
                'error': 'Unauthorized',
                'detail': 'Invalid refresh token',
              }),
              401,
            );
          });

          final client = BaserowClient(
            config: BaserowConfig(
              baseUrl: 'http://localhost',
              token: 'initial-token',
              refreshToken: 'refresh-token',
              authType: BaserowAuthType.jwt,
              refreshInterval: const Duration(minutes: 1),
            ),
            httpClient: mockClient,
          );

          async.elapse(const Duration(minutes: 1));
          expect(refreshAttempts, equals(1));
          expect(client.config.token, equals('initial-token'));

          client.close();
        });
      });

      test('verifyToken handles both token formats', () async {
        final mockClient = MockClient();
        final verifyUri = Uri.parse('http://localhost/api/user/token-verify/');
        final headers = {'Content-Type': 'application/json'};

        // Set up mock responses for different token formats
        when(mockClient.post(
          verifyUri,
          headers: headers,
          body: jsonEncode({'access_token': 'valid-token'}),
        )).thenAnswer((_) async => http.Response('', 200));

        when(mockClient.post(
          verifyUri,
          headers: headers,
          body: jsonEncode({'access_token': 'legacy-token'}),
        )).thenAnswer((_) async => http.Response('Invalid token', 401));

        when(mockClient.post(
          verifyUri,
          headers: headers,
          body: jsonEncode({'token': 'legacy-token'}),
        )).thenAnswer((_) async => http.Response('', 200));

        when(mockClient.post(
          verifyUri,
          headers: headers,
          body: jsonEncode({'access_token': 'invalid-token'}),
        )).thenAnswer((_) async => http.Response('Invalid token', 401));

        when(mockClient.post(
          verifyUri,
          headers: headers,
          body: jsonEncode({'token': 'invalid-token'}),
        )).thenAnswer((_) async => http.Response('Invalid token', 401));

        final client = BaserowClient(
          config: const BaserowConfig(
            baseUrl: 'http://localhost',
            authType: BaserowAuthType.jwt,
          ),
          httpClient: mockClient,
        );

        // Test access_token success
        expect(await client.verifyToken('valid-token'), isTrue);

        // Test token fallback
        expect(await client.verifyToken('legacy-token'), isTrue);

        // Test complete failure
        expect(await client.verifyToken('invalid-token'), isFalse);

        client.close();
      });
    });

    group('login', () {
      test('sets up refresh timer after successful login', () async {
        final mockClient = MockClient();
        final loginResponse = {
          'token': 'old-token',
          'access_token': 'new-token',
          'refresh_token': 'new-refresh-token',
          'user': {
            'first_name': 'Test',
            'username': 'test@example.com',
            'language': 'en',
          },
        };

        final loginUri = Uri.parse('http://localhost/api/user/token-auth/');

        when(mockClient.post(
          loginUri,
          headers: anyNamed('headers'),
          body: jsonEncode({
            'email': 'test@example.com',
            'username': 'test@example.com',
            'password': 'password',
          }),
        )).thenAnswer((_) async => http.Response(
              jsonEncode(loginResponse),
              200,
            ));

        // Test with deprecated username
        when(mockClient.post(
          loginUri,
          headers: anyNamed('headers'),
          body: jsonEncode({
            'email': 'test@example.com',
            'username': 'oldusername',
            'password': 'password',
          }),
        )).thenAnswer((_) async => http.Response(
              jsonEncode(loginResponse),
              200,
            ));

        final client = BaserowClient(
          config: BaserowConfig(
            baseUrl: 'http://localhost',
            authType: BaserowAuthType.jwt,
          ),
          httpClient: mockClient,
        );

        final response = await client.login('test@example.com', 'password');

        expect(response.accessToken, equals('new-token'));
        expect(response.refreshToken, equals('new-refresh-token'));
        expect(response.user['first_name'], equals('Test'));
        expect(response.user['username'], equals('test@example.com'));
        expect(response.user['language'], equals('en'));
        expect(client.config.token, equals('new-token'));
        expect(client.config.refreshToken, equals('new-refresh-token'));

        client.close();
      });

      test('handles invalid credentials error', () async {
        final mockClient = MockClient();
        final loginUri = Uri.parse('http://localhost/api/user/token-auth/');

        when(mockClient.post(
          loginUri,
          headers: anyNamed('headers'),
          body: jsonEncode({
            'email': 'test@example.com',
            'username': 'test@example.com',
            'password': 'wrong-password',
          }),
        )).thenAnswer((_) async => http.Response(
              jsonEncode({
                'error': 'ERROR_INVALID_CREDENTIALS',
                'detail': 'Invalid credentials'
              }),
              401,
            ));

        final client = BaserowClient(
          config: BaserowConfig(
            baseUrl: 'http://localhost',
            authType: BaserowAuthType.jwt,
          ),
          httpClient: mockClient,
        );

        expect(
          () => client.login('test@example.com', 'wrong-password'),
          throwsA(
            isA<BaserowException>()
                .having(
                    (e) => e.message, 'message', 'ERROR_INVALID_CREDENTIALS')
                .having((e) => e.statusCode, 'statusCode', 401),
          ),
        );

        client.close();
      });

      test('handles deactivated user error', () async {
        final mockClient = MockClient();
        final loginUri = Uri.parse('http://localhost/api/user/token-auth/');

        when(mockClient.post(
          loginUri,
          headers: anyNamed('headers'),
          body: jsonEncode({
            'email': 'test@example.com',
            'username': 'test@example.com',
            'password': 'password',
          }),
        )).thenAnswer((_) async => http.Response(
              jsonEncode({
                'error': 'ERROR_DEACTIVATED_USER',
                'detail': 'User is deactivated'
              }),
              401,
            ));

        final client = BaserowClient(
          config: BaserowConfig(
            baseUrl: 'http://localhost',
            authType: BaserowAuthType.jwt,
          ),
          httpClient: mockClient,
        );

        expect(
          () => client.login('test@example.com', 'password'),
          throwsA(
            isA<BaserowException>()
                .having((e) => e.message, 'message', 'ERROR_DEACTIVATED_USER')
                .having((e) => e.statusCode, 'statusCode', 401),
          ),
        );

        client.close();
      });

      test('handles auth provider disabled error', () async {
        final mockClient = MockClient();
        final loginUri = Uri.parse('http://localhost/api/user/token-auth/');

        when(mockClient.post(
          loginUri,
          headers: anyNamed('headers'),
          body: jsonEncode({
            'email': 'test@example.com',
            'username': 'test@example.com',
            'password': 'password',
          }),
        )).thenAnswer((_) async => http.Response(
              jsonEncode({
                'error': 'ERROR_AUTH_PROVIDER_DISABLED',
                'detail': 'Authentication provider is disabled'
              }),
              401,
            ));

        final client = BaserowClient(
          config: BaserowConfig(
            baseUrl: 'http://localhost',
            authType: BaserowAuthType.jwt,
          ),
          httpClient: mockClient,
        );

        expect(
          () => client.login('test@example.com', 'password'),
          throwsA(
            isA<BaserowException>()
                .having(
                    (e) => e.message, 'message', 'ERROR_AUTH_PROVIDER_DISABLED')
                .having((e) => e.statusCode, 'statusCode', 401),
          ),
        );

        client.close();
      });

      test('handles email verification required error', () async {
        final mockClient = MockClient();
        final loginUri = Uri.parse('http://localhost/api/user/token-auth/');

        when(mockClient.post(
          loginUri,
          headers: anyNamed('headers'),
          body: jsonEncode({
            'email': 'test@example.com',
            'username': 'test@example.com',
            'password': 'password',
          }),
        )).thenAnswer((_) async => http.Response(
              jsonEncode({
                'error': 'ERROR_EMAIL_VERIFICATION_REQUIRED',
                'detail': 'Email verification required'
              }),
              401,
            ));

        final client = BaserowClient(
          config: BaserowConfig(
            baseUrl: 'http://localhost',
            authType: BaserowAuthType.jwt,
          ),
          httpClient: mockClient,
        );

        expect(
          () => client.login('test@example.com', 'password'),
          throwsA(
            isA<BaserowException>()
                .having((e) => e.message, 'message',
                    'ERROR_EMAIL_VERIFICATION_REQUIRED')
                .having((e) => e.statusCode, 'statusCode', 401),
          ),
        );

        client.close();
      });
    });

    group('logout', () {
      test('successfully logs out with JWT auth', () async {
        final mockClient = MockClient();
        final refreshToken = 'refresh-token';
        final client = BaserowClient(
          config: BaserowConfig(
            baseUrl: 'http://localhost',
            token: 'test-token',
            refreshToken: refreshToken,
            authType: BaserowAuthType.jwt,
            refreshInterval: const Duration(minutes: 1),
          ),
          httpClient: mockClient,
        );

        final blacklistUri =
            Uri.parse('http://localhost/api/user/token-blacklist/');
        when(mockClient.post(
          blacklistUri,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({'refresh': refreshToken}),
        )).thenAnswer((_) async => http.Response('', 204));

        await client.logout();

        verify(mockClient.post(
          blacklistUri,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({'refresh': refreshToken}),
        )).called(1);

        expect(client.config.token, isNull);
        expect(client.config.refreshToken, isNull);
      });

      test('throws error when not using JWT auth', () async {
        final client = BaserowClient(
          config: const BaserowConfig(
            baseUrl: 'http://localhost',
            token: 'test-token',
            authType: BaserowAuthType.token,
          ),
          httpClient: MockClient(),
        );

        expect(
          () => client.logout(),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            400,
          )),
        );
      });

      test('throws error when refresh token is missing', () async {
        final client = BaserowClient(
          config: const BaserowConfig(
            baseUrl: 'http://localhost',
            token: 'test-token',
            authType: BaserowAuthType.jwt,
          ),
          httpClient: MockClient(),
        );

        expect(
          () => client.logout(),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            400,
          )),
        );
      });

      test('handles blacklist request failure', () async {
        final mockClient = MockClient();
        final refreshToken = 'refresh-token';

        final client = BaserowClient(
          config: BaserowConfig(
            baseUrl: 'http://localhost',
            token: 'test-token',
            refreshToken: refreshToken,
            authType: BaserowAuthType.jwt,
          ),
          httpClient: mockClient,
        );

        final blacklistUri =
            Uri.parse('http://localhost/api/user/token-blacklist/');
        when(mockClient.post(
          blacklistUri,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({'refresh': refreshToken}),
        )).thenAnswer((_) async => http.Response('Invalid token', 401));

        expect(
          () => client.logout(),
          throwsA(isA<BaserowException>().having(
            (e) => e.statusCode,
            'statusCode',
            401,
          )),
        );

        // Tokens should not be cleared on failed logout
        expect(client.config.token, isNotNull);
        expect(client.config.refreshToken, isNotNull);
      });
    });
  });
}
