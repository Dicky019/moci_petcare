// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponse _$$_UserResponseFromJson(Map<String, dynamic> json) =>
    _$_UserResponse(
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerified: json['emailVerified'] as String?,
      image: json['image'] as String?,
      isActive: json['isActive'] as bool?,
      role: json['role'] as String?,
      noHP: json['noHP'] as String?,
      accessToken: json['accessToken'] as String?,
    );

Map<String, dynamic> _$$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'name': instance.name,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'image': instance.image,
      'isActive': instance.isActive,
      'role': instance.role,
      'noHP': instance.noHP,
      'accessToken': instance.accessToken,
    };
