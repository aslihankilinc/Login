// -- user.dart --

class User {
  int no;
  String name;
  String surName;
  DateTime? birthDate;
  String? phone;
  DateTime? createdDate;
  bool isDeleted;
  String? password;

  User(this.no,this.name,this.surName,this.birthDate,this.phone,this.createdDate,this.isDeleted,this.password,);

  factory User.fromJson(Map<String, dynamic> json) {
    return User(json["No"],json["Name"],json["SurName"],json["BirthDate"],
              json["Phone"],json["CreatedDate"],json["IsDeleted"],json["Password"]);
  }
}
