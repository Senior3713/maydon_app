import 'package:maydon_app/models/stadium_model/location_model.dart';

class HistoryModel {
  final DateTime from;
  final DateTime to;
  final LocationStadium location;
  final String adminName;

  const HistoryModel({
    required this.from,
    required this.to,
    required this.location,
    required this.adminName,
  });

  factory HistoryModel.fromJson(Map<String, Object?> json) {
    return HistoryModel(
      from: DateTime.parse(json["from"] as String),
      to: DateTime.parse(json["to"] as String),
      location: LocationStadium.fromJson(json["location"] as Map<String, Object?>),
      adminName: json["adminName"] as String,
    );
  }
}
