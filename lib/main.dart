import 'package:flutter/material.dart';
import 'package:order_status/app/app.dart';

Future<void> main() async {
  await _registerDependencies();

  runApp(const App());
}

Future<void> _registerDependencies() async {}
