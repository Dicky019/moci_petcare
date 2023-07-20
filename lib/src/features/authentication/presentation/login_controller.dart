import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/src/features/authentication/application/authentication_service.dart';
import '/src/features/authentication/presentation/login_state.dart';

class LoginControllerNotifier extends StateNotifier<LoginState> {
  LoginControllerNotifier(this._authenticationService)
      : super(const LoginState());

  final AuthenticationService _authenticationService;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String get email => emailController.text;

  String get password => passwordController.text;

  void fetchLogin() async {
    state = state.copyWith(value: const AsyncLoading());

    final result = await _authenticationService.login(
      email: email,
      password: password,
    );

    result.when(
      success: (data) {
        state = state.copyWith(
          value: const AsyncData(true),
        );
      },
      failure: (error, stackTrace) {
        state = state.copyWith(
          value: AsyncValue.error(error, stackTrace),
        );
      },
    );

    state = state.copyWith(
      value: const AsyncData(null),
    );
  }

  void logout() => _authenticationService.logout();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}

final loginControllerProvider =
    StateNotifierProvider.autoDispose<LoginControllerNotifier, LoginState>(
        (ref) {
  return LoginControllerNotifier(
    ref.read(authServiceProvider),
  );
});
