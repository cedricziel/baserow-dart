import 'package:json_annotation/json_annotation.dart';

part 'workspace.g.dart';

@JsonSerializable()
class WorkspaceUser {
  final int id;
  final String name;
  final String email;
  final int workspace;
  final String? permissions;
  @JsonKey(name: 'created_on')
  final DateTime createdOn;
  @JsonKey(name: 'user_id')
  final int userId;
  @JsonKey(name: 'to_be_deleted')
  final bool toBeDeleted;

  WorkspaceUser({
    required this.id,
    required this.name,
    required this.email,
    required this.workspace,
    this.permissions,
    required this.createdOn,
    required this.userId,
    required this.toBeDeleted,
  });

  factory WorkspaceUser.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceUserFromJson(json);

  Map<String, dynamic> toJson() => _$WorkspaceUserToJson(this);
}

@JsonSerializable()
class Workspace {
  final int id;
  final String name;
  final List<WorkspaceUser>? users;
  final int? order;
  final String? permissions;
  @JsonKey(name: 'unread_notifications_count')
  final int? unreadNotificationsCount;
  @JsonKey(name: 'generative_ai_models_enabled')
  final Map<String, dynamic> generativeAiModelsEnabled;

  Workspace({
    required this.id,
    required this.name,
    this.users,
    this.order,
    this.permissions,
    this.unreadNotificationsCount,
    required this.generativeAiModelsEnabled,
  });

  /// Creates a Workspace instance with required users field for workspace endpoints
  factory Workspace.withUsers({
    required int id,
    required String name,
    required List<WorkspaceUser> users,
    required int order,
    required String permissions,
    required int unreadNotificationsCount,
    required Map<String, dynamic> generativeAiModelsEnabled,
  }) {
    return Workspace(
      id: id,
      name: name,
      users: users,
      order: order,
      permissions: permissions,
      unreadNotificationsCount: unreadNotificationsCount,
      generativeAiModelsEnabled: generativeAiModelsEnabled,
    );
  }

  factory Workspace.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceFromJson(json);

  Map<String, dynamic> toJson() => _$WorkspaceToJson(this);
}
