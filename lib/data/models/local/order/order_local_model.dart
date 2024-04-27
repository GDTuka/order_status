class OrderLocalModel {
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
}
