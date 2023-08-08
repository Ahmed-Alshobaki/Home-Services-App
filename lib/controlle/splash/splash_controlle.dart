

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/core/resources/manager_routes.dart';
import 'package:shop/core/resources/manager_time.dart';

import '../../core/functions/share.dart';
import '../../core/functions/share.dart';

class SplashControlle extends GetxController{
  Share Share1 = Get.find();

  void change()async{
    Future.delayed(const Duration(seconds: ManagerTime.s3),()async{

      await Get.offNamed(ManagerRoutes.LanguageApp);
    });

  }

}