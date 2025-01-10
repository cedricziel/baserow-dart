import 'package:json_annotation/json_annotation.dart';

import 'workspace.dart';
import 'database_application.dart';
import 'builder_application.dart';
import 'files.dart';

part 'applications.g.dart';

/// Represents an application in Baserow
@JsonSerializable()
class Application {
  final int id;
  final String name;
  final int order;
  final String type;
  final Workspace workspace;
  @JsonKey(name: 'created_on')
  final DateTime createdOn;
  @JsonKey(defaultValue: <Table>[])
  final List<Table> tables;
  final List<Page>? pages;
  final Theme? theme;
  @JsonKey(name: 'favicon_file')
  final File? faviconFile;
  @JsonKey(name: 'login_page_id')
  final int? loginPageId;

  Application({
    required this.id,
    required this.name,
    required this.order,
    required this.type,
    required this.workspace,
    required this.createdOn,
    this.tables = const [],
    this.pages,
    this.theme,
    this.faviconFile,
    this.loginPageId,
  });

  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationToJson(this);
}
