class User3 {
  String? email;
  String? password;


  User3(this.email, this.password);

  User3.fromJson(Map<String, dynamic> json)
      :email = json['email'],
        password = json['password'];

  Map<String, dynamic> toJson() => {
    'email': email,
    'password': password,
  };
}