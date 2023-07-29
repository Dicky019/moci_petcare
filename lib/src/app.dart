import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
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
            title: 'Moci Petcate',
            locale: const Locale("id"),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            theme: ThemeData(
              scaffoldBackgroundColor: ColorApp.purpleLight,
              primarySwatch: Colors.deepPurple,
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
        });
  }
}
