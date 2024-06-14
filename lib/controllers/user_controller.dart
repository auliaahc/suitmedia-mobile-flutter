import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_mobile_flutter/controllers/palindrome_controller.dart';
import 'package:suitmedia_mobile_flutter/models/user_contact_model.dart';
import 'package:suitmedia_mobile_flutter/screens/second/second_screen.dart';
import 'package:suitmedia_mobile_flutter/services/user_contact_service.dart';

class UserController extends GetxController {
  final PalindromeController palindromeController = Get.put(PalindromeController());
  TextEditingController usernameInputController = TextEditingController();
  RxnString username = RxnString();
  Rxn<UserContactModel> contactData = Rxn<UserContactModel>();
  RxBool isLoadingFetchContact = RxBool(false);
  RxString selectedUsername = RxString('Selected User Name');

  Future<void> fetchUserContact() async {
    isLoadingFetchContact.value = true;
    try {
      final response = await UserContactService().getUserContact();
      contactData.value = response;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
      isLoadingFetchContact.value = false;
    }
  }

  void selectContact(String firstName, String lastName) {
    selectedUsername.value = '$firstName $lastName';
  }

  void login() {
    if(usernameInputController.text != '') {
      username.value = usernameInputController.text;
    } else {
      username.value = 'Guest';
    }
    usernameInputController.clear();
    palindromeController.palindromeInputController.clear();
    Get.to(() => const SecondScreen());
  }
}