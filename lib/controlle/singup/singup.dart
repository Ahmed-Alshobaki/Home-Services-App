import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/resources/manager_routes.dart';

class SingUpController extends GetxController{

  TextEditingController? email ;
  TextEditingController? password ;
  TextEditingController? name ;
  int a =1;
  bool obscureText = false;
  void cheng (){
    obscureText = obscureText ==true?false :true ;
    update();
  }
  void gotoAingup(){
    Get.toNamed(ManagerRoutes.Login);
    update();
  }
  void gotoForgetPasswordpage(){
    Get.toNamed(ManagerRoutes.ForgetPassword);
    update();
  }
  void gotoVerify(){
    Get.offNamed(ManagerRoutes.VerifyCodeSingup);
    update();
  }
}