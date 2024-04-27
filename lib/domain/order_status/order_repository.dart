import 'package:order_status/data/models/local/order/order_local_model.dart';
import 'package:order_status/data/rds/order_rds/order_rds.dart';

class OrderRepository {
  OrderRepository({
    required this.orderRDS,
  });
  OrderRDS orderRDS;

  Future<OrderLocalModel> getOrderStatusById(String qrId) async {
    final res = await orderRDS.getOrderStatusById(qrId);

    return res.toLocal();
  }

  Future<void> devCreteQRWithcode() async {
    await orderRDS.devCreateQrId();
  }
}
