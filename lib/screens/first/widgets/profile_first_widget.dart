import 'package:flutter/material.dart';
import 'package:suitmedia_mobile_flutter/constants/image_constant.dart';

class ProfileFirstWidget extends StatelessWidget {
  const ProfileFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageConstant.profile,
      width: 116,
      height: 116,
    );
  }
}
