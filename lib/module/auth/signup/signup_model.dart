class SignUpModel {
  String? fname;
  String? lname;
  String? email;
  String? password;
  String? contact;

  SignUpModel({
    this.fname,
    this.lname,
    this.email,
    this.password,
    this.contact,
  });

  Map<String, dynamic> toJson() {
    return {
      'fname': fname,
      'lname': lname,
      'email': email,
      'password': password,
      'contact': contact,
    };
  }
}
