import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '/src/features/authentication/data/authentication_repository.dart';
import 'sell_router_dasboard.dart';

import '../features/authentication/presentation/login_screen.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/pemesanan/presentation/pemesanan_add_screen.dart';
import '../features/pemesanan/presentation/pemesanan_detail_screen.dart';
import '../features/pemesanan/presentation/pemesanan_edit_screen.dart';
import '../features/pemesanan/presentation/pemesanan_list_screen.dart';
import '../features/profile/presentation/profile_screen.dart';

enum Routes {
  init("/", "home"),
  login("/login", "login"),
  pemesananHistory("/pemesanan-history", "pemesanan history"),
  pemesananAdd("/pemesanan-add", "pemesanan add"),
  pemesananEdit("/pemesanan-edit/:id", "pemesanan edit"),
  pemesananDetail("/pemesanan-detail/:id", "pemesanan detail"),
  profile("/profile", "profile");

  const Routes(this.path, this.name);
  final String path, name;

  static String pemesananEditPath(String id) => "/pemesanan-edit/$id"; 
  static String pemesananDetailPath(String id) => "/pemesanan-detail/$id"; 
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
                path: Routes.pemesananHistory.path,
                name: Routes.pemesananHistory.name,
                builder: (context, state) => const PemesananListScreen(),
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
          path: Routes.pemesananAdd.path,
          name: Routes.pemesananAdd.name,
          builder: (context, state) => const PemesananAddScreen(),
        ),
        GoRoute(
          path: Routes.pemesananEdit.path,
          name: Routes.pemesananEdit.name,
          builder: (context, state) => PemesananEditScreen(
            id: state.pathParameters['id'] ?? "-",
          ),
        ),
        GoRoute(
          path: Routes.pemesananDetail.path,
          name: Routes.pemesananDetail.name,
          builder: (context, state) =>  PemesananDetailScreen(
            id: state.pathParameters['id'] ?? "-",
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
