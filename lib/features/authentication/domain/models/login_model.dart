
// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({

    required this.deviceIdentifier,
    required this.registerAsNewDevice,
    required this.otp,
    required this.channel,
  });

  String deviceIdentifier;
  bool registerAsNewDevice;
  String otp;
  String channel;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    deviceIdentifier: json["deviceIdentifier"],
    registerAsNewDevice: json["registerAsNewDevice"],
    otp: json["otp"],
    channel: json["channel"],
  );

  Map<String, dynamic> toJson() => {
    "deviceIdentifier": deviceIdentifier,
    "registerAsNewDevice": registerAsNewDevice,
    "otp": otp,
    "channel": channel,
  };
}
