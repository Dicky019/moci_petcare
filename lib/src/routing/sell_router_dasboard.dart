import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../common_widgets/bottom_navigation_bar/bottom_navigation_bar_widget.dart';

final sellRouterDasboard = Provider.family<ShellRoute, List<GoRoute>>(
  (ref, routes) {
    // ref.read(authServiceProvider).getCurrentUser();
    return ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: const BottomNavigationBarWidget(),
        );
      },
      routes: routes,
    );
  },
);

