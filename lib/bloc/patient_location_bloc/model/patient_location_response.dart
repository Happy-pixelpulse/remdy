class PatientLocationResponse {
  final bool? success;
  final String? message;
  final Data? data;

  PatientLocationResponse(
      {required this.message, required this.success, required this.data});

  factory PatientLocationResponse.fromJson(Map<String, dynamic> json) {
    return PatientLocationResponse(
      message: json['message'] as String,
      success: json['success'] as bool,
        data: Data.fromJson(json['data'])
    );
  }
}

class Data {
  final String latitude;
  final String longitude;
  final String city;
  final String address;
  final int user;
  final String id;
  final String createdAt;
  final String updatedAt;
  final String deletedAt;

  Data(
      {required this.latitude,
      required this.longitude,
      required this.city,
      required this.address,
      required this.user,
      required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.deletedAt});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        latitude: json['latitude'] as String,
        longitude: json['longitude'] as String,
        city: json['city'] as String,
        address: json['address'] as String,
        user: json['user'] as int,
        id: json['id'] as String,
        createdAt: json['created_at'] as String,
        updatedAt: json['updated_at'] as String,
        deletedAt: json['deleted_at'] as String);
  }
}
