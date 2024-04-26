// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRemoteModel _$UserRemoteModelFromJson(Map<String, dynamic> json) =>
    UserRemoteModel(
      authId: json['authId'] as String,
      isAdmin: json['isAdmin'] as bool,
      isSuperAdmin: json['isSuperAdmin'] as bool,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      thirdName: json['thirdName'] as String?,
      adminAuthId: json['adminAuthId'] as String?,
    );

Map<String, dynamic> _$UserRemoteModelToJson(UserRemoteModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'thirdName': instance.thirdName,
      'authId': instance.authId,
      'adminAuthId': instance.adminAuthId,
      'isAdmin': instance.isAdmin,
      'isSuperAdmin': instance.isSuperAdmin,
    };
