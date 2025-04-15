class UseProfileResponse {
  final bool? success;
  final String? message;
  final Data? data;

  UseProfileResponse(
      {required this.message, required this.success, required this.data});

  factory UseProfileResponse.fromJson(Map<String, dynamic> json) {
    return UseProfileResponse(
        message: json['message'] as String,
        success: json['success'] as bool,
        data: Data.fromJson(json['data']));
  }
}

class Data {
  final String? name;
  final String? userRole;
  final String? gender;
  final String? profileImageUrl;
  final String? userEmail;
  final String? userMobile;


  Data(
      {required this.name,
        required this.userRole,
        required this.gender,
        required this.profileImageUrl,
        required this.userEmail,
        required this.userMobile,
        });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        name: json['name'] as String?,
        userRole: json['user_role'] as String?,
        gender: json['gender'] as String?,
        profileImageUrl: json['profile_image_url'] as String?,
        userEmail: json['user_email'] as String?,
        userMobile: json['user_mobile'] as String?,
      );
  }
}
