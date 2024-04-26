import 'package:order_status/data/lds/auth/auth_lds.dart';
import 'package:order_status/data/models/local/enums/user_sort_enum.dart';
import 'package:order_status/data/models/remote/user/user_remote_model.dart';
import 'package:order_status/data/rds/user_rds/user_rds.dart';

class UserRepository {
  UserRepository({required UserRDS userRDS, required AuthLDS authLDS})
      : _userRDS = userRDS,
        _authLDS = authLDS;
  final UserRDS _userRDS;
  final AuthLDS _authLDS;

  Future<UserRemoteModel?> createNewUser(UserRemoteModel newUser) async {
    try {
      final adminId = _authLDS.readAdminId();
      if (adminId == null) throw Exception();
      final res = await _userRDS.createUser(newUser.toJson(), adminId);

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
      final adminId = _authLDS.readAdminId();
      if (adminId == null) throw Exception();

      final res = await _userRDS.getUsers(sort, adminId);
      return res;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  Future<void> deleteUser(String authId) async {
    try {
      final adminId = _authLDS.readAdminId();
      if (adminId == null) throw Exception();
      await _userRDS.deleteUser(authId, adminId);
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateUser(UserRemoteModel user) async {
    try {
      final adminId = _authLDS.readAdminId();
      if (adminId == null) throw Exception();
      await _userRDS.updateUser(user.toJson(), adminId);
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
