import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalButtonWidget extends StatelessWidget {
  final Function() onTap;
  final String label;
  const GlobalButtonWidget({
    super.key,
    required this.onTap,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 41,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF2B637B),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0XFFFFFFFF),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
