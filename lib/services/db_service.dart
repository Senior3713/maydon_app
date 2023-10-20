import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:maydon_app/domain/models/user_model/user_model.dart';

sealed class DBService {
  static final db = FirebaseDatabase.instance;

  static Future<bool> storeUser(String email, String password, String username, String userUid, String phone) async {
    try {
      final folder = db.ref(Folder.user).child(userUid);

      final user = UserModel(id: userUid, fullName: username, email: email, password: password, fcmToken: "",);
      await folder.set(user.toJson());
      return true;
    } catch(e) {
      debugPrint("Error Store User: $e");
      return false;
    }
  }
}

sealed class Folder {
 static const user = "User";
 static const admin = "Admin";
 static const stadium = "Stadium";
 static const stadiumImages = "StadiumImages";
 static const userImage = "UserImage";
 static const adminImage = "AdminImage";
}
