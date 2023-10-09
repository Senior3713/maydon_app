import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:maydon_app/services/db_service.dart';

sealed class AuthService {
  static final auth = FirebaseAuth.instance;

  static Future<bool> signUp(String email, String password, String username, String phone) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(email: email, password: password);
      if(credential.user != null) {
        await credential.user!.updateDisplayName(username);
        await DBService.storeUser(email, password, username, credential.user!.uid, phone);
      }
      return credential.user != null;
    } catch(e) {
      debugPrint("Error Sign Up: $e");
      return false;
    }
  }

  static Future<bool> signIn(String email, String password) async {
    try {
      final credential = await auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user != null;
    } catch(e) {
      debugPrint('Error Sign In: $e');
      return false;
    }
  }
}

