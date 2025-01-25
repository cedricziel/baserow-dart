import 'package:json_annotation/json_annotation.dart';

part 'files.g.dart';

/// Response from a file upload
@JsonSerializable()
class FileUploadResponse {
  final String url;
  final Map<String, ThumbnailInfo> thumbnails;
  final String name;
  final int size;
  @JsonKey(name: 'mime_type')
  final String mimeType;
  @JsonKey(name: 'is_image')
  final bool isImage;
  @JsonKey(name: 'image_width')
  final int? imageWidth;
  @JsonKey(name: 'image_height')
  final int? imageHeight;
  @JsonKey(name: 'uploaded_at')
  final String uploadedAt;

  FileUploadResponse({
    required this.url,
    required this.thumbnails,
    required this.name,
    required this.size,
    required this.mimeType,
    required this.isImage,
    this.imageWidth,
    this.imageHeight,
    required this.uploadedAt,
  });

  factory FileUploadResponse.fromJson(Map<String, dynamic> json) =>
      _$FileUploadResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FileUploadResponseToJson(this);
}

/// Information about a thumbnail
class ThumbnailInfo {
  final String url;
  final int? width;
  final int? height;

  ThumbnailInfo({
    required this.url,
    this.width,
    this.height,
  });

  factory ThumbnailInfo.fromJson(Map<String, dynamic> json) {
    final url = json['url'];
    if (url == null || url is! String) {
      throw FormatException('Missing or invalid field: url');
    }

    final width = json['width'];
    final height = json['height'];

    return ThumbnailInfo(
      url: url,
      width: width == null ? null : (width as num).toInt(),
      height: height == null ? null : (height as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() => {
        'url': url,
        if (width != null) 'width': width,
        if (height != null) 'height': height,
      };
}
