class OrderLocalModel {
  OrderLocalModel({
    required this.paymentStatus,
    required this.order,
    required this.createDate,
  });

  final String paymentStatus;
  final String order;
  final DateTime createDate;

  Map<String, dynamic> toJson() => {
        'paymentStatus': paymentStatus,
        'order': order,
        'createDate': createDate.toIso8601String(),
      };

  factory OrderLocalModel.fromJson(Map<String, dynamic> json) {
    return OrderLocalModel(
      paymentStatus: json['paymentStatus'],
      order: json['order'],
      createDate: DateTime.parse(json['createDate']),
    );
  }
}
