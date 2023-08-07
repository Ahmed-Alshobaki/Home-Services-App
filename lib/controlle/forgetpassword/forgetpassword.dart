import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/resources/manager_routes.dart';


class ForgetPasswordController extends GetxController{
  TextEditingController? email ;
void goVerify(){
  Get.toNamed(ManagerRoutes.VerifyCode);
  update();
}
}