import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/authentication/presentation/login_screen.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/pemesanan/presentation/pemesanan_screen.dart';
import '../features/profile/presentation/profile_screen.dart';
import '/src/features/authentication/data/authentication_repository.dart';
import 'sell_router_dasboard.dart';

enum Routes {
  init("/", "home"),
  login("/login", "login"),
  pemesanan("/pemesanan", "pemesanan"),
  profile("/profile", "profile");

  const Routes(this.path, this.name);
  final String path, name;
}

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    final authRepository = ref.watch(authenticationRepositoryProvider);

    return GoRouter(
      initialLocation: Routes.init.path,
      debugLogDiagnostics: true,
      redirect: (context, state) {
        final loggedIn = authRepository.currentUser == null ? false : true;
        final loggingIn = state.location == '/login';
        if (!loggedIn) return loggingIn ? null : '/login';
        return null;
      },
      routes: [
        ref.read(
          sellRouterDasboard(
            [
              GoRoute(
                path: Routes.init.path,
                name: Routes.init.name,
                builder: (context, state) => const HomeScreen(),
              ),
              GoRoute(
                path: Routes.pemesanan.path,
                name: Routes.pemesanan.name,
                builder: (context, state) => const PemesananScreen(),
              ),
              GoRoute(
                path: Routes.profile.path,
                name: Routes.profile.name,
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          ),
        ),
        GoRoute(
          path: Routes.login.path,
          name: Routes.login.name,
          builder: (context, state) => const LoginScreen(),
        ),
      ],
    );
  },
);
