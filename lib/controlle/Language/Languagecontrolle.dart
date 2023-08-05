import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageControlle extends GetxController{
  String? language;

  void Equals(String s){
    language = s;
    update();
}
  void change(String s){
    Locale locale = Locale(s);
    Get.updateLocale(locale);
  }
}