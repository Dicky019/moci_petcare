import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/src/features/authentication/data/response/user_response.dart';
import '/src/features/authentication/domain/user.dart';
import '/src/services/local/hive_service.dart';
import '/src/services/remote/api/auth_api.dart';
import '/src/services/remote/config/config.dart';

class AuthenticationRepository {
  final AuthApi _authApi;
  final HiveService _hiveService;

  AuthenticationRepository(
    this._authApi,
    this._hiveService,
  );

  Future<Result<String>> login({
    required String email,
    required String password,
  }) async {
    final result = await _authApi.login(
      email: email,
      password: password,
    );

    return result;
  }

  Future<Result<void>> logout() async {
    final result = await _authApi.logout();
    _hiveService.deleteCurrentUser();
    _hiveService.deleteUserToken();
    return result;
  }

  Future<Result<UserResponse>> loginResponse() async {
    return await _authApi.loginResponse();
  }

  void saveUserCredential({
    required String email,
    required String password,
  }) =>
      _hiveService.saveUserCredential(email: email, password: password);

  String? get currentUser => _hiveService.getUserToken();

  String? getCredentialEmail() => _hiveService.getCredentialEmail();

  String? getCredentialPassword() => _hiveService.getCredentialPassword();

  User? getCurrentUser() => _hiveService.getCurrentUser();

  void saveUserToken(String token) => _hiveService.saveUserToken(token);

  void saveCurrentUser(User user) => _hiveService.saveCurrentUser(user);
}

final authenticationRepositoryProvider =
    Provider<AuthenticationRepository>((ref) {
  final authApi = ref.read(authApiProvider);
  final hiveService = ref.read(hiveServiceProvider);

  return AuthenticationRepository(authApi, hiveService);
});
