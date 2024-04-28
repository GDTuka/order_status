import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:order_status/domain/auth/auth_repository.dart';
import 'package:order_status/features/auth/auth_screen.dart';
import 'package:order_status/features/auth/auth_windows_screen.dart';
import 'package:order_status/features/auth/opening_screen.dart';
import 'package:order_status/features/stats/stats_screen.dart';
import 'package:order_status/navigation/navigation_screen.dart';
import 'package:order_status/navigation/navigation_windows_screen.dart';

final getIt = GetIt.instance;

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

const primaryColor = Color(0xffFFE500);
const secondaryColor = Color(0xffB0BFD5);
const backgroundColor = Color(0xff1E1C1D);
const accentColor = Color(0xff6860A8);
const lightColor = Color(0xffE7F2E4);
const darkColor = Color(0xffEFE4E4);
const errorColor = Color(0xffAB4141);

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order_Status',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: accentColor,
          primary: primaryColor,
          secondary: secondaryColor,
          error: errorColor,
          onPrimary: Colors.black,
          onSecondary: accentColor,
          onBackground: Colors.white,
          onError: Colors.white,
          shadow: accentColor,
        ),
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      builder: (context, child) {
        if (child == null) return Container();
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(1.0),
          ), //set desired text scale factor here
          child: child,
        );
      },
      routes: Platform.isAndroid
          ? {
              '/navigation': (context) => const NavigationScreen(),
              '/stats': (context) => const StatsScreen(),
              '/auth': (context) => AuthScreen(),
              '/opening': (context) => const OpeningScreen(),
            }
          : {
              '/navigation_windows': (context) =>
                  const NavigationWindowsScreen(),
              '/stats_windows': (context) => const StatsScreen(),
              '/auth_windows': (context) => AuthWindowsScreen(),
              '/opening_windows': (context) => const OpeningScreen(),
            },
      initialRoute: Platform.isAndroid 
          ? getIt<AuthRepository>().isAuth
              ? '/navigation'
              : '/navigation'
          : getIt<AuthRepository>().isAuth 
              ? '/navigation_windows'
              : '/auth_windows',
    );
  }
}
