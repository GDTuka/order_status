import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:order_status/data/lds/orders/orders_lds.dart';
import 'package:order_status/data/models/local/order/order_local_model.dart';
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

    List<OrderLocalModel> savedOrders = orders.map((e) => OrderLocalModel.fromJson(jsonDecode(e))).toList();
    return savedOrders;
  }

  Future<OrderLocalModel> getOrderStatusById(String qrId) async {
    try {
      final res = await orderRDS.getOrderStatusById(qrId);

      final orders = ordersLDS.getOrders();

      if (orders == null) {
        final orderJson = res.toLocal().toJson;

        ordersLDS.setOrders([jsonEncode(orderJson)]);
      } else {
        final orders = ordersLDS.getOrders();

        List<OrderLocalModel> savedOrders = orders!.map((e) => OrderLocalModel.fromJson(jsonDecode(e))).toList();

        savedOrders.add(res.toLocal());

        List<String> newJsonString = savedOrders.map((e) => jsonEncode(e.toJson())).toList();

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
