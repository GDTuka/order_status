import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:order_status/domain/auth/auth_repository.dart';
import 'package:order_status/features/auth/auth_screen.dart';
import 'package:order_status/features/auth/opening_screen.dart';
import 'package:order_status/features/stats/stats_screen.dart';
import 'package:order_status/navigation/navigation_screen.dart';

final getIt = GetIt.instance;

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order_Status',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: const Color(0xff6860A8),
        ),
        useMaterial3: true,
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
      routes: {
        '/navigation': (context) => const NavigationScreen(),
        '/stats': (context) => const StatsScreen(),
        '/auth': (context) => AuthScreen(),
        '/opening': (context) => const OpeningScreen(),
      },
      initialRoute: getIt<AuthRepository>().isAuth ? '/navigation' : '/opening',
    );
  }
}
