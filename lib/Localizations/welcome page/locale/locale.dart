import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/apptheme.dart';
import '../../../core/constant/apptheme.dart';

class Localee extends GetxController{

   ThemeData? themeData=ThemeEn;
  String en_US = "en";
  String ar_JO = "ar";
  String? long1;



  String getlanguage(String s) {
    if (s.contains(en_US)) {
   //  themeData =ThemeEn;
    // Get.changeTheme(ThemeEn);
     // update();
      return "en";

    } else if (s.contains(ar_JO)) {
      // themeData =themeD.ThemeAr;
      // Get.changeTheme(themeData);
      // update();
      return "ar";
    }
    return "null";
  }

  String getlang(String lang) {
    if (lang == "ar" || long1 == "ar") {
      // themeData =themeD.ThemeAr;
      // Get.changeTheme(themeData);
      // update();
    } else {
      // themeData =themeD.ThemeEn;
      // Get.changeTheme(themeData);
      // update();
    }

    return "null";
  }
  @override
  void onInit() {

    super.onInit();
  }
}

