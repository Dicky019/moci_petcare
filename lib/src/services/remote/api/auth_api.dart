import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';

import '/src/features/authentication/data/response/user_response.dart';
import '/src/services/remote/config/config.dart';

class AuthApi {
  final DioClient _dioClient;
  final firebaseAuth = firebase_auth.FirebaseAuth.instance;

  AuthApi(this._dioClient);

  Future<Result<String>> login(
      // {
      // required String email,
      // required String password,
      // }
      ) async {
    try {
      final sign = await signInWithGoogle();
      if (sign.user == null) {
        throw Exception("Tidak Ada User");
      }
      if (sign.user?.email == null) {
        throw Exception("Tidak Email");
      }
      final response = await _dioClient.post(
        Endpoint.login,
        data: {
          'email': sign.user?.email,
          // 'password': password,
        },
      );
      log(response.toString());
      return Result.success(response['accessToken']);
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  Future<Result<void>> logout() async {
    await firebaseAuth.signOut();
    return const Result.success(null);
  }

  Future<Result<UserResponse>> loginResponse() async {
    try {
      final response = await _dioClient.get(Endpoint.user);
      log((response['data'] as Map).toString(),name: "_dioClient");
      return Result.success(UserResponse.fromJson(response['data']));
    } catch (e, st) {
      return Result.failure(
        NetworkExceptions.getDioException(e, st),
        st,
      );
    }
  }

  Future<firebase_auth.UserCredential> signInWithGoogle() async {
    await firebaseAuth.signOut();
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = firebase_auth.GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await firebaseAuth.signInWithCredential(credential);
  }
}

final authApiProvider = Provider<AuthApi>((ref) {
  return AuthApi(ref.read(dioClientProvider));
});
