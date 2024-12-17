class NearByHospitalResponseModel {
  final bool? success;
  final String? message;
  final List<Data?>? data;

  NearByHospitalResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory NearByHospitalResponseModel.fromJson(Map<String, dynamic> json) {
    return NearByHospitalResponseModel(
        message: json['message'] as String,
        success: json['success'] as bool,
        data: (json['data'] as List)
            .map((data) => Data.fromJson(data))
            .toList());
  }
}

class Data {
  final String? id;
  final String? name;
  final String? address;
  final String? hospitalImage;
  final int? reviewsCount;
  final int? travelTime;
  final String? averageRating;
  final String? distance;

  Data({
    required this.id,
    required this.name,
    required this.address,
    required this.hospitalImage,
    required this.reviewsCount,
    required this.travelTime,
    required this.averageRating,
    required this.distance,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      hospitalImage: json['hospital_image'] as String?,
      reviewsCount: json['reviews_count'] as int?,
      travelTime: json['travel_time'] as int?,
      averageRating: json['average_rating'] as String?,
      distance: json['distance'] as String?,
    );
  }
}
