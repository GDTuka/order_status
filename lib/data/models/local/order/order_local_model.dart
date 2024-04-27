class OrderLocalModel {
  OrderLocalModel({
    required this.code,
    required this.transactionId,
    required this.qrId,
    required this.sbpMerchantId,
    required this.merchantId,
    required this.amount,
    required this.currency,
    required this.paymentStatus,
    required this.order,
    required this.createDate,
  });

  final String code;
  final int transactionId;
  final String qrId;
  final String sbpMerchantId;
  final int merchantId;
  final double amount;
  final String currency;
  final String paymentStatus;
  final String order;
  final DateTime createDate;

  Map<String, dynamic> toJson() => {
        'code': code,
        'transactionId': transactionId,
        'qrId': qrId,
        'sbpMerchantId': sbpMerchantId,
        'merchantId': merchantId,
        'amount': amount,
        'currency': currency,
        'paymentStatus': paymentStatus,
        'order': order,
        'createDate': createDate.toIso8601String(),
      };

  factory OrderLocalModel.fromJson(Map<String, dynamic> json) {
    return OrderLocalModel(
      code: json['code'],
      transactionId: json['transactionId'],
      qrId: json['qrId'],
      sbpMerchantId: json['sbpMerchantId'],
      merchantId: json['merchantId'],
      amount: json['amount'],
      currency: json['currency'],
      paymentStatus: json['paymentStatus'],
      order: json['order'],
      createDate: DateTime.parse(json['createDate']),
    );
  }
}
