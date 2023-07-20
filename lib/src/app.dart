import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../src/routing/app_route.dart';
import 'constants/constants.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'KeDai Persuratan',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            appBarTheme: AppBarTheme(
              backgroundColor: ColorApp.purpleDark,
              titleTextStyle: TextStyle(
                fontSize: SizeApp.h16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          routerDelegate: router.routerDelegate,
          routeInformationParser: router.routeInformationParser,
          routeInformationProvider: router.routeInformationProvider,
        );
      },
    );
  }
}
