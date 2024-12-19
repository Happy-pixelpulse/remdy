class DoctorDetailResponse {
  final bool? success;
  final String? message;
  final Data? data;

  DoctorDetailResponse(
      {required this.success, required this.message, required this.data});

  factory DoctorDetailResponse.fromJson(Map<String, dynamic> json) {
    return DoctorDetailResponse(
        message: json['message'] as String,
        success: json['success'] as bool,
        data: Data.fromJson(json['data']));
  }
}

class Data {
  final List<Doctor?> doctor;
  final int? one;
  final int? patientRequestCount;
  final int? totalReviews;
  final int? averageRating;

  Data({
    required this.doctor,
    required this.one,
    required this.patientRequestCount,
    required this.totalReviews,
    required this.averageRating,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      doctor:
          (json['0'] as List).map((doctor) => Doctor.fromJson(doctor)).toList(),
      one: json['1'] as int?,
      patientRequestCount: json['patientRequestCount'] as int?,
      totalReviews: json['totalReviews'] as int?,
      averageRating: json['averageRating'] as int?,
    );
  }
}

class Doctor {
  final String? id;
  final String? userRole;
  final String? userName;
  final String? uuid;
  final String? profileImageUrl;
  final String? userEmail;
  final String? userMobile;
  final String? userPassword;
  final String? loggedInWith;
  final bool? isVerified;
  final bool? active;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt;
  final DoctorDetails? doctorDetails;
  final List<Reviews?> reviews;
  final List<dynamic>? patientRequest;

  Doctor({
    required this.id,
    required this.userRole,
    required this.userName,
    required this.uuid,
    required this.profileImageUrl,
    required this.userEmail,
    required this.userMobile,
    required this.userPassword,
    required this.loggedInWith,
    required this.isVerified,
    required this.active,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.doctorDetails,
    required this.reviews,
    required this.patientRequest,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
        id: json['id'] as String?,
        userRole: json['user_role'] as String?,
        userName: json['user_name'] as String?,
        uuid: json['uuid'] as String?,
        profileImageUrl: json['profile_image_url'] as String?,
        userEmail: json['user_email'] as String?,
        userMobile: json['user_mobile '] as String?,
        userPassword: json['user_password '] as String?,
        loggedInWith: json['logged_in_with'] as String?,
        isVerified: json['is_verified'] as bool?,
        active: json['active'] as bool?,
        createdAt: json['created_at'] as String?,
        updatedAt: json['updated_at'] as String?,
        deletedAt: json['deleted_at'] as String?,
        doctorDetails: DoctorDetails.fromJson(json['doctor_details']),
        patientRequest: json['patient_request'],
        reviews: (json['reviews'] as List)
            .map((reviews) => Reviews.fromJson(reviews))
            .toList());
  }
}

class Reviews {
  final String? id;
  final String? comment;
  final int? rating;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt;

