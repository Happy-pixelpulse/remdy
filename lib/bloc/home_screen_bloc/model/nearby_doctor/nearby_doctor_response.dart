class NearByDoctorResponse {
  final bool? success;
  final String? message;
  final Data? data;

  NearByDoctorResponse({
    required this.success,
    required this.message,
    required this.data,
  });

  factory NearByDoctorResponse.fromJson(Map<String, dynamic> json) {
    return NearByDoctorResponse(
        message: json['message'] as String,
        success: json['success'] as bool,
        data: Data.fromJson(json['data'])
    );
  }
}

class Data {
  final int? total;
  final int? page;
  final int? size;
  final int? totalPages;
  final List <Doctors?> doctor;

  Data({
    required this.total,
    required this.page,
    required this.size,
    required this.totalPages,
    required this.doctor,
  });

  // List<Doctors> parseDoctors(dynamic responseBody) {
  //   final parsed =
  //   (responseBody as List).cast<Map<String, dynamic>>();
  //   return parsed.map<Doctors>((json) => Doctors.fromJson(json)).toList();
  // }
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      total: json['latitude'] as int?,
      page: json['longitude'] as int?,
      size: json['city'] as int?,
      totalPages: json['address'] as int?,
      doctor:(json['doctors'] as List)
          .map((doctor) => Doctors.fromJson(doctor))
          .toList()
    );
  }
}

class Doctors {
  final String? id;
  final String? firstNameId;
  final String? lastName;
  final String? doctorFullName;
  final String? profileImageUrl;
  final String? doctorSpeciality;
  final int? reviewsCount;
  final int? averageRating;

  Doctors({
    required this.id,
    required this.firstNameId,
    required this.lastName,
    required this.doctorFullName,
    required this.profileImageUrl,
    required this.doctorSpeciality,
    required this.reviewsCount,
    required this.averageRating,
  });

  factory Doctors.fromJson(Map<String, dynamic> json) {
    return Doctors(
      id: json['id'] as String?,
      firstNameId: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      doctorFullName: json['doctor_full_name'] as String?,
      profileImageUrl: json['profile_image_url'] as String?,
      doctorSpeciality: json['doctor_speciality'] as String?,
      reviewsCount: json['reviewsCount'] as int?,
      averageRating: json['average_rating'] as int?,
    );
  }
}
// class NearByDoctorResponse {
//   final bool? success;
//   final String? message;
//   final Data? data;
//
//   NearByDoctorResponse({
//     required this.success,
//     required this.message,
//     required this.data,
//   });
//
//   factory NearByDoctorResponse.fromJson(Map<String, dynamic> json) {
//     return NearByDoctorResponse(
//       success: json['success'] as bool?,
//       message: json['message'] as String?,
//       data: json['data'] != null ? Data.fromJson(json['data']) : null,
//     );
//   }
// }
//
// class Data {
//   final int? total;
//   final int? page;
//   final int? size;
//   final int? totalPages;
//   final List<Doctors>? doctors;
//
//   Data({
//     required this.total,
//     required this.page,
//     required this.size,
//     required this.totalPages,
//     required this.doctors,
//   });
//
//   factory Data.fromJson(Map<String, dynamic> json) {
//     return Data(
//       total: json['total'] as int?,
//       page: json['page'] as int?,
//       size: json['size'] as int?,
//       totalPages: json['totalPages'] as int?,
//       doctors: json['doctors'] != null
//           ? (json['doctors'] as List)
//           .map((doctor) => Doctors.fromJson(doctor))
//           .toList()
//           : null,
//     );
//   }
// }
//
// class Doctors {
//   final String? id;
//   final String? firstNameId;
//   final String? lastName;
//   final String? doctorFullName;
//   final String? profileImageUrl;
//   final String? doctorSpeciality;
//   final int? reviewsCount;
//   final int? averageRating;
//
//   Doctors({
//     required this.id,
//     required this.firstNameId,
//     required this.lastName,
//     required this.doctorFullName,
//     required this.profileImageUrl,
//     required this.doctorSpeciality,
//     required this.reviewsCount,
//     required this.averageRating,
//   });
//
//   factory Doctors.fromJson(Map<String, dynamic> json) {
//     return Doctors(
//       id: json['id'] as String?,
//       firstNameId: json['first_name'] as String?,
//       lastName: json['last_name'] as String?,
//       doctorFullName: json['doctor_full_name'] as String?,
//       profileImageUrl: json['profile_image_url'] as String?,
//       doctorSpeciality: json['doctor_speciality'] as String?,
//       reviewsCount: json['reviewsCount'] as int?,
//       averageRating: json['average_rating'] as int?,
//     );
//   }
// }
