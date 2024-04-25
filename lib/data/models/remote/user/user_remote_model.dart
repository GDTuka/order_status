import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_remote_model.g.dart';

@JsonSerializable()
class UserRemoteModel {
  UserRemoteModel({
    required this.authId,
    required this.isAdmin,
    required this.isSuperAdmin,
    required this.name,
    required this.surname,
    required this.thirdName,
  });
  String? name;
  String? surname;
  String? thirdName;

  String authId;

  bool isAdmin;
  bool isSuperAdmin;

  factory UserRemoteModel.fromJson(Map<String, dynamic> json) => _$UserRemoteModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserRemoteModelToJson(this);
}
