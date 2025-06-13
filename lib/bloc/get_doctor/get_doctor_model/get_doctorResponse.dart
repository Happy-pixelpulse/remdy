class GetDoctorResponse {
  final bool? success;
  final String? message;
  final Data? data;

  GetDoctorResponse(
      {required this.success, required this.message, required this.data});
  factory GetDoctorResponse.fromJson(Map<String, dynamic> json) {
    return GetDoctorResponse(
        message: json['message'] as String,
        success: json['success'] as bool,
        data: Data.fromJson(json['data'])
    );
  }
}

class Data {
  final String? id;
  final String? name;
  final String? profileImageUrl;
  final String? address;
  final int? rating;
  final int? patients;
  final int? ratingCounts;
  final String? experience;
  final String? quickFacts;
  final String? aboutDoctor;
  final String? specialities;
  final String? postgraduateTraining;
  final String? registrationHistory;
  final String? hospitalPrevilages;
  final String? insurancePlansAccepted;
  Data({required this.id,
    required this.name,
    required this.profileImageUrl,
    required this.address,
    required this.rating,
    required this.patients,
    required this.ratingCounts,
    required this.experience,
    required this.quickFacts,
    required this.aboutDoctor,
    required this.specialities,
    required this.postgraduateTraining,
    required this.registrationHistory,
    required this.hospitalPrevilages,
    required this.insurancePlansAccepted,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        id: json['id'] as String?,
        name: json['name'] as String?,
        profileImageUrl: json['profile_image_url'] as String?,
        address: json['address'] as String?,
        rating: json['rating'] as int?,
        patients: json['patients'] as int?,
        ratingCounts: json['rating_counts'] as int?,
        experience: json['experience'] as String?,
        quickFacts: json['quick_facts'] as String?,
      aboutDoctor: json['about_doctor'] as String?,
      specialities: json['specialities'] as String?,
      postgraduateTraining: json['postgraduate_training'] as String?,
      registrationHistory: json['registration_history'] as String?,
      hospitalPrevilages: json['hospital_previlages'] as String?,
      insurancePlansAccepted: json['insurance_plans_accepted'] as String?,
    );
  }
}
