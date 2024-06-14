import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suitmedia_mobile_flutter/controllers/user_controller.dart';

class SelectedUserSecondWidget extends StatelessWidget {
  const SelectedUserSecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.find();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () {
            return Text(
              userController.selectedUsername.value,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Color(0XFF04021D),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
