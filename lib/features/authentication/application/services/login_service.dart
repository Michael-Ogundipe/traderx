import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:traderx/constants/colors.dart';
import 'package:traderx/features/%20main_screen/presentation/widgets/home_view.dart';
import 'package:traderx/features/authentication/domain/models/login_model.dart';
import 'package:traderx/features/authentication/presentation/controllers/login_controller.dart';
import 'package:traderx/features/authentication/presentation/widgets/login_view.dart';
import 'package:traderx/globals.dart';

class LoginService extends StateNotifier<bool> {
  LoginService() : super(false);

  Future<LoginModel> signInClients(String email, String password) async {
    try {
      //loadingState == true;
      state = true;

      const String apiUrl =
          "https://core.development.4traderx.com/login";

      Map<String, String> headers = {
        'Content-Type': 'application/json;charset=UTF-8',
        'Charset': 'utf-8'
      };

      final response = await http.post(
        Uri.parse(apiUrl),
        headers: headers,
        body: jsonEncode(
          {
            "email": email,
            "password": password,
          },
        ),
      );

      if(response.body.isNotEmpty) {
        json.decode(response.body);
        return LoginModel.fromJson(json.decode(response.body));
      }else{
        navigatorKey.currentState!.pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) =>  HomeView()),
                (Route<dynamic> route) => false);

        const snackBar = SnackBar(
          content: Text(
            'Login successful but response body is empty',
          ),
          backgroundColor: kRed,
        );
        snackBarKey.currentState?.showSnackBar(snackBar);
        return LoginModel.fromJson(json.decode(response.body));
      }

      if (response.statusCode == 200) {
        navigatorKey.currentState!.pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) =>  LoginView(LoginController())),
                (Route<dynamic> route) => false);

        //loadingState == false;
        state = false;

        return LoginModel.fromJson(json.decode(response.body));
      } else {
        // loading state == false
        state = false;

        final responseString = json.decode(response.body);
        final snackBar = SnackBar(
          content: Text(
            'An error occurred: ${responseString.toString()}',
          ),
          backgroundColor: kRed,
        );
        snackBarKey.currentState?.showSnackBar(snackBar);

        return LoginModel.fromJson(json.decode(response.body));
      }
    } on SocketException catch (e) {
      state = false;
      final snackBar = SnackBar(
        content: Text(
          'An error occurred: ${e.message}',
        ),
        backgroundColor: kRed,
      );
      print(e.message);
      snackBarKey.currentState?.showSnackBar(snackBar);
      return LoginModel.fromJson(json.decode(e.message));
    }
  }
}