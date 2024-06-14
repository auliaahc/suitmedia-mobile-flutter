import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function() onPressed;
  const GlobalAppBarWidget({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: onPressed,
        color: const Color(0XFF554AF0),
      ),
      backgroundColor: const Color(0XFFFFFFFF),
      centerTitle: true,
      title: Text(
        title,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: Color(0XFF04021D),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          color: Colors.grey.withOpacity(0.3),
          height: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
