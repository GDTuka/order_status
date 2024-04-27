// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderRemoteModel _$OrderRemoteModelFromJson(Map<String, dynamic> json) =>
    OrderRemoteModel(
      orderId: json['orderId'] as String,
      status: json['status'] as bool,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$OrderRemoteModelToJson(OrderRemoteModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'orderId': instance.orderId,
      'date': instance.date?.toIso8601String(),
    };
