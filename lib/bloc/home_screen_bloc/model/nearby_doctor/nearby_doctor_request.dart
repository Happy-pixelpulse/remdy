class NearByDoctorRequest {
  final String? latitude;
  final String? longitude;

  NearByDoctorRequest(
      {required this.latitude,
        required this.longitude,
       });

  Map<String, dynamic> toJson() => <String, dynamic>{
    'latitude': latitude,
    'longitude': longitude,
  };
}