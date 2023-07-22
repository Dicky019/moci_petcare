import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moci_petcare/src/features/authentication/domain/user.dart';

class ProfileState {
  final AsyncValue<User?> value;

  const ProfileState({
    this.value = const AsyncData(null),
  });

  ProfileState copyWith({
    AsyncValue<User?>? value,
  }) {
    return ProfileState(
      value: value ?? this.value,
    );
  }

  bool get isLoading => value.isLoading;
}
