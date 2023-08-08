import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/resources/manager_routes.dart';

class LoginController extends GetxController{
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController? email ;
  TextEditingController? password ;


  bool obscureText = false;
  void cheng (){
    obscureText = obscureText ==true?false :true ;
  update();
  }
  void gotoAingup(){
    Get.offNamed(ManagerRoutes.SingUp);
  }
  void gotoForgetPasswordpage(){
    Get.toNamed(ManagerRoutes.ForgetPassword);
  }
  void gohome(){
    var data = globalKey.currentState;
    if (data!.validate()) {
      print("object");
    } else{
      print("object1");
    }
  }



}
