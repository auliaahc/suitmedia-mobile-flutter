import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suitmedia_mobile_flutter/controllers/user_controller.dart';

class ItemContactThirdWidget extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
  final String image;
  const ItemContactThirdWidget({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.find();
    return GestureDetector(
      onTap: () => userController.selectContact(firstName, lastName),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                image,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$firstName $lastName',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Color(0XFF04021D),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  email.toUpperCase(),
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Color(0XFF686777),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
