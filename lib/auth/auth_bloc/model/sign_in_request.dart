class SignInRequest {
  final String googleToken;
  final int imeiNumber;

  SignInRequest(
      {required this.googleToken,
        required this.imeiNumber,
      });

  Map<String,dynamic> toJson() => {
    'googleToken': googleToken,
    'imei_number': imeiNumber,
  };
}