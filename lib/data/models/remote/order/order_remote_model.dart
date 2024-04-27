import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_remote_model.g.dart';

@JsonSerializable()
class OrderRemoteModel {
  OrderRemoteModel({
    required this.orderId,
    required this.status,
    this.date,
  });

  bool status;
  String orderId;
  DateTime? date;

  factory OrderRemoteModel.fromJson(Map<String, dynamic> json) =>
      _$OrderRemoteModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderRemoteModelToJson(this);
}
