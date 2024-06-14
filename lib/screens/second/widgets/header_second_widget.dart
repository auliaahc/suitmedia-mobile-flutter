import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suitmedia_mobile_flutter/controllers/user_controller.dart';

class HeaderSecondWidget extends StatelessWidget {
  const HeaderSecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.find();
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Color(0XFF04021D),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Obx(
              () {
                return Text(
                  userController.username.value!,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Color(0XFF04021D),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}