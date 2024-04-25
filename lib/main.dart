import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/bloc/orders/orders_bloc.dart';
import 'package:order_status/bloc/user/user_bloc.dart';
import 'package:order_status/data/lds/auth/auth_lds.dart';
import 'package:order_status/data/models/remote/user/user_remote_model.dart';
import 'package:order_status/data/rds/user_rds/user_rds.dart';
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

  getIt.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);

  getIt.registerSingleton<UserRDS>(UserRDS(db: getIt()));

  getIt.registerSingleton<SharedPreferences>(shared);

  getIt.registerSingleton<AuthLDS>(AuthLDS(prefs: shared));

  getIt.registerSingleton<AuthRepository>(AuthRepository(authLDS: getIt(), userRDS: getIt()));

  getIt.registerSingleton<UserBloc>(UserBloc(authRepository: getIt()));

  getIt.registerSingleton<OrdersBloc>(OrdersBloc());

  await _auth();
}

// Чтобы получить доступ к фаерстору нужно пользователь авторизовывать, это самый простой вариант анонимной авторизации
Future<void> _auth() async {
  FirebaseAuth auth = FirebaseAuth.instance;

  if (auth.currentUser == null) {
    await auth.signInAnonymously();
  }

  await getIt<AuthRepository>().getIsAuth();
}