  Reviews({
    required this.id,
    required this.comment,
    required this.rating,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Reviews.fromJson(Map<String, dynamic> json) {
    return Reviews(
      id: json['id'] as String?,
      comment: json['comment'] as String?,
      rating: json['rating'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
    );
  }
}

class DoctorDetails {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? doctorFullName;
  final String? address;
  final double? latitude;
  final double? longitude;
  final Location? location;
  final String? about;
  final List<int?>? languageIds;
  final int? yearsOfExperience;
  final List<Speciality?> speciality;
  final List<PostQualifications?> postQualifications;
  final List<RegistrationHistory?> registrationHistory;
  final List<String?>? hospitalPrivilages;
  final List<WorkingTime?> workingTime;
  final List<String?>? insuracePlanAccepted;
  final bool? isDoctorAvailable;
  final List<String?>? quickFacts;
  final String? postalCode;
  final String? workStartTime;
  final String? workEndTime;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt;
  final Gender? gender;
  final City? city;
  final State? state;
  final Country? country;

  DoctorDetails({
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
    required this.workStartTime,
    required this.workEndTime,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.gender,
    required this.city,
    required this.state,
    required this.country,
  });

  factory DoctorDetails.fromJson(Map<String, dynamic> json) {
    return DoctorDetails(
      id: json['id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      doctorFullName: json['doctor_full_name'] as String?,
      address: json['address'] as String?,
      latitude: json['latitude'] as double?,
      longitude: json['longitude'] as double?,
      location:Location.fromJson(json['location']),
      about: json['about'] as String?,
      languageIds: json['language_ids'].cast<int>(),
      yearsOfExperience: json['years_of_experience'] as int?,
      speciality: (json['speciality'] as List)
          .map((speciality) => Speciality.fromJson(speciality))
          .toList(),
      postQualifications: (json['post_qualifications'] as List)
          .map((postQualifications) =>
              PostQualifications.fromJson(postQualifications))
          .toList(),
      registrationHistory: (json['registration_history'] as List)
          .map((registrationHistory) =>
              RegistrationHistory.fromJson(registrationHistory))
          .toList(),
      hospitalPrivilages: json['hospital_privilages'].cast<String>(),
      workingTime: (json['working_time'] as List)
          .map((workingTime) => WorkingTime.fromJson(workingTime))
          .toList(),
      insuracePlanAccepted: json['insurace_plan_accepted'].cast<String>(),
      isDoctorAvailable: json['is_doctor_available'] as bool?,
      quickFacts: json['quick_facts'] .cast<String>(),
      postalCode: json['postal_code'] as String?,
      workStartTime: json['work_start_time'] as String?,
      workEndTime: json['work_end_time'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      gender: Gender.fromJson(json['gender']),
      city: City.fromJson(json['city']),
      state: State.fromJson(json['state']),
      country: Country.fromJson(json['country']),
    );
  }
}

class Location {
  final String? type;
  final List<double?>? coordinates;
  Location({required this.type, required this.coordinates});
  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      type: json['type'] as String,
      coordinates: (json['coordinates'].cast<double>()),
    );
  }
}

class Speciality {
  final String? type;
  final String? issuedOn;
  final String? speciality;

  Speciality({
    required this.type,
    required this.issuedOn,
    required this.speciality,
  });

  factory Speciality.fromJson(Map<String, dynamic> json) {
    return Speciality(
      type: json['type'] as String,
      issuedOn: json['issued_on'] as String,
      speciality: json['speciality'] as String,
    );
  }
}

class PostQualifications {
  final String? avp;
  final String? issuedOn;
  final String? university;

  PostQualifications({
    required this.avp,
    required this.issuedOn,
    required this.university,
  });

  factory PostQualifications.fromJson(Map<String, dynamic> json) {
    return PostQualifications(
      avp: json['avp'] as String?,
      issuedOn: json['issued_on'] as String?,
      university: json['university'] as String?,
    );
  }
}

class RegistrationHistory {
  final String? avp;
  final String? issuedOn;
  final String? university;

  RegistrationHistory({
    required this.avp,
    required this.issuedOn,
    required this.university,
  });

  factory RegistrationHistory.fromJson(Map<String, dynamic> json) {
    return RegistrationHistory(
      avp: json['avp'] as String?,
      issuedOn: json['issued_on'] as String?,
      university: json['university'] as String?,
    );
  }
}

class WorkingTime {
  final String? day;
  final bool? status;
  final String? openTime;
  final String? closedTime;

  WorkingTime({
    required this.day,
    required this.status,
    required this.openTime,
    required this.closedTime,
  });

  factory WorkingTime.fromJson(Map<String, dynamic> json) {
    return WorkingTime(
      day: json['day'] as String?,
      status: json['status'] as bool?,
      openTime: json['open_time'] as String?,
      closedTime: json['closed_time'] as String?,
    );
  }
}

class Gender {
  final String? id;
  final String? gender;
  final String? createdAt;
  final String? updatedAt;
  final Null? deletedAt;

  Gender({
    required this.id,
    required this.gender,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Gender.fromJson(Map<String, dynamic> json) {
    return Gender(
      id: json['id'] as String,
      gender: json['gender'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      deletedAt: json['deleted_at'],
    );
  }
}

class City {
  final String? id;
  final String? city;
  final String? createdAt;
  final String? updatedAt;
  final Null? deletedAt;

  City({
    required this.id,
    required this.city,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'] as String,
      city: json['city'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      deletedAt: json['deleted_at'],
    );
  }
}

class State {
  final String? id;
  final String? name;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt;

  State({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory State.fromJson(Map<String, dynamic> json) {
    return State(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      deletedAt: json['deleted_at'],
    );
  }
}

class Country {
  final String? id;
  final String? name;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt;

  Country({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      deletedAt: json['deleted_at'] ,
    );
  }
}
