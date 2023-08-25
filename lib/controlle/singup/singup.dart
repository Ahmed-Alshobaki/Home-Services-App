import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/resources/ManagerConstant.dart';

import '../../core/functions/crud.dart';
import '../../core/resources/manager_routes.dart';

class SingUpController extends GetxController {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController name = new TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();
  int a = 1;
  Card1 card = Card1();
  bool obscureText = false;
  void cheng() {
    obscureText = obscureText == true ? false : true;
    update();
  }

  void gotoAingup() {
    Get.toNamed(ManagerRoutes.Login);
    update();
  }

  void gotoForgetPasswordpage() {
    Get.toNamed(ManagerRoutes.ForgetPassword);
    update();
  }

  gotoVerify() async {
    if (key.currentState!.validate()) {
      var data = await card.postRequest(ManagerConstant.linkSingup, {
        "users_name": name.text,
        "users_email": email.text,
        "users_password": password.text,
      });
      print(data);
      if (data["status"] == "success") {
        Get.offNamed(ManagerRoutes.VerifyCodeSingup);
        update();
      }
    }
  }
  singupFirebase()async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      Get.toNamed(ManagerRoutes.Login);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
