import 'package:flutter/material.dart';
import 'package:get/get.dart';

class porfileController extends GetxController{


  late int visit = 0;
  getdata(int index ){
    visit = index;
    update();
  }

}
