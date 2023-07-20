import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/src/features/authentication/data/response/user_response.dart';
import '/src/services/remote/config/config.dart';

class AuthApi {
  final DioClient _dioClient;

  AuthApi(this._dioClient);

  Future<Result<String>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dioClient.post(
        Endpoint.login,
        data: {
          'identifier': email,
          'password': password,
        },
      );
      log(response.toString());
      return Result.success(response['jwt']);
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  Future<Result<void>> logout() async {
    return const Result.success(null);
  }

  Future<Result<UserResponse>> loginResponse() async {
    try {
      final response = await _dioClient.get(Endpoint.login);
      return Result.success(UserResponse.fromJson(response['user']));
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }
}

final authApiProvider = Provider<AuthApi>((ref) {
  return AuthApi(ref.read(dioClientProvider));
});
