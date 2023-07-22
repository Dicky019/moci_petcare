import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../authentication/domain/user.dart';
import '/src/features/authentication/application/authentication_service.dart';
import 'profile_state.dart';

class ProfileControllerNotifier extends StateNotifier<ProfileState> {
  ProfileControllerNotifier(this._authenticationService)
      : super(const ProfileState());

  final AuthenticationService _authenticationService;

  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();

  // String get email => emailController.text;

  // String get password => passwordController.text;

 User? get getUser  => _authenticationService.getCurrentUser(
        // email: email,
        // password: password,
        );



  void logout() => _authenticationService.logout();

  

  // @override
  // void dispose() {
  //   // emailController.dispose();
  //   // passwordController.dispose();
  //   super.dispose();
  // }
}

// final profileControllerProvider =
//     StateNotifierProvider.autoDispose<ProfileControllerNotifier, ProfileState>(
//         (ref) {
//   return ProfileControllerNotifier(
//     ref.read(authServiceProvider),
//   );
// });
final profileControllerProvider =
    Provider.autoDispose<ProfileControllerNotifier>(
        (ref) {
  return ProfileControllerNotifier(
    ref.read(authServiceProvider),
  );
});
