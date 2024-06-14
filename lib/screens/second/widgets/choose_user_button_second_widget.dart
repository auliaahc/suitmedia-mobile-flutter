import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_mobile_flutter/screens/third/third_screen.dart';
import 'package:suitmedia_mobile_flutter/widgets/global_button_widget.dart';

class ChooseUserButtonSecondWidget extends StatelessWidget {
  const ChooseUserButtonSecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalButtonWidget(
      onTap: () => Get.to(() => const ThirdScreen()),
      label: 'Choose a User',
    );
  }
}
