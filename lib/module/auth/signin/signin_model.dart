class SignInModel {
  String? email;
  String? password;

  SignInModel({
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}
