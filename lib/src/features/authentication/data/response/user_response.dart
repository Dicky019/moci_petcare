// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {

  const factory UserResponse({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "createdAt") String? createdAt,
    @JsonKey(name: "updatedAt") String? updatedAt,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "emailVerified") String? emailVerified,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "isActive") bool? isActive,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "noHP") String? noHP,
    @JsonKey(name: "accessToken") String? accessToken,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
