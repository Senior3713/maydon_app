import 'package:maydon_app/domain/models/stadium_model/location_model.dart';

class StadiumModel {
  final String id;
  final LocationStadium location;
  final double priceHour;
  final String description;
  final List<String> stadiumImages;

  StadiumModel({
    required this.priceHour,
    required this.id,
    required this.location,
    required this.description,
    required this.stadiumImages,
  });

  factory StadiumModel.fromJson(Map<String, Object?> json) {
    return StadiumModel(
      id: json["id"] as String,
      priceHour: json["priceHour"] as double,
      location: json["location"] as LocationStadium,
      description: json["description"] as String,
      stadiumImages: json["stadiumImages"] as List<String>,
    );
  }
}




