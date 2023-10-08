import 'package:maydon_app/models/stadium_model/stadium_model.dart';

class Admin {
  final String id;
  final String firstName;
  final String email;
  final String password;
  final String lastName;
  final String imageAdmin;
  final String phoneNumber;
  final StadiumModel stadium;
  
  Admin({
    required this.id,
    required this.firstName,
    required this.email,
    required this.password,
    required this.lastName,
    required this.imageAdmin,
    required this.phoneNumber,
    required this.stadium,
  });

  factory Admin.fromJson(Map<String, Object?> json) {
    return Admin(
      id: json["id"] as String,
      firstName: json["firstName"] as String,
      email: json["email"] as String,
      password: json["password"] as String,
      lastName: json["lastName"] as String,
      imageAdmin: json["imageAdmin"] as String,
      phoneNumber: json["phoneNumber"] as String,
      stadium: StadiumModel.fromJson(json["stadium"] as Map<String, Object?>),
    );
  }
}
