import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/bloc/orders/orders_bloc.dart';
import 'package:order_status/bloc/user/user_bloc.dart';
import 'package:order_status/data/lds/auth/auth_lds.dart';
import 'package:order_status/domain/auth/auth_repository.dart';
import 'package:order_status/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await _registerDependencies();

  runApp(const App());
}

Future<void> _registerDependencies() async {
  final shared = await SharedPreferences.getInstance();

  getIt.registerSingleton<SharedPreferences>(shared);
  getIt.registerSingleton<AuthLDS>(AuthLDS(prefs: shared));
  getIt.registerSingleton<AuthRepository>(AuthRepository(authLDS: getIt()));
  getIt.registerSingleton<UserBloc>(UserBloc(authRepository: getIt()));
  getIt.registerSingleton<OrdersBloc>(OrdersBloc());
}
