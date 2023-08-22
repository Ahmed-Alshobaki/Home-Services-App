import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/resources/manager_routes.dart';

class porfileController extends GetxController{

  bool valueSwitsh = false;
      getdataSwitsh (bool value){
        valueSwitsh = value;
        update();
      }
  late int visit = 3;
  getdata(int index ){
    visit = index;
    update();
  }

  gotoedit(){
    Get.toNamed(ManagerRoutes.Editprofile);
  }
  gotopag(){
    if(visit==0){
      Get.toNamed(ManagerRoutes.Home);
      update();
      visit=3;
    }

    if(visit==2){
      Get.toNamed(ManagerRoutes.Shop);
      update();
      visit=3;
    }
    if(visit==1){
      Get.toNamed(ManagerRoutes.cart);
      update();
      visit=3;
    }
  }
}
