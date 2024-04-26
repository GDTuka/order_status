import 'package:shared_preferences/shared_preferences.dart';

class AuthLDS {
  AuthLDS({
    required this.prefs,
  });
  SharedPreferences prefs;

  final String _userId = 'authLDS';

  final String _adminId = 'authLdsAdmin';

  final String _isAdmin = 'idAdmin';

  Future<void> writeUserId(String value) async => await prefs.setString(_userId, value);

  Future<void> writeAdminId(String value) async => await prefs.setString(_adminId, value);

  Future<void> writeIsAdmin(bool value) async => await prefs.setBool(_isAdmin, value);

  String? readAdminId() => prefs.getString(_adminId);

  String? readUserId() => prefs.getString(_userId);

  bool? readIsAdmin() => prefs.getBool(_isAdmin);

  Future<void> deleteUSerId() async => await prefs.remove(_userId);

  Future<void> deleteAdminId() async => await prefs.remove(_adminId);
}
