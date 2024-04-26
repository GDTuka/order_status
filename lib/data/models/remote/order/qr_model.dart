class QRData {
  QRData({
    required this.qrDescription,
    required this.qtrType,
    required this.sbpMecrhantId,
    required this.order,
    required this.amount,
  });
  String qtrType;
  String sbpMecrhantId;
  String qrDescription;
  String order;
  double amount;

  factory QRData.fromJson(Map<String, dynamic> json) => QRData(
        qtrType: json["qrType"],
        sbpMecrhantId: json["sbpMerchantId"],
        qrDescription: json["qrDescription"],
        order: json["order"],
        amount: json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "qrType": qtrType,
        "sbpMerchantId": sbpMecrhantId,
        "qrDescription": qrDescription,
        "order": order,
        "amount": amount,
      };
}
