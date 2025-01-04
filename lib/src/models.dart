import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

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

/// Represents a Baserow database
@JsonSerializable()
class Database {
  final int id;
  final String name;
  final String type;

  Database({
    required this.id,
    required this.name,
    required this.type,
  });

  factory Database.fromJson(Map<String, dynamic> json) =>
      _$DatabaseFromJson(json);

  Map<String, dynamic> toJson() => _$DatabaseToJson(this);
}

/// Represents a table within a Baserow database
class Table {
  final int id;
  final String name;
  final int order;
  final List<Field>? fields;

  Table({
    required this.id,
    required this.name,
    required this.order,
    this.fields,
  });

  factory Table.fromJson(Map<String, dynamic> json) => Table(
        id: (json['id'] as num).toInt(),
        name: json['name'] as String,
        order: (json['order'] as num).toInt(),
        fields: null, // Fields are fetched separately
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'order': order,
        if (fields != null) 'fields': fields!.map((f) => f.toJson()).toList(),
      };
}

/// Represents a field within a Baserow table
@JsonSerializable()
class Field {
  final int id;
  final String name;
  final String type;
  final int order;
  final bool primary;

  Field({
    required this.id,
    required this.name,
    required this.type,
    required this.order,
    required this.primary,
  });

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);
}
