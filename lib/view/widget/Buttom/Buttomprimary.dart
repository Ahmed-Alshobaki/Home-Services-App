import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shop/core/resources/manager_fonts.dart';

import '../../../Localizations/welcome page/locale/locale.dart';
import '../../../Localizations/welcome page/onboarding1/Translations1.dart';
import '../../../core/resources/manager_colors.dart';
import '../../../core/resources/manager_font_sizes.dart';
import '../../../core/resources/manager_height.dart';
import '../../../core/resources/manager_strings.dart';
import '../../welcome page/onboarding1/onboarding1.dart';

Localee Translationsz = Get.put(Localee());

class ButtomPrimary extends StatelessWidget {
  var gata;
  late double? mtop;
  late double? bottom;
  String tital;
  late void Function()? onPressed;
  String lang = Translationsz.getlanguage(Get.deviceLocale!.languageCode);

  ButtomPrimary({required this.onPressed, this.mtop, this.bottom, required this.tital});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: AlignmentDirectional.center,
        margin:
            EdgeInsetsDirectional.only(top: mtop ?? 0.0, bottom: bottom ?? 0.0),
        child: MaterialButton(
          color: ManagerColors.green,
          height: ManagerHeights.h50,
          minWidth: double.infinity,
          onPressed: onPressed,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Text(
            tital.tr,
            style: const TextStyle(
                fontFamily: ManagerFont.quicksand,
                color: ManagerColors.white,
                fontSize: ManagerFontSizes.s19),
          ),
        ));
  }
}
