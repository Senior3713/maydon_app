import 'package:maydon_app/domain/models/user_model/history_model.dart';

class UserModel {
  final String id;
  final String fullName;
  final String? userImage;
  final String email;
  final String password;
  final String phoneNumber;
  final String token;
  List<String> favoriteList;

  UserModel({
    this.userImage,
    required this.id,
    required this.fullName,
    required this.email,
    required this.password,
    required this.phoneNumber,
    this.favoriteList = const [],
    required this.token,
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
      userImage: json["userImage"] as String,
    );
  }

  Map<String, Object?> toJson() => {
    "id": id,
    "fullName": fullName,
    "userImage": userImage,
    "email": email,
    "password": password,
    "phoneNumber": phoneNumber,
    "favoriteList": favoriteList,
    "token": token,
  };
}

