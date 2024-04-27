import 'package:dio/dio.dart';
import 'package:order_status/app/app.dart';
import 'package:order_status/data/models/remote/order/order_remote_model.dart';
import 'package:order_status/data/models/remote/order/qr_model.dart';
import 'package:uuid/uuid.dart';

class OrderRDS {
  OrderRDS({
    required this.dio,
  });
  Dio dio = Dio();

  Future<String> devCreateQrId() async {
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
    );

    return qrRes.data['qrId'];
  }

  Future<OrderRemoteModel> getOrderStatusById(String qrId) async {
    final res = await dio.get(
      'https://pay-test.raif.ru/api/sbp/v1/qr/$qrId/payment-info',
    );

    if (res.data['message'] != null) {
      return throw FormatException(res.data['message']);
    }

    return OrderRemoteModel.fromJson(res.data);
  }
}
