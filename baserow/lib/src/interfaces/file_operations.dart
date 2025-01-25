import '../files.dart';

/// Interface for file-related operations in Baserow
abstract class FileOperations {
  /// Uploads a file to Baserow
  ///
  /// [fileBytes] is the raw bytes of the file to upload
  /// [filename] is the name of the file including extension
  Future<FileUploadResponse> uploadFile(List<int> fileBytes, String filename);

  /// Uploads a file to Baserow by downloading it from a URL
  ///
  /// [url] is the URL of the file to download and upload
  Future<FileUploadResponse> uploadFileViaUrl(String url);
}
