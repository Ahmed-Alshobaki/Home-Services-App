import 'package:get/get.dart';

import '../../core/resources/manager_routes.dart';

class ShopController extends GetxController{
  late int visit = 2;
  getdata(int index ){
    visit = index;
    update();
  }


  gotopag(){
    if(visit==0){
      Get.toNamed(ManagerRoutes.Home);
      update();
      visit=2;
    }

    if(visit==3){
      Get.toNamed(ManagerRoutes.Profile);
      update();
      visit=2;
    }
    if(visit==1){
      Get.toNamed(ManagerRoutes.cart);
      update();
      visit=2;
    }
  }
}