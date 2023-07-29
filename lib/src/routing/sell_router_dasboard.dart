import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moci_petcare/src/routing/app_route.dart';

import '../common_widgets/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import '../common_widgets/common_widgets.dart';

final sellRouterDasboard = Provider.family<ShellRoute, List<GoRoute>>(
  (ref, routes) {
    bool isPemesanan(GoRouterState state) =>
        state.matchedLocation == "/pemesanan";
    return ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: const BottomNavigationBarWidget(),
          floatingActionButton:
              isPemesanan(state) && ref.read(selectedIndexProvider) == 1
                  ? FloatingActionButtonWidget(
                      onPressed: () => context.go(Routes.pemesananAddPath()),
                    )
                  : const SizedBox(),
        );
      },
      routes: routes,
    );
  },
);
