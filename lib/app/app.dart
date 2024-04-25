import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:order_status/domain/auth/auth_repository.dart';
import 'package:order_status/features/auth/auth_screen.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/navigation': (context) => const NavigationScreen(),
        '/stats': (context) => const StatsScreen(),
        '/auth': (context) => AuthScreen(),
      },
      initialRoute: getIt<AuthRepository>().isAuth ? '/navigation' : '/auth',
    );
  }
}
