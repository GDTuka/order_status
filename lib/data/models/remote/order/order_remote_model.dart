class OrderRemoteModel {
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

  OrderRemoteModel({
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

  factory OrderRemoteModel.fromJson(Map<String, dynamic> json) {
    return OrderRemoteModel(
      code: json['code'],
      transactionId: json['transactionId'],
      qrId: json['qrId'],
      sbpMerchantId: json['sbpMerchantId'],
      merchantId: json['merchantId'],
      amount: json['amount'].toDouble(),
      currency: json['currency'],
      paymentStatus: json['paymentStatus'],
      order: json['order'],
      createDate: DateTime.parse(json['createDate']),
    );
  }
}
