import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/src/features/authentication/data/authentication_repository.dart';
import '/src/services/remote/config/config.dart';

class AuthenticationService {
  final AuthenticationRepository authRepository;

  AuthenticationService(this.authRepository);

  Future<Result<void>> login({
    required String email,
    required String password,
  }) async {
    final resultLogin = await authRepository.login(
      email: email,
      password: password,
    );

    resultLogin.whenOrNull(success: (token) async {
      // _saveUserCredential(email: email, password: password);
      authRepository.saveUserToken(token);

      // await _getAndSaveLogin();
    });

    return resultLogin;
  }

  Future logout() async => authRepository.logout();

//  TODO: For get user
  // Future _getAndSaveLogin() async {
  //   final responseProfile = await authRepository.loginResponse();
  //   final resultProfile = AuthenticationMapper.mapToUser(responseProfile);
  //   resultProfile.whenOrNull(
  //     success: (user) {
  //       authRepository.saveCurrentUser(user);
  //     },
  //   );
  // }

  // void _saveUserCredential({
  //   required String email,
  //   required String password,
  // }) {
  //   final currentEmail = authRepository.getCredentialEmail();
  //   final currentPassword = authRepository.getCredentialPassword();
  //   if (currentEmail == null && currentPassword == null) {
  //     authRepository.saveUserCredential(email: email, password: password);
  //   }
  // }
}

final authServiceProvider = Provider<AuthenticationService>((ref) {
  final authRepository = ref.read(authenticationRepositoryProvider);
  return AuthenticationService(authRepository);
});
