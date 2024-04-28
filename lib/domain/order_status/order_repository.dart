import 'dart:convert';

import 'package:order_status/data/lds/orders/orders_lds.dart';
import 'package:order_status/data/models/local/order/order_local_model.dart';
import 'package:order_status/data/models/remote/order/order_remote_model.dart';
import 'package:order_status/data/rds/order_rds/order_rds.dart';

class OrderRepository {
  OrderRepository({
    required this.orderRDS,
    required this.ordersLDS,
  });
  OrderRDS orderRDS;

  OrdersLDS ordersLDS;

  Future<List<OrderLocalModel>> getSavedOrders() async {
    
    final orders = ordersLDS.getOrders();

    if (orders == null) return [];

    List<OrderLocalModel> savedOrders =
        orders.map((e) => OrderLocalModel.fromJson(jsonDecode(e))).toList();
    return savedOrders;
  }

  Future<OrderLocalModel> getOrderStatusById(String qrId) async {
    OrderRemoteModel temp = OrderRemoteModel(
      paymentStatus: 'SUCCESS',
      order: 'AD9C2D8340F84EF59112A0BF30B3710E',
      createDate: DateTime.now(),
    );
    try {
      final res = await orderRDS.getOrderStatusById(qrId);

      final orders = ordersLDS.getOrders();

      if (orders == null) {
        final orderJson = res.toLocal().toJson();

        ordersLDS.setOrders([jsonEncode(orderJson)]);
      } else {
        final orders = ordersLDS.getOrders();

        List<OrderLocalModel> savedOrders = orders!
            .map((e) => OrderLocalModel.fromJson(jsonDecode(e)))
            .toList();

        savedOrders.add(res.toLocal());

        List<String> newJsonString =
            savedOrders.map((e) => jsonEncode(e.toJson())).toList();

        ordersLDS.setOrders(newJsonString);
      }

      return res.toLocal();
    } on FormatException catch (e) {
      throw FormatException(e.message);
    }
  }

  Future<void> devCreteQRWithcode() async {
    await orderRDS.devCreateQrId();
  }
}
