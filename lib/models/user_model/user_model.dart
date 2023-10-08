import 'package:maydon_app/models/user_model/history_model.dart';

class UserModel {
  final String id;
  final String fullName;
  final String email;
  final String password;
  final String phoneNumber;
  final String token;
  List<String> favoriteList;
  List<HistoryModel> history;

  UserModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.password,
    required this.phoneNumber,
    this.favoriteList = const [],
    required this.token,
    this.history = const [],
  });

  factory UserModel.fromJson(Map<String, Object?> json) {
    return UserModel(
      id: json["id"] as String,
      fullName: json["fullName"] as String,
      email: json["email"] as String,
      password: json["password"] as String,
      phoneNumber: json["phoneNumber"] as String,
      favoriteList: json["favoriteList"] as List<String>,
      token: json["tokenList"] as String,
      history: (json["history"] as List).map((e) => HistoryModel.fromJson(json["history"] as Map<String, Object?>)).toList(),
    );
  }
}

