import 'package:get/get.dart';

import '../../core/resources/manager_routes.dart';

class VerifyCodeController extends GetxController{
void goResetPassword(){
Get.offNamed(ManagerRoutes.ResetPassword);
}
}