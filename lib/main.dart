import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/bloc/orders/orders_bloc.dart';
import 'package:order_status/bloc/overlay_bloc/overlay_bloc.dart';
import 'package:order_status/bloc/user/user_bloc.dart';
import 'package:order_status/data/lds/auth/auth_lds.dart';
import 'package:order_status/data/rds/order_rds/order_rds.dart';
import 'package:order_status/data/rds/user_rds/user_rds.dart';
import 'package:order_status/domain/auth/auth_repository.dart';
import 'package:order_status/domain/order_status/order_repository.dart';
import 'package:order_status/domain/user/user_repository.dart';
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

  Dio dio = Dio(BaseOptions(
    headers: {
      'Authorization':
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJNQTYyMjk3NiIsImp0aSI6ImI1OTNkODRkLTk1MWYtNGIyZi05ZGViLTcxOWExNDM4NWVmZCJ9.si-87k3Aw5GN67orgJpoyTXC0C2OpWwRCKzLogRWawU',
    },
  ));

  getIt.registerSingleton<Dio>(dio);

  getIt.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);

  getIt.registerSingleton<UserRDS>(UserRDS(db: getIt()));

  getIt.registerSingleton<AuthLDS>(AuthLDS(prefs: shared));

  getIt.registerSingleton<UserRepository>(UserRepository(userRDS: getIt(), authLDS: getIt()));

  getIt.registerSingleton<SharedPreferences>(shared);

  getIt.registerSingleton<AuthRepository>(AuthRepository(authLDS: getIt(), userRDS: getIt()));

  getIt.registerSingleton<UserBloc>(UserBloc(authRepository: getIt(), userRepository: getIt()));

  getIt.registerSingleton<OrdersBloc>(OrdersBloc());

  getIt.registerSingleton<OverlayBloc>(OverlayBloc());

  getIt.registerSingleton<OrderRDS>(OrderRDS(dio: getIt()));

  getIt.registerSingleton<OrderRepository>(OrderRepository(orderRDS: getIt()));

  await getIt<OrderRepository>().devCreteQRWithcode();

  await _auth();
}

// Чтобы получить доступ к фаерстору нужно пользователь авторизовывать, это самый простой вариант анонимной авторизации
Future<void> _auth() async {
  FirebaseAuth auth = FirebaseAuth.instance;

  if (auth.currentUser == null) {
    await auth.signInAnonymously();
  }

  final res = await getIt<AuthRepository>().getIsAuth();

  if (res != null) {
    getIt<UserBloc>().add(UserEvents.setUserAfterBaseLogin(res));
  }
}
