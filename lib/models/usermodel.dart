import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.name,
    this.mobile,
    this.address,
  });

  String name;
  String mobile;
  String address;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        mobile: json["mobile"],
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "mobile": mobile,
        "address": address,
      };
}
