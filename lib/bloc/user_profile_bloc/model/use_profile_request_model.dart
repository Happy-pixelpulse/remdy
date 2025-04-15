class UseProfileRequest{
  final String? userId;

  UseProfileRequest(
      {required this.userId});

  Map<String, dynamic> toJson() => <String, dynamic>{
    'userId': userId
  };
}