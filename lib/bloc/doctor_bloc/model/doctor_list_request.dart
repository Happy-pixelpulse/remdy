class DoctorListRequest {
  final int id;
  final String userName;
  final String profileImageUrl;

  DoctorListRequest(
      { required this.id,
        required this.profileImageUrl,
        required this.userName,
      });

  factory DoctorListRequest.toJson(Map<String, dynamic> json) {
    return DoctorListRequest(
      profileImageUrl: json['profile_image_url'] as String,
      id: json['id'] as int,
      userName: json['user_name'] as String,
    );
  }
}