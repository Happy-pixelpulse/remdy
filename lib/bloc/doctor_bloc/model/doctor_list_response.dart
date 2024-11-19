class DoctorListResponse {
  final int id;
  final String userName;
  final String profileImageUrl;

  DoctorListResponse(
      {required this.id,
        required this.profileImageUrl,
        required this.userName,
        });

  factory DoctorListResponse.fromJson(Map<String, dynamic> json) {
    return DoctorListResponse(
      profileImageUrl: json['profile_image_url'] as String,
      id: json['id'] as int,
      userName: json['user_name'] as String,
    );
  }
}