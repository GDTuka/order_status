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

class SomeThing {
  static Future<void> makeTestRequest() async {
    Dio dio = Dio();

    String uuid = const Uuid().v1();

    Data data = Data(
      qrDescription: 'QR',
      qtrType: 'QRDynamic',
      sbpMecrhantId: 'MA622976',
      order: uuid,
      amount: 100,
    );

// curl --location --request POST 'https://pay-test.raif.ru/api/sbp/v2/qrs' \
// --header 'Content-Type: application/json' \
// --data-raw '{
// "account": 40700000000000000000,
// "qrType": "QRVariable",
// "sbpMerchantId": "MA0000000552",
// "qrDescription": "QR на главной кассе"
// }'

    final qrRes = await dio.post(
      'https://pay-test.raif.ru/api/sbp/v2/qrs',
      data: data.toJson(),
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJNQTYyMjk3NiIsImp0aSI6ImI1OTNkODRkLTk1MWYtNGIyZi05ZGViLTcxOWExNDM4NWVmZCJ9.si-87k3Aw5GN67orgJpoyTXC0C2OpWwRCKzLogRWawU',
        },
      ),
    );

    final id = qrRes.data['qrId'];

    final res = await dio.get(
      'https://pay-test.raif.ru/api/sbp/v2/qrs/$id',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJNQTYyMjk3NiIsImp0aSI6ImI1OTNkODRkLTk1MWYtNGIyZi05ZGViLTcxOWExNDM4NWVmZCJ9.si-87k3Aw5GN67orgJpoyTXC0C2OpWwRCKzLogRWawU',
        },
      ),
    );
  }
}

class Data {
  Data({
    required this.qrDescription,
    required this.qtrType,
    required this.sbpMecrhantId,
    required this.order,
    required this.amount,
  });
  String qtrType;
  String sbpMecrhantId;
  String qrDescription;
  String order;
  double amount;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        qtrType: json["qrType"],
        sbpMecrhantId: json["sbpMerchantId"],
        qrDescription: json["qrDescription"],
        order: json["order"],
        amount: json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "qrType": qtrType,
        "sbpMerchantId": sbpMecrhantId,
        "qrDescription": qrDescription,
        "order": order,
        "amount": amount,
      };
}

class SomeResopnse {}
