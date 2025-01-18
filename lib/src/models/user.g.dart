// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      firstName: json['first_name'] as String,
      username: json['username'] as String,
      language: json['language'] as String,
      isStaff: json['isStaff'] as bool? ?? false,
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'username': instance.username,
      'language': instance.language,
      'isStaff': instance.isStaff,
      'isActive': instance.isActive,
    };
