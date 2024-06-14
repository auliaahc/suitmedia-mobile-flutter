import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_mobile_flutter/controllers/palindrome_controller.dart';
import 'package:suitmedia_mobile_flutter/screens/second/second_screen.dart';

class UserController extends GetxController {
  final PalindromeController palindromeController = Get.find();
  TextEditingController usernameInputController = TextEditingController();
  RxnString username = RxnString();

  void login() {
    username.value = usernameInputController.text;
    usernameInputController.clear();
    palindromeController.palindromeInputController.clear();
    Get.to(() => const SecondScreen());
  }
}