import 'package:order_status/data/models/local/enums/user_sort_enum.dart';
import 'package:order_status/data/models/remote/user/user_remote_model.dart';
import 'package:order_status/data/rds/user_rds/user_rds.dart';

class UserRepository {
  UserRepository({
    required UserRDS userRDS,
  }) : _userRDS = userRDS;
  final UserRDS _userRDS;

  Future<UserRemoteModel?> createNewUser(UserRemoteModel newUser) async {
    try {
      final res = await _userRDS.createUser(newUser.toJson());

      if (res == true) {
        return newUser;
      }
      return null;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  Future<List<UserRemoteModel>> getUsers(UserSortEnum sort) async {
    try {
      final res = await _userRDS.getUsers(sort);
      return res;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  Future<void> deleteUser(String authId) async {
    try {
      await _userRDS.deleteUser(authId);
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateUser(UserRemoteModel user) async {
    try {
      await _userRDS.updateUser(user.toJson());
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
