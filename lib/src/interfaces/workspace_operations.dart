import '../models.dart';

/// Interface for workspace related operations in Baserow
abstract class WorkspaceOperations {
  /// Lists all workspaces of the authorized user
  Future<List<Workspace>> listWorkspaces();
}
