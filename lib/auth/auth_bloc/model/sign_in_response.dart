class SignInResponse {
  final String googleToken;
  final int imeiNumber;

  SignInResponse(
      {required this.googleToken,
        required this.imeiNumber,
        });

  factory SignInResponse.fromJson(Map<String, dynamic> json) {
    return SignInResponse(
      googleToken: json['googleToken'] as String,
      imeiNumber: json['imei_number'] as int,
    );
  }
}