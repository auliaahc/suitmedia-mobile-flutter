import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PalindromeController extends GetxController {
  TextEditingController palindromeInputController = TextEditingController();
  RxnString palindrome = RxnString();
  RxnString result = RxnString();

  void checkPalindrome() {
    palindrome.value = palindromeInputController.text;
    String formattedText = palindrome.value!.toLowerCase().split('').reversed.join();
    if (palindrome.value == formattedText) {
      result.value = 'Is Palindrome';
    } else {
      result.value = 'Not Palindrome';
    }
  }
}