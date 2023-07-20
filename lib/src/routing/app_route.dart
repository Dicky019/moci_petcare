import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '/src/features/authentication/data/authentication_repository.dart';

import '../features/authentication/presentation/login_screen.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/surat_keluar/presentation/surat_keluar/surat_keluar_screen.dart';
import '../features/surat_masuk/presentation/surat_masuk_screen.dart';
import '../features/surat_keluar/presentation/surat_reshuffle/surat_reshuffle_screen.dart';

enum Routes {
  init("/", "home"),
  login("login", "login"),
  suratMasuk("surat-masuk", "surat-masuk"),
  suratKeluar("surat-keluar", "surat-keluar"),
  suratKeluarReshuffle("reshuffle", "reshuffle");

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
        GoRoute(
          path: Routes.init.path,
          name: Routes.init.name,
          builder: (context, state) => const HomeScreen(),
          routes: [
            GoRoute(
              path: Routes.login.path,
              name: Routes.login.name,
              builder: (context, state) => const LoginScreen(),
            ),
            GoRoute(
              path: Routes.suratMasuk.path,
              name: Routes.suratMasuk.name,
              builder: (context, state) => const SuratMasukScreen(),
            ),
            GoRoute(
                path: Routes.suratKeluar.path,
                name: Routes.suratKeluar.name,
                builder: (context, state) => const SuratKeluarScreen(),
                routes: [
                  GoRoute(
                    path: Routes.suratKeluarReshuffle.path,
                    name: Routes.suratKeluarReshuffle.name,
                    builder: (context, state) => const SuratReshuffleScreen(),
                  ),
                ]),
          ],
        ),
      ],
    );
  },
);
