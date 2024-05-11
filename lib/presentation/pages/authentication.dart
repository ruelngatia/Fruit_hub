import 'package:flutter/material.dart';
import 'package:fruit_hub/model/user_model.dart';
import 'package:fruit_hub/presentation/controller/authentication_controller.dart';
import 'package:fruit_hub/service/auth_service.dart';
import 'package:fruit_hub/utils/konstants.dart';
import 'package:fruit_hub/utils/local_storage.dart';
import 'package:get/get.dart';

class Authentication extends GetView<AuthenticationController> {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Container(height: 40),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Color(Konstants.orange),
              child: Image.asset('assets/images/basket.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 26),
              child: Form(
                key: controller.formState,
                child: Column(
                  children: [
                    Text('What is your first name?',style: Theme.of(context).textTheme.bodyMedium,),
                    const SizedBox(height: 16),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyMedium,
                      controller: controller.firstNameController,
                      decoration: const InputDecoration(hintText: 'Tony'),
                      validator: (value) => controller.validator(value),
                    ),
                    GetBuilder<AuthenticationController>(
                      builder: (controller) => Visibility(
                      visible: controller.userNameExist.value,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'User name already exist.',
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.red),
                        ),
                      )
                      )
                    ),
                    const SizedBox(height: 48),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async{
                          if(controller.formState.currentState!.validate() && !await controller.checkDublicate()){
                            await LocalStorage().write('username', controller.firstNameController.text);
                            AuthService().createUser(UserModel(username: controller.firstNameController.text));
                            Get.offNamed('/home_screen');
                          }
                        },
                        child: Text(
                          'Start Odering',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
