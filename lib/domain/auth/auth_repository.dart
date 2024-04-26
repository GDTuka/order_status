import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:order_status/data/lds/auth/auth_lds.dart';
import 'package:order_status/data/models/remote/user/user_remote_model.dart';
import 'package:order_status/data/rds/user_rds/user_rds.dart';
import 'package:uuid/uuid.dart';

class AuthRepository {
  AuthRepository({
    required AuthLDS authLDS,
    required UserRDS userRDS,
  })  : _authLDS = authLDS,
        _userRDS = userRDS;

  final AuthLDS _authLDS;
  final UserRDS _userRDS;

  bool isAuth = false;

  // Возвращает то авторизован пользователь или нет
  Future<UserRemoteModel?> login(String authId) async {
    try {
      final res = await _userRDS.getUserByAuthId(authId);
      if (res != null) {
        await _authLDS.write(authId);
      }
      return res;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  Future<UserRemoteModel?> getIsAuth() async {
    final authId = _authLDS.read();

    if (authId == null) {
      isAuth = false;
      return null;
    }

    final res = await login(authId);

    isAuth = res != null;

    return res;
  }
}
