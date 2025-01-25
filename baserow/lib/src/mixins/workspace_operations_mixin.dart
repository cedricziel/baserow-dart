import '../exceptions.dart';
import '../interfaces/workspace_operations.dart';
import '../models.dart';

/// Mixin that implements workspace related operations for Baserow
mixin WorkspaceOperationsMixin implements WorkspaceOperations {
  /// Function to perform a GET request
  Future<dynamic> get(String path, [Map<String, String>? queryParams]);

  @override
  Future<List<Workspace>> listWorkspaces() async {
    final response = await get('workspaces/');
    if (response is! List) {
      throw BaserowException(
          'Response is not a list: ${response.runtimeType}', 0);
    }

    return response
        .cast<Map<String, dynamic>>()
        .map(Workspace.fromJson)
        .toList();
  }
}
