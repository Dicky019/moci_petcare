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
    final resultLogin = await authRepository.login(
        // email: email,
        // password: password,
        );

    await resultLogin.whenOrNull(success: (token) async {
      // _saveUserCredential(
      //   email: email,
      // );
      authRepository.saveUserToken(token);

      await _getAndSaveLogin();
    });

    return resultLogin;
  }

  Future logout() async => authRepository.logout();
  User? getCurrentUser() => authRepository.getCurrentUser();

//  TODO: For get user
  Future _getAndSaveLogin() async {
    final responseProfile = await authRepository.loginResponse();
    final resultProfile = AuthenticationMapper.mapToUser(responseProfile);
    resultProfile.when(
      success: (user) {
        authRepository.saveCurrentUser(user);
      },
      failure: (error, stackTrace) {
        log(error.toString());
        log(stackTrace.toString());
        authRepository.removeCurrentUser();
      },
    );
  }

  // void _saveUserCredential({
  //   required String email,
  //   // required String password,
  // }) {
  //   final currentEmail = authRepository.getCredentialEmail();
  //   // final currentPassword = authRepository.getCredentialPassword();
  //   if (currentEmail == null
  //       // && currentPassword == null
  //       ) {
  //     authRepository.saveUserCredential(
  //       email: email,
  //     );
  //   }
  // }
}

final authServiceProvider = Provider<AuthenticationService>((ref) {
  final authRepository = ref.read(authenticationRepositoryProvider);
  return AuthenticationService(authRepository);
});
