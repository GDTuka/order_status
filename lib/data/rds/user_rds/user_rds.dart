import 'package:cloud_firestore/cloud_firestore.dart';
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

      await _db.collection('users').get().then((value) {
        for (final doc in value.docs) {
          final user = UserRemoteModel.fromJson(doc.data());

          if (user.authId == authId) {
            currentUser = user;
          }
        }
      });
      return currentUser;
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
