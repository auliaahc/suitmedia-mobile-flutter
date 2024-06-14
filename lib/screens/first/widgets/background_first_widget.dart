import 'package:flutter/material.dart';
import 'package:suitmedia_mobile_flutter/constants/image_constant.dart';

class BackgroundFirstWidget extends StatelessWidget {
  const BackgroundFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        ImageConstant.background,
        fit: BoxFit.cover,
      ),
    );
  }
}
