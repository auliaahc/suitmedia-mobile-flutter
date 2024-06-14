import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_mobile_flutter/screens/first/first_screen.dart';
import 'package:suitmedia_mobile_flutter/screens/second/widgets/choose_user_button_second_widget.dart';
import 'package:suitmedia_mobile_flutter/screens/second/widgets/header_second_widget.dart';
import 'package:suitmedia_mobile_flutter/widgets/global_app_bar_widget.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBarWidget(
        title: 'Second Screen',
        onPressed: () => Get.offAll(() => const FirstScreen()),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          children: [
            HeaderSecondWidget(),
            Spacer(),
            ChooseUserButtonSecondWidget(),
          ],
        ),
      ),
    );
  }
}
