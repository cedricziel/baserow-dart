import 'package:json_annotation/json_annotation.dart';

part 'database_token.g.dart';

/// Request body for creating a database token
@JsonSerializable()
class CreateDatabaseTokenRequest {
  final String name;
  final int workspace;

  CreateDatabaseTokenRequest({
    required this.name,
    required this.workspace,
  });

  factory CreateDatabaseTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateDatabaseTokenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateDatabaseTokenRequestToJson(this);
}

/// Represents permissions for a database token
@JsonSerializable()
class DatabaseTokenPermissions {
  final dynamic create;
  final dynamic read;
  final dynamic update;
  final dynamic delete;

  DatabaseTokenPermissions({
    required this.create,
    required this.read,
    required this.update,
    required this.delete,
  });

  factory DatabaseTokenPermissions.fromJson(Map<String, dynamic> json) =>
      _$DatabaseTokenPermissionsFromJson(json);

  Map<String, dynamic> toJson() => _$DatabaseTokenPermissionsToJson(this);
}

/// Represents a database token that can be used to access tables
@JsonSerializable()
class DatabaseToken {
  final int id;
  final String name;
  final int workspace;
  final String key;
  final DatabaseTokenPermissions permissions;

  DatabaseToken({
    required this.id,
    required this.name,
    required this.workspace,
    required this.key,
    required this.permissions,
  });

  factory DatabaseToken.fromJson(Map<String, dynamic> json) =>
      _$DatabaseTokenFromJson(json);

  Map<String, dynamic> toJson() => _$DatabaseTokenToJson(this);
}
