import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: 'first_name')
  final String firstName;
  final String username;
  final String language;
  final bool isStaff;
  final bool isActive;

  User({
    required this.firstName,
    required this.username,
    required this.language,
    this.isStaff = false,
    this.isActive = true,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
