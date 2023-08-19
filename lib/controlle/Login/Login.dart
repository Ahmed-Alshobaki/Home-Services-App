
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/functions/crud.dart';
import '../../core/resources/ManagerConstant.dart';
import '../../core/resources/manager_routes.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController email= new TextEditingController();
  TextEditingController password=new TextEditingController();
  Card1 card = Card1();
  var data;

  bool obscureText = false;
  void cheng() {
    obscureText = obscureText == true ? false : true;
    update();
  }

  void gotoAingup() {
    Get.offNamed(ManagerRoutes.SingUp);
  }

  void gotoForgetPasswordpage() {
    Get.toNamed(ManagerRoutes.ForgetPassword);
  }

  gohome() async {
    var datakey = globalKey.currentState;
    if (datakey!.validate()) {
       data = await card.postRequest(ManagerConstant.linkligon, {
        "email": email.text,
        "password": password.text,
      });
      if (data["success"] == true) {
        Get.offNamed(ManagerRoutes.Home);
      }
    } else {
      print("object1");
      print(data);

    }
  }
}
