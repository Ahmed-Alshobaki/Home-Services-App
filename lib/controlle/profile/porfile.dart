import 'package:flutter/material.dart';
import 'package:get/get.dart';

class porfileController extends GetxController{

  bool valueSwitsh = false;
      getdataSwitsh (bool value){
        valueSwitsh = value;
        update();
      }
  late int visit = 0;
  getdata(int index ){
    visit = index;
    update();
  }

}
