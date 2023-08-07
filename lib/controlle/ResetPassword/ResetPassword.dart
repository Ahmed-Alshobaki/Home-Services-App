import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController{
  TextEditingController? password1 ;
  TextEditingController? password2;
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
}