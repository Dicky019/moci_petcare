import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/user.dart';
import '/src/features/authentication/data/response/user_response.dart';
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

  Future<Result<String>> login() async {
    final result = await _authApi.login();

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
  }) {
    _hiveService.saveUserCredential(email: email);
  }

  String? get currentUser => _hiveService.getUserToken();

}

final authenticationRepositoryProvider =
    Provider<AuthenticationRepository>((ref) {
  final authApi = ref.read(authApiProvider);
  final hiveService = ref.read(hiveServiceProvider);

  return AuthenticationRepository(authApi, hiveService);
});
