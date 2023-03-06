class User2 {
  String? username;
  String? email;
  String? number;
  String? password;


  User2(this.username, this.email, this.number, this.password);

  User2.fromJson(Map<String, dynamic> json)
      :username = json['username'],
        email = json['email'],
        number = json['number'],
        password = json['password'];

  Map<String, dynamic> toJson() => {
    'username': username,
    'email': email,
    'number': number,
    'password': password,
  };
}