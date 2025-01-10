import '../files.dart';
import '../interfaces/file_operations.dart';

/// Mixin that implements file related operations for Baserow
mixin FileOperationsMixin implements FileOperations {
  /// Function to perform a POST request
  Future<dynamic> post(String path, Map<String, dynamic> data,
      [Map<String, String>? queryParams]);

  /// Function to perform a multipart file upload request
  Future<Map<String, dynamic>> uploadMultipart(
    String path,
    List<int> fileBytes,
    String filename, [
    Map<String, String>? queryParams,
  ]);

  @override
  Future<FileUploadResponse> uploadFile(
      List<int> fileBytes, String filename) async {
    final response = await uploadMultipart(
      'user-files/upload-file/',
      fileBytes,
      filename,
    );
    return FileUploadResponse.fromJson(response);
  }

  @override
  Future<FileUploadResponse> uploadFileViaUrl(String url) async {
    final response = await post(
      'user-files/upload-via-url/',
      {'url': url},
    );
    return FileUploadResponse.fromJson(response);
  }
}
