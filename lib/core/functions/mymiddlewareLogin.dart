import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/functions/share.dart';
import 'package:shop/core/resources/manager_routes.dart';

class mymiddleLogin extends GetMiddleware{
  Share Share1 = Get.find();
  @override
  // TODO: implement priority
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    if(!(Share1.zon.getString("id")==null)||FirebaseAuth.instance.currentUser!=null){
      return RouteSettings(name: ManagerRoutes.Home);
    }

  }


}