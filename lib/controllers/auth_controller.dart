import 'package:auth_demo/services/api_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final ApiService apiService = ApiService();

  TextEditingController loginEmailEditingController = TextEditingController();
  TextEditingController loginPasswordEditingController =
      TextEditingController();
  TextEditingController signupNameEditingController = TextEditingController();
  TextEditingController signupEmailEditingController = TextEditingController();
  TextEditingController signupPasswordEditingController =
      TextEditingController();
  TextEditingController signupConfirmPasswordEditingController =
      TextEditingController();

  Future<bool> login() async {
    try {
      final response = await apiService.login({
        'email': loginEmailEditingController.text,
        'password': loginPasswordEditingController.text,
      });
      print(response);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<void> signup() async {
    try {
      final response = await apiService.registration({
        'name': signupNameEditingController.text,
        'email': signupEmailEditingController.text,
        'password': signupPasswordEditingController.text,
        'password_confirmation': signupConfirmPasswordEditingController.text,
      });
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
