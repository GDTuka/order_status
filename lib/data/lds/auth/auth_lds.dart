import 'package:shared_preferences/shared_preferences.dart';

class AuthLDS {
  AuthLDS({
    required this.prefs,
  });
  SharedPreferences prefs;

  final String _key = 'authLDS';

  Future<void> write(String value) async => await prefs.setString(_key, value);

  String? read() => prefs.getString(_key);

  Future<void> delete() async => await prefs.remove(_key);
}
