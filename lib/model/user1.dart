class User1 {
  String? username;
  String? password;

  User1(this.username, this.password);

  User1.fromJson(Map<String, dynamic> json)
      :username = json['username'],
        password = json['password'];

  Map<String, dynamic> toJson() => {
    'username': username,
    'password': password,
  };
}