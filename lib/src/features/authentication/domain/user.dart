import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  factory User({
    required String id,
    // required String createdAt,
    // required String updatedAt,
    required String name,
    required String email,
    required String image,
    required String noHP,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
