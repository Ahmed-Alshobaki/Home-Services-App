import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Share extends GetxService{

        late SharedPreferences zon ;
  Future<Share>init()async{
      zon = await SharedPreferences.getInstance();
    return this;
  }
   Future oninit1()async{
    await  Get.putAsync(() => Share().init());
   }
}


