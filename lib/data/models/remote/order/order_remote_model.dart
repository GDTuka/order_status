import 'package:order_status/data/models/local/order/order_local_model.dart';

class OrderRemoteModel {
  final String paymentStatus;
  final String order;
  final DateTime createDate;

  OrderRemoteModel({
    required this.paymentStatus,
    required this.order,
    required this.createDate,
  });

  factory OrderRemoteModel.fromJson(Map<String, dynamic> json) {
    return OrderRemoteModel(
      paymentStatus: json['paymentStatus'],
      order: json['qrID'],
      createDate: DateTime.parse(json['createDate']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'paymentStatus': paymentStatus,
      'qrID': order,
      'createDate': createDate.toIso8601String(),
    };
  }

  OrderLocalModel toLocal() {
    return OrderLocalModel(
      paymentStatus: paymentStatus,
      order: order,
      createDate: createDate,
    );
  }
}
