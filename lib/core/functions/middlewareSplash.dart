import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/functions/share.dart';
import 'package:shop/core/resources/manager_routes.dart';

import '../constant/Pages.dart';

class mymiddleware extends GetMiddleware{
  Share Share1 = Get.find();

  @override
  set priority(int? _priority) {
    // TODO: implement priority
    super.priority = 1;
  }
@override
  RouteSettings? redirect(String? route) {

   if ( Share1.zon.getString("splash")=="1") {
     return RouteSettings(name: ManagerRoutes.Login);
   }

  }
}