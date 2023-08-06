import 'package:get/get.dart';

import '../../core/resources/manager_routes.dart';

class SingUpController extends GetxController{

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
    Get.toNamed(ManagerRoutes.Login);
  }

}