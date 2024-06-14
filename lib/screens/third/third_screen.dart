import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_mobile_flutter/controllers/user_controller.dart';
import 'package:suitmedia_mobile_flutter/screens/second/second_screen.dart';
import 'package:suitmedia_mobile_flutter/screens/third/widgets/list_contact_third_widget.dart';
import 'package:suitmedia_mobile_flutter/widgets/global_app_bar_widget.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      userController.fetchUserContact();
    });
    return Scaffold(
      appBar: GlobalAppBarWidget(
        title: 'Third Screen',
        onPressed: () => Get.off(() => const SecondScreen()),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListContactThirdWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
