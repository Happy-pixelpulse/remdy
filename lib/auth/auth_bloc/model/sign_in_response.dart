class SignInResponse {
  final String? message;
  final String? token;
  final User? user;

  SignInResponse({
    required this.message,
    required this.token,
    required this.user,
  });

  factory SignInResponse.fromJson(Map<String, dynamic> json) {
    return SignInResponse(
        message: json['message'] as String,
        token: json['token'] as String,
        user: User.fromJson(json['user']));
  }
}

class User {
  final String? id;
  final String? email;
  final String? name;
  final String? profilePicture;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.profilePicture});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      profilePicture: json['profile_picture'] as String?,
    );
  }
}
