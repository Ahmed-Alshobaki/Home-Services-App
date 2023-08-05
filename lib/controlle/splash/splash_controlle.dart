

import 'package:get/get.dart';
import 'package:shop/core/resources/manager_routes.dart';
import 'package:shop/core/resources/manager_time.dart';

class SplashControlle extends GetxController{
  void change(){
    Future.delayed(const Duration(seconds: ManagerTime.s3),()async{
      await Get.offNamed(ManagerRoutes.LanguageApp);
    });

  }

}