class User4 {
  String? email;
  String? number;
  String? address;


  User4(this.email, this.number, this.address);

  User4.fromJson(Map<String, dynamic> json)
      :email = json['email'],
        number = json['number'],
        address = json['address']  ;

  Map<String, dynamic> toJson() => {
    'email': email,
    'number': number,
    'address': address,
  };
}