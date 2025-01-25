import 'dart:convert';

import 'package:baserow/baserow.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

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
      test('initializes with refresh token expiry', () {
        final refreshExpiry = DateTime.now().add(const Duration(hours: 100));
        final client = BaserowClient(
          config: BaserowConfig(
            baseUrl: 'http://localhost',
            token: 'test-token',
            refreshToken: 'refresh-token',
            refreshTokenExpiresAt: refreshExpiry,
            authType: BaserowAuthType.jwt,
          ),
          httpClient: MockClient(),
        );

        expect(client.refreshTokenExpiresAt, equals(refreshExpiry));
        client.close();
      });

      test('throws TokenRefreshException on expired token', () async {
        final mockClient = MockClient();
        final client = BaserowClient(
          config: BaserowConfig(
            baseUrl: 'http://localhost',
            token: 'expired-token',
            refreshToken: 'refresh-token',
            authType: BaserowAuthType.jwt,
          ),
          httpClient: mockClient,
        );

        final uri = Uri.parse('http://localhost/api/some-endpoint');
        when(mockClient.get(
          uri,
          headers: anyNamed('headers'),
        )).thenAnswer((_) async => http.Response('Unauthorized', 401));

        expect(
          () => client.get('some-endpoint'),
          throwsA(
            isA<TokenRefreshException>()
                .having(
                    (e) => e.message, 'message', 'Token expired, needs refresh')
                .having((e) => e.refreshToken, 'refreshToken', 'refresh-token'),
          ),
        );

        client.close();
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
      test('performs login successfully with JWT auth and sets token expiry',
          () async {
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
        expect(response.user.firstName, equals('Test'));
        expect(response.user.username, equals('test@example.com'));
        expect(response.user.language, equals('en'));
        expect(client.config.token, equals('new-token'));
        expect(client.config.refreshToken, equals('new-refresh-token'));
        // Check access token expiry
        // Check access token expiry
        expect(client.tokenExpiresAt, isNotNull);
        final expectedTokenExpiry =
            DateTime.now().add(const Duration(minutes: 10));
        expect(
          client.tokenExpiresAt!
              .difference(expectedTokenExpiry)
              .inSeconds
              .abs(),
          lessThan(2), // Allow 2 seconds tolerance for test execution time
        );

        // Check refresh token expiry is set to 7 days
        expect(client.refreshTokenExpiresAt, isNotNull);
        final expectedRefreshExpiry =
            DateTime.now().add(const Duration(hours: 168));
        expect(
          client.refreshTokenExpiresAt!
              .difference(expectedRefreshExpiry)
              .inSeconds
              .abs(),
          lessThan(2), // Allow 2 seconds tolerance for test execution time
        );

        // Verify refresh token expiry is stored in config
        expect(client.config.refreshTokenExpiresAt,
            equals(client.refreshTokenExpiresAt));

        client.close();
      });

      test('emits user to stream on login', () async {
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

        final streamTest = expectLater(
          client.userStream,
          emits(
            isA<User>()
                .having((u) => u.firstName, 'firstName', 'Test')
                .having((u) => u.username, 'username', 'test@example.com')
                .having((u) => u.language, 'language', 'en'),
          ),
        );

        await client.login('test@example.com', 'password');
        await streamTest;
        client.close();
      });

      test('emits null to stream on logout', () async {
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
        )).thenAnswer((_) async => http.Response('', 204));

        final streamTest = expectLater(client.userStream, emits(null));
        await client.logout();
        await streamTest;
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

    test('token expiry remains null with non-JWT auth', () async {
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
          'password': 'password',
        }),
      )).thenAnswer((_) async => http.Response(
            jsonEncode(loginResponse),
            200,
          ));

      final client = BaserowClient(
        config: const BaserowConfig(
          baseUrl: 'http://localhost',
          authType: BaserowAuthType.token, // Using token auth instead of JWT
        ),
        httpClient: mockClient,
      );

      await client.login('test@example.com', 'password');
      expect(client.tokenExpiresAt, isNull);
      expect(client.refreshTokenExpiresAt, isNull);
      expect(client.config.refreshTokenExpiresAt, isNull);

      client.close();
    });

    test('token expiry is updated on token refresh', () async {
      final mockClient = MockClient();
      final client = BaserowClient(
        config: BaserowConfig(
          baseUrl: 'http://localhost',
          token: 'old-token',
          refreshToken: 'old-refresh-token',
          authType: BaserowAuthType.jwt,
        ),
        httpClient: mockClient,
      );

      final refreshUri = Uri.parse('http://localhost/api/user/token-refresh/');
      when(mockClient.post(
        refreshUri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'refresh_token': 'old-refresh-token'}),
      )).thenAnswer((_) async => http.Response(
            jsonEncode({'access_token': 'new-token'}),
            200,
          ));

      await client.refreshToken('old-refresh-token');

      expect(client.tokenExpiresAt, isNotNull);
      final expectedExpiry = DateTime.now().add(const Duration(minutes: 10));
      expect(
        client.tokenExpiresAt!.difference(expectedExpiry).inSeconds.abs(),
        lessThan(2), // Allow 2 seconds tolerance for test execution time
      );

      client.close();
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
        expect(client.tokenExpiresAt, isNull);
        expect(client.refreshTokenExpiresAt, isNull);
        expect(client.config.refreshTokenExpiresAt, isNull);
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
