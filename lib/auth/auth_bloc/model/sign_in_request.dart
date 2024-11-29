
class SignInRequest {
  final String googleToken;
  final String imeiNumber;
  final double latitude;
  final double longitude;

  SignInRequest({
    required this.googleToken,
    required this.imeiNumber,
    this.latitude = 56.565654464,
    this.longitude = 78.645654564,
  });

  Map<String, dynamic> toJson() => <String, dynamic>{
        'googleToken': googleToken,
        'imei_number': imeiNumber,
        'latitude':latitude,
        'longitude':longitude
      };
}
