import 'dart:convert';

class OrderLocalModel {
  final String paymentStatus;
  final String order;
  final DateTime createDate;

  OrderLocalModel({
    required this.paymentStatus,
    required this.order,
    required this.createDate,
  });

  String toJson() {
    return jsonEncode({
      'paymentStatus': paymentStatus,
      'order': order,
      'createDate': createDate.toIso8601String(),
    });
  }
}
