import 'package:get/get.dart';

class HistoryControlle extends GetxController{


  bool valueSwitsh = false;
  getdataSwitsh (bool value){
    valueSwitsh = value;
    update();
  }
  late int visit = 2;
  getdata(int index ){
    visit = index;
    update();
  }


}