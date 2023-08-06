import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/resources/manager_routes.dart';

class LoginController extends GetxController{
  int a =1;
  bool obscureText = false;
  void cheng (){
  if (a%2==0) {
    obscureText = false;
    a++;
  }else if(a%2==1){
    obscureText = true;
    a++;
  }
  update();
  }
  void gotoAingup(){
    Get.toNamed(ManagerRoutes.SingUp);
  }



}
