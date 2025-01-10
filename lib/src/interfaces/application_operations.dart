import '../models.dart';

/// Interface for application-related operations in Baserow
abstract class ApplicationOperations {
  /// Lists all applications that the authorized user has access to.
  ///
  /// Applications always belong to a single workspace. All applications from
  /// workspaces that the user has access to will be listed.
  ///
  /// Returns a list of applications with their properties. The properties can
  /// differ per application type.
  Future<List<Application>> listAllApplications();

  /// Returns the requested application if the authorized user is in the application's workspace.
  ///
  /// The properties that belong to the application can differ per type.
  ///
  /// Throws [BaserowException] if:
  /// - The user is not in the workspace (400 ERROR_USER_NOT_IN_GROUP)
  /// - The application does not exist (404 ERROR_APPLICATION_DOES_NOT_EXIST)
  Future<Application> getApplication(int applicationId);
}
