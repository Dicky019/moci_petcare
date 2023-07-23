import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/app_route.dart';
import '../../authentication/application/authentication_service.dart';
import '../../authentication/domain/user.dart';

class ProfileControllerNotifier {
  ProfileControllerNotifier(this._authenticationService);

  final AuthenticationService _authenticationService;

  User? get getUser => _authenticationService.getCurrentUser();

  void logout(BuildContext context) async {
    await _authenticationService.logout().then((value) {
      context.go(Routes.login.path);
    });
    
  }
}

final profileControllerProvider = Provider<ProfileControllerNotifier>((ref) {
  return ProfileControllerNotifier(
    ref.read(authServiceProvider),
  );
});
