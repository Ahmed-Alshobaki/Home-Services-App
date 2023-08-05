import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Localizations/welcome page/onboarding1/onboarding.dart';
import '../../../core/resources/manager_colors.dart';
import '../../../core/resources/manager_font_sizes.dart';
import '../../../core/resources/manager_height.dart';
import '../../../core/resources/manager_strings.dart';
import '../../welcome page/onboarding1/onboarding1.dart';
Translations1 Translationsz = Get.put(Translations1());
class ButtomPrimary extends StatelessWidget {
  var gata;
  late double ?mtop ;
 late  double? bottom ;
  String lang= Translationsz.getlanguage(Get.deviceLocale!.languageCode);

   ButtomPrimary({ this.gata()?,this.mtop,this.bottom});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,

        margin:  EdgeInsetsDirectional.only(top: mtop??0.0,bottom: bottom??0.0),
        child: MaterialButton(
          color: ManagerColors.green,
          height: ManagerHeights.h50,
          minWidth: ManagerHeights.h360,
          onPressed: () {
            gata();
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(ManagerFontSizes.s15)),
          child:  Text(ManagerStrings.Next.tr,style: TextStyle(fontFamily:Translationsz.getlang(lang),color: ManagerColors.white,fontSize: ManagerFontSizes.s18),),
        ));
  }
}
