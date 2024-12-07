class PatientLocationRequest {
  final String latitude;
  final String longitude;
  final String address;
  final String city;
  final int userId;

  PatientLocationRequest(
      {required this.latitude,
      required this.longitude,
      required this.address,
      required this.city,
      required this.userId});

  Map<String, dynamic> toJson() => <String, dynamic>{
        'latitude': latitude,
        'longitude': longitude,
        'address': address,
        'city': city,
        'userId': userId
      };
}
