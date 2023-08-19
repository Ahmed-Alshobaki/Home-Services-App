import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController{

  TextEditingController  name = new TextEditingController();
  TextEditingController  email = new TextEditingController();

  TextEditingController  password = new TextEditingController();

  bool obscureText = false;
  void cheng() {
    obscureText = obscureText == true ? false : true;
    update();
  }
}