import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_mobile_flutter/controllers/user_controller.dart';
import 'package:suitmedia_mobile_flutter/screens/third/widgets/item_contact_third_widget.dart';

class ListContactThirdWidget extends StatelessWidget {
  const ListContactThirdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.find();
    return Obx(
      () {
        if (userController.isLoadingFetchContact.value) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return ListView.separated(
            separatorBuilder: (context, index) => const Divider(height: 1),
            itemCount: userController.contactData.value!.data.length,
            itemBuilder: (context, index) {
              final contact = userController.contactData.value!.data[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: ItemContactThirdWidget(
                  firstName: contact.firstName,
                  lastName: contact.lastName,
                  email: contact.email,
                  image: contact.avatar,
                ),
              );
            },
          );
        }
      },
    );
  }
}
