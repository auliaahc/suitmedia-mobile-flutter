import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:suitmedia_mobile_flutter/controllers/palindrome_controller.dart';
import 'package:suitmedia_mobile_flutter/widgets/global_button_widget.dart';

class PalindromeButtonFirstWidget extends StatelessWidget {
  const PalindromeButtonFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final PalindromeController palindromeController = Get.find();
    return GlobalButtonWidget(
      onTap: () => palindromeController.checkPalindrome(),
      label: 'Palindrome',
    );
  }
}
