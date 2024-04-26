import 'package:dio/dio.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/data/models/remote/order/order_remote_model.dart';
import 'package:order_status/data/models/remote/order/qr_model.dart';
import 'package:uuid/uuid.dart';

class OrderRDS {
  static Future<void> _postQR() async {
    Dio dio = getIt<Dio>();
    String uuid = const Uuid().v1();

    QRData data = QRData(
      qrDescription: 'QR',
      qtrType: 'QRDynamic',
      sbpMecrhantId: 'MA622976',
      order: uuid,
      amount: 100,
    );

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

    // curl --location --request POST 'https://pay-test.raif.ru/api/sbp/v2/qrs' \
    // --header 'Content-Type: application/json' \
    // --data-raw '{
    // "account": 40700000000000000000,
    // "qrType": "QRVariable",
    // "sbpMerchantId": "MA0000000552",
    // "qrDescription": "QR на главной кассе"
    // }'

    // ignore: unused_local_variable
    var id = qrRes.data['qrId'];
  }

  static Future<OrderRemoteModel> getOrder() async {
    var id = _postQR();
    Dio dio = getIt<Dio>();
    final res = await dio.get(
      'https://pay-test.raif.ru/api/sbp/v1/qr/$id/payment-info',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJNQTYyMjk3NiIsImp0aSI6ImI1OTNkODRkLTk1MWYtNGIyZi05ZGViLTcxOWExNDM4NWVmZCJ9.si-87k3Aw5GN67orgJpoyTXC0C2OpWwRCKzLogRWawU',
        },
      ),
    );

    return OrderRemoteModel.fromJson(res as Map<String, dynamic>);
  }
}

class SomeResopnse {}
