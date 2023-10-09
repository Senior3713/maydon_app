import 'package:maydon_app/domain/models/stadium_model/latlng_model.dart';

class LocationStadium {
  String region;
  String district;
  String street;
  LatLng latLng;

  LocationStadium({
    required this.region,
    required this.district,
    required this.street,
    required this.latLng,
  });

  factory LocationStadium.fromJson(Map<String, Object?> json) {
    return LocationStadium(
      region: json["region"] as String,
      district: json["district"] as String,
      street: json["street"] as String,
      latLng: LatLng.fromJson(json["latlng"] as Map<String, Object?>),
    );
  }
}
