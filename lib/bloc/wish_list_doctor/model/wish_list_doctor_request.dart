class WishListDoctorRequest {
  final int? userId;
  final int? doctorId;
  final String? type;

  WishListDoctorRequest(
      {required this.userId, required this.doctorId, required this.type});

  Map<String, dynamic> toJson() => <String, dynamic>{
        'userId': userId,
        'doctorId': doctorId,
        'type': type,
      };
}
