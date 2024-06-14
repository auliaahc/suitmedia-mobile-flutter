import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PalindromeController extends GetxController {
  TextEditingController palindromeInputController = TextEditingController();
  RxnString palindrome = RxnString();
  RxnString result = RxnString();

  void checkPalindrome(BuildContext context) {
    if (palindromeInputController.text != '') {
      palindrome.value = palindromeInputController.text;
      String formattedText = palindrome.value!.toLowerCase().split('').reversed.join();
      if (palindrome.value == formattedText) {
        result.value = 'Is Palindrome';
      } else {
        result.value = 'Not Palindrome';
      }
    } else {
      result.value = 'Please fill the Palindrome Input';
    }
    showPlatformDialog(
      context: context,
      builder: (context) => BasicDialogAlert(
        title: Text(
          "Palindrome Result",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Color(0XFF04021D),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        content: Text(
          result.value!,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Color(0XFF04021D),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        actions: [
          BasicDialogAction(
            title: Text(
              "OK",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF2B637B),
                ),
              ),
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
