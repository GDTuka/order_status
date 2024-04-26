import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:order_status/data/models/local/enums/user_sort_enum.dart';
import 'package:order_status/data/models/remote/user/user_remote_model.dart';

class UserRDS {
  UserRDS({required FirebaseFirestore db}) : _db = db;

  final FirebaseFirestore _db;

  Future<bool> createUser(Map<String, dynamic> userMap, String adminID) async {
    String? id;

    await _db.collection('users').get().then(
      (value) {
        for (final doc in value.docs) {
          final user = UserRemoteModel.fromJson(doc.data());

          if (user.adminAuthId == adminID) {
            id = doc.id;
          }
        }
      },
    );

    if (id == null) return throw Exception("Admin not found");

    await _db.collection('users').doc(id).collection('workers').add(userMap);

    try {
      await _db.collection('users').add(userMap);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<UserRemoteModel?> getUserByAuthId(String authId, String adminId, bool isAdmin) async {
    if (isAdmin) {
      UserRemoteModel? currentUser;
      try {
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

    try {
      String? id;

      UserRemoteModel? currentUser;

      await _db.collection('users').get().then(
        (value) {
          for (final doc in value.docs) {
            final user = UserRemoteModel.fromJson(doc.data());

            if (user.adminAuthId == adminId) {
              id = doc.id;
            }
          }
        },
      );

      if (id == null) return null;

      await _db.collection('users').doc(id).collection('workers').get().then(
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

  Future<List<UserRemoteModel>> getUsers(UserSortEnum sort, String adminId) async {
    try {
      List<UserRemoteModel> users = [];

      String? id;

      await _db.collection('users').get().then(
        (value) {
          for (final doc in value.docs) {
            final user = UserRemoteModel.fromJson(doc.data());

            if (user.adminAuthId == adminId) {
              id = doc.id;
            }
          }
        },
      );

      if (id == null) return throw Exception("Admin not found");

      await _db.collection('users').doc(id).collection('workers').get().then(
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

  Future<void> deleteUser(String authId, String adminId) async {
    try {
      String? id;

      String? admin;

      await _db.collection('users').get().then(
        (value) {
          for (final doc in value.docs) {
            final user = UserRemoteModel.fromJson(doc.data());

            if (user.adminAuthId == adminId) {
              admin = doc.id;
            }
          }
        },
      );

      if (admin == null) throw Exception("Admin not found");

      await _db.collection('users').doc(admin).collection('workers').get().then(
        (value) async {
          for (final doc in value.docs) {
            final user = UserRemoteModel.fromJson(doc.data());

            if (user.authId == authId) {
              id = doc.id;
            }
          }
          if (id != null) {
            await _db.collection('users').doc(admin).collection('workers').doc(id).delete();
          }
        },
      );
    } on Exception catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateUser(Map<String, dynamic> userMap, String adminId) async {
    try {
      String? id;

      String? admin;

      await _db.collection('users').get().then(
        (value) {
          for (final doc in value.docs) {
            final user = UserRemoteModel.fromJson(doc.data());

            if (user.adminAuthId == adminId) {
              admin = doc.id;
            }
          }
        },
      );

      if (admin == null) throw Exception("Admin not found");

      await _db.collection('users').doc(admin).collection('workers').get().then(
        (value) async {
          for (final doc in value.docs) {
            final user = UserRemoteModel.fromJson(doc.data());

            if (user.authId == userMap['authId']) {
              id = doc.id;
            }
          }
          if (id != null) {
            await _db.collection('users').doc(admin).collection('workers').doc(id).update(userMap);
          }
        },
      );
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
