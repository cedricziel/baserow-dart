import 'package:http/http.dart' as http;

import '../models.dart';
import '../interfaces/database_operations.dart';

/// Mixin that implements database operations for Baserow
mixin DatabaseOperationsMixin implements DatabaseOperations {
  /// The HTTP client used to make requests
  http.Client get httpClient;

  /// Function to make a GET request
  Future<dynamic> get(String path, [Map<String, String>? queryParams]);
  @override
  Future<List<Database>> listDatabases() async {
    final response = await get('applications/');
    final List<dynamic> data = response['applications'] as List<dynamic>;

    return data
        .where((app) => app['type'] == 'database')
        .map((db) => Database.fromJson(db as Map<String, dynamic>))
        .toList();
  }
}
