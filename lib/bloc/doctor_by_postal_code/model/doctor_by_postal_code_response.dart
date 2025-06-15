class DoctorByPostalCodeResponse {
  final bool? success;
  final String? message;
  final Data? data;

  DoctorByPostalCodeResponse(
      {required this.success, required this.message, required this.data});

  factory DoctorByPostalCodeResponse.fromJson(Map<String, dynamic> json) {
    return DoctorByPostalCodeResponse(
        message: json['message'] as String,
        success: json['success'] as bool,
        data: Data.fromJson(json['data']));
  }
}

class Data {
  final List<Doctor>? doctor;
  final int? total;
  final int? size;
  final int? totalPages;

  Data(
      {required this.doctor,
      required this.total,
      required this.size,
      required this.totalPages});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      total: json['total'] as int,
      size: json['page'] as int,
      totalPages: json['size'] as int,
      doctor: (json['doctors'] as List)
          .map((doctors) => Doctor.fromJson(doctors))
          .toList(),
    );
  }
}

class Doctor {
  // Add relevant fields here if doctor object is not empty in the future
  // For now, it’s empty because the array is []
  Doctor();

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor();
  }
}
