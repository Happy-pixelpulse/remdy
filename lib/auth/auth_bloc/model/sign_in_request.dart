

class SignInRequest {
  final String googleToken;
  final String imeiNumber;
  final String latitude;
  final String longitude;

  SignInRequest({
    required this.googleToken,
    required this.imeiNumber,
    required this.latitude ,
    required this.longitude ,
  });

  Map<String, dynamic> toJson() => <String, dynamic>{
        'googleToken': googleToken,
        'imei_number': imeiNumber,
        'latitude':latitude,
        'longitude':longitude
      };
}
