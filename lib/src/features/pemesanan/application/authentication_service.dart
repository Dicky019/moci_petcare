import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/src/features/authentication/data/authentication_repository.dart';
import '/src/services/remote/config/config.dart';
import 'auth_mapper.dart';
import '../domain/user.dart';

class AuthenticationService {
  final AuthenticationRepository authRepository;

  AuthenticationService(this.authRepository);

  Future<Result<void>> login(
      // {required String email,
      // required String password,}
      ) async {
    final resultLogin = await authRepository.login();

    await resultLogin.whenOrNull(success: (token) async {
      authRepository.saveUserToken(token);
    });

    return resultLogin;
  }
}

final authServiceProvider = Provider<AuthenticationService>((ref) {
  final authRepository = ref.read(authenticationRepositoryProvider);
  return AuthenticationService(authRepository);
});
