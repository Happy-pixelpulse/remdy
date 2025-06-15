class DoctorByPostalCodeRequest {
  final String? area;
  final String? building;
  final String? postalCode;

  DoctorByPostalCodeRequest(
      {required this.area, required this.building, required this.postalCode});

  Map<String, dynamic> toJson() => <String, dynamic>{
    'area': area,
    'building': building,
    'postal_code': postalCode,
  };
}
