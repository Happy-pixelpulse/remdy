class WishListDoctorResponse {
  final bool? success;
  final String? message;
  final Data? data;

  WishListDoctorResponse(
      {required this.success, required this.message, required this.data});

  factory WishListDoctorResponse.fromJson(Map<String, dynamic> json) {
    return WishListDoctorResponse(
        message: json['message'] as String,
        success: json['success'] as bool,
        data: Data.fromJson(json['data']));
  }
}

class Data {
  final String? wishlistStatus;
  final int? doctor;
  final int? user;
  final String? id;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt;

  Data({
    required this.wishlistStatus,
    required this.doctor,
    required this.user,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      wishlistStatus: json['wishlist_status'] as String,
      doctor: json['doctor'] as int,
      user: json['user'] as int,
      id: json['id'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      deletedAt: json['deleted_at'] as String,
    );
  }
}
