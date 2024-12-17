class NearByHospitalRequestModel {
  final String latitude;
  final String longitude;

  NearByHospitalRequestModel(
      {required this.latitude,
        required this.longitude,
      });

  Map<String, dynamic> toJson() => <String, dynamic>{
    'latitude': latitude,
    'longitude': longitude,
  };
}