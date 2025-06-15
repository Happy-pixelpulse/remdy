class PatientResponse {
  final bool? success;
  final String? message;
  final Data? data;

  PatientResponse({
    required this.success,
    required this.message,
    required this.data,
  });

  factory PatientResponse.fromJson(Map<String, dynamic> json) {
    return PatientResponse(
        message: json['message'] as String,
        success: json['success'] as bool,
        data: Data.fromJson(json['data']));
  }
}
//DoctorByPostalCodeResponse
class Data {
  final int? id;
  final String? fullName;
  final String? patientEmail;
  final String? phoneNumber;
  final List<String>? address;
  final String? pinCode;
  final String? dob;
  final String? hadFamilyDoctor;
  final String? doctorName;
  final Doctor? doctor;
  final String? sentTo;
  final String? requestStatus;
  final String? gender;
  final String? city;
  final String? province;
  final int? userId;
  final String? createdAt;
  final String? updatedAt;

  Data({
    required this.id,
    required this.fullName,
    required this.patientEmail,
    required this.phoneNumber,
    required this.address,
    required this.pinCode,
    required this.dob,
    required this.hadFamilyDoctor,
    required this.doctorName,
    required this.doctor,
    required this.sentTo,
    required this.requestStatus,
    required this.gender,
    required this.city,
    required this.province,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'] as int?,
      fullName: json['full_name'] as String?,
      patientEmail: json['patient_email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      address: json['address'].cast<String>(),
      pinCode: json['pincode'] as String?,
      dob: json['dob'] as String?,
      hadFamilyDoctor: json['had_family_doctor'] as String?,
      doctorName: json['doctor_name'] as String?,
      sentTo: json['sent_to'] as String?,
      requestStatus: json['request_status'] as String?,
      gender: json['gender'] as String?,
      city: json['city'] as String?,
      province: json['province'] as String?,
      userId: json['user_id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      doctor: Doctor.fromJson(json['doctor']),
    );
  }
}

class Doctor {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? doctorFullName;
  final String? address;
  final String? latitude;
  final String? longitude;
  final String? location;
  final String? about;
  final String? languageIds;
  final String? yearsOfExperience;
  final String? speciality;
  final String? postQualifications;
  final String? registrationHistory;
  final String? hospitalPrivilages;
  final String? workingTime;
  final String? insuracePlanAccepted;
  final bool? isDoctorAvailable;
  final String? quickFacts;
  final String? postalCode;
  final String? workStarTime;
  final String? workEndTime;
  final String? acceptingPatients;
  final String? doctorStatus;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt;

  Doctor({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.doctorFullName,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.location,
    required this.about,
    required this.languageIds,
    required this.yearsOfExperience,
    required this.speciality,
    required this.postQualifications,
    required this.registrationHistory,
    required this.hospitalPrivilages,
    required this.workingTime,
    required this.insuracePlanAccepted,
    required this.isDoctorAvailable,
    required this.quickFacts,
    required this.postalCode,
    required this.workStarTime,
    required this.workEndTime,
    required this.acceptingPatients,
    required this.doctorStatus,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      id: json['id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      doctorFullName: json['doctor_full_name'] as String?,
      address: json['address'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      location: json['location'] as String?,
      about: json['about'] as String?,
      languageIds: json['language_ids'] as String?,
      yearsOfExperience: json['years_of_experience'] as String?,
      speciality: json['speciality'] as String?,
      postQualifications: json['post_qualifications'] as String?,
      registrationHistory: json['registration_history'] as String?,
      hospitalPrivilages: json['hospital_privilages'] as String?,
      workingTime: json['working_time'] as String?,
      insuracePlanAccepted: json['insurace_plan_accepted'] as String?,
      isDoctorAvailable: json['is_doctor_available'] as bool?,
      quickFacts: json['quick_facts'] as String?,
      postalCode: json['postal_code'] as String?,
      workStarTime: json['work_start_time'] as String?,
      workEndTime: json['work_end_time'] as String?,
      acceptingPatients: json['acceptingPatients'] as String?,
      doctorStatus: json['doctor_status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
    );
  }
}
