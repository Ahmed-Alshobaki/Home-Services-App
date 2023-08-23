import 'package:get/get.dart';

import '../../core/resources/manager_routes.dart';

class HistoryControlle extends GetxController{


  bool valueSwitsh = false;
  getdataSwitsh (bool value){
    valueSwitsh = value;
    update();
  }
  late int visit = 1;
  getdata(int index ){
    visit = index;
    update();
  }

  gotopag(){
    if(visit==0){
      Get.offNamed(ManagerRoutes.Home);
      update();
      visit=0;
    }
    if(visit==3){
      Get.offNamed(ManagerRoutes.Profile);
      update();
      visit=0;
    }
    if(visit==2){
      Get.offNamed(ManagerRoutes.Categories);
      update();
      visit=0;
    }

  }
}