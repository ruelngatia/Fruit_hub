import 'package:flutter/material.dart';
import 'package:fruit_hub/model/user_model.dart';
import 'package:fruit_hub/service/auth_service.dart';
import 'package:get/get.dart';

class AuthenticationBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthenticationController());
  }
  
}

class AuthenticationController extends GetxController{

  final firstNameController = TextEditingController();
  final formState = GlobalKey<FormState>();
  RxBool userNameExist = false.obs;
  
  @override
  void onClose(){
    firstNameController.dispose();
    super.onClose();
  }

  String? validator(String? value){
    if(value!.isEmpty){
      return 'First name is required';
    }
    return null;
  }

  Future<bool> checkDublicate() async{
    UserModel? user = await AuthService().findUser(firstNameController.text);
    if(user != null ){
      userNameExist = RxBool(true);
      update();
      return true;
    }
    return false;
  }


}