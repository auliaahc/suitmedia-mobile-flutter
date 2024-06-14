import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:suitmedia_mobile_flutter/controllers/user_controller.dart';
import 'package:suitmedia_mobile_flutter/widgets/global_button_widget.dart';

class NextButtonFirstWidget extends StatelessWidget {
  const NextButtonFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.find();
    return GlobalButtonWidget(
      onTap: () => userController.login(),
      label: 'Next',
    );
  }
}