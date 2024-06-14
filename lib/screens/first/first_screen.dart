import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:suitmedia_mobile_flutter/controllers/palindrome_controller.dart';
import 'package:suitmedia_mobile_flutter/controllers/user_controller.dart';
import 'package:suitmedia_mobile_flutter/screens/first/widgets/background_first_widget.dart';
import 'package:suitmedia_mobile_flutter/screens/first/widgets/next_button_first_widget.dart';
import 'package:suitmedia_mobile_flutter/screens/first/widgets/palindrome_button_first_widget.dart';
import 'package:suitmedia_mobile_flutter/screens/first/widgets/profile_first_widget.dart';
import 'package:suitmedia_mobile_flutter/widgets/global_text_field_widget.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PalindromeController palindromeController = Get.put(PalindromeController());
    final UserController userController = Get.put(UserController());
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundFirstWidget(),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ProfileFirstWidget(),
                  const SizedBox(height: 50),
                  GlobalTextFieldWidget(
                    controller: userController.usernameInputController,
                    hintText: 'Name',
                  ),
                  const SizedBox(height: 25),
                  GlobalTextFieldWidget(
                    controller: palindromeController.palindromeInputController,
                    hintText: 'Palindrome',
                  ),
                  const SizedBox(height: 45),
                  const NextButtonFirstWidget(),
                  const SizedBox(height: 25),
                  const PalindromeButtonFirstWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
