
// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.username,
    required this.password,
    required this.deviceIdentifier,
    required this.registerAsNewDevice,
    required this.otp,
    required this.channel,
  });

  String username;
  String password;
  String deviceIdentifier;
  bool registerAsNewDevice;
  String otp;
  String channel;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    username: json["username"],
    password: json["password"],
    deviceIdentifier: json["deviceIdentifier"],
    registerAsNewDevice: json["registerAsNewDevice"],
    otp: json["otp"],
    channel: json["channel"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
    "deviceIdentifier": deviceIdentifier,
    "registerAsNewDevice": registerAsNewDevice,
    "otp": otp,
    "channel": channel,
  };
}
