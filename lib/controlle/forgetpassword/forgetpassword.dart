import 'package:get/get.dart';

import '../../core/resources/manager_routes.dart';

class ForgetPasswordController extends GetxController{
void goVerify(){
  Get.toNamed(ManagerRoutes.VerifyCode);
  update();
}
}