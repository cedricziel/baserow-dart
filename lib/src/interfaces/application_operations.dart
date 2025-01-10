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
}
