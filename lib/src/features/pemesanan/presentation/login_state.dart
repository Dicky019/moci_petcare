import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginState {
  final AsyncValue<bool?> value;

  const LoginState({
    this.value = const AsyncData(null),
  });

  LoginState copyWith({
    AsyncValue<bool?>? value,
  }) {
    return LoginState(
      value: value ?? this.value,
    );
  }

  bool get isLoading => value.isLoading;
}
