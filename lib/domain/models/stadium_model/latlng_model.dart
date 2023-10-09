class LatLng {
  double lat;
  double lng;

  LatLng({
    required this.lat,
    required this.lng,
  });

  factory LatLng.fromJson(Map<String, Object?> json) {
    return LatLng(
      lat: json["lat"] as double,
      lng: json["lng"] as double,
    );
  }
}
