import '../interfaces/application_operations.dart';
import '../models.dart';
import '../client_interface.dart';
import '../exceptions.dart';

/// Implementation of application-related operations
mixin ApplicationOperationsMixin
    implements ApplicationOperations, BaserowClientInterface {
  @override
  Future<List<Application>> listAllApplications() async {
    final response = await get('applications/');
    if (response is! List) {
      throw BaserowException(
          'Response is not a list: ${response.runtimeType}', 0);
    }
    return response
        .map((json) => Application.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<Application> getApplication(int applicationId) async {
    try {
      final response = await get('applications/$applicationId/');

      if (response is! Map<String, dynamic>) {
        throw BaserowException('Invalid response format', 0);
      }

      if (response.containsKey('error')) {
        final error = response['error'] as String;
        final detail = response['detail'];

        switch (error) {
          case 'ERROR_USER_NOT_IN_GROUP':
            throw BaserowException('User not in workspace', 400);
          case 'ERROR_APPLICATION_DOES_NOT_EXIST':
            throw BaserowException('Application does not exist', 404);
          default:
            throw BaserowException(detail?.toString() ?? error, 400);
        }
      }

      return Application.fromJson(response);
    } catch (e) {
      if (e is BaserowException) {
        rethrow;
      }
      throw BaserowException('Failed to get application: $e', 500);
    }
  }

  @override
  Future<List<Application>> workspaceListApplications(int workspaceId) async {
    try {
      final response = await get('applications/workspace/$workspaceId/');

      if (response is! List) {
        throw BaserowException('Response is not a list', 0);
      }

      if (response.isNotEmpty &&
          response[0] is Map<String, dynamic> &&
          response[0].containsKey('error')) {
        final error = response[0]['error'] as String;
        final detail = response[0]['detail'];

        switch (error) {
          case 'ERROR_USER_NOT_IN_GROUP':
            throw BaserowException('User not in workspace', 400);
          case 'ERROR_GROUP_DOES_NOT_EXIST':
            throw BaserowException('Workspace does not exist', 404);
          default:
            throw BaserowException(detail?.toString() ?? error, 400);
        }
      }

      return response
          .map((json) => Application.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      if (e is BaserowException) {
        rethrow;
      }
      throw BaserowException('Failed to list workspace applications: $e', 500);
    }
  }
}
