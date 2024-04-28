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
        'qrId': order,
        'createDate': createDate.toIso8601String(),
      };

  factory OrderLocalModel.fromJson(Map<String, dynamic> json) {
    return OrderLocalModel(
      paymentStatus: json['paymentStatus'],
      order: json['qrId'],
      createDate: DateTime.parse(json['createDate']),
    );
  }
}
