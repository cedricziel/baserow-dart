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
}
