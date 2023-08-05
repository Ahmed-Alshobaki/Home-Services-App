import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageControlle extends GetxController{
  String? language;
  bool Checkboxbool = false;
  late String valuee1 ;

  void Equals(String s){
    language = s;
    update();
}
  void change(String s){
    Locale locale = Locale(s);
    Get.updateLocale(locale);
  }
  void Checkbox_(bool b){
        Checkboxbool =b ;
        update();
    // Checkboxbool = valuee! as bool;
  }

}