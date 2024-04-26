import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:order_status/data/models/local/enums/user_sort_enum.dart';
import 'package:order_status/data/models/remote/user/user_remote_model.dart';

class UserRDS {
  UserRDS({required FirebaseFirestore db}) : _db = db;
  final FirebaseFirestore _db;

  Future<bool> createUser(Map<String, dynamic> userMap) async {
    try {
      await _db.collection('users').add(userMap);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<UserRemoteModel?> getUserByAuthId(String authId) async {
    try {
      UserRemoteModel? currentUser;

      await _db.collection('users').get().then(
        (value) {
          for (final doc in value.docs) {
            final user = UserRemoteModel.fromJson(doc.data());

            if (user.authId == authId) {
              currentUser = user;
            }
          }
        },
      );
      return currentUser;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  Future<List<UserRemoteModel>> getUsers(UserSortEnum sort) async {
    try {
      List<UserRemoteModel> users = [];

      await _db.collection('users').get().then(
        (value) {
          for (final doc in value.docs) {
            final user = UserRemoteModel.fromJson(doc.data());

            if (sort == UserSortEnum.all) {
              users.add(user);
            }
            if (sort == UserSortEnum.admins) {
              if (user.isAdmin) {
                users.add(user);
              }
            }
          }
        },
      );
      return users;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  Future<void> deleteUser(String authId) async {
    try {
      String? id;
      await _db.collection('users').get().then(
        (value) async {
          for (final doc in value.docs) {
            final user = UserRemoteModel.fromJson(doc.data());

            if (user.authId == authId) {
              id = doc.id;
            }
          }
          if (id != null) {
            await _db.collection('users').doc(id).delete();
          }
        },
      );
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateUser(Map<String, dynamic> userMap) async {
    try {
      String? id;

      await _db.collection('users').get().then(
        (value) async {
          for (final doc in value.docs) {
            final user = UserRemoteModel.fromJson(doc.data());

            if (user.authId == userMap['authId']) {
              id = doc.id;
            }
          }
          if (id != null) {
            await _db.collection('users').doc(id).update(userMap);
          }
        },
      );
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
