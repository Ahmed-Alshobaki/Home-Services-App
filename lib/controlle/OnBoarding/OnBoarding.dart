import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shop/core/resources/manager_routes.dart';

import '../../Localizations/welcome page/locale/locale.dart';
import '../../Localizations/welcome page/onboarding1/Translations1.dart';
import '../../core/functions/share.dart';
import '../../core/resources/manager_assets.dart';
import '../../core/resources/manager_colors.dart';
import '../../core/resources/manager_font_sizes.dart';
import '../../core/resources/manager_fonts.dart';
import '../../core/resources/manager_strings.dart';

class OnBoarding extends GetxController{
  Share Share1 = Get.find();
  Localee Translationsz1= Get.put(Localee());
  List<PageViewModel> getpages() {
    String lang1= Translationsz1.getlanguage(Get.deviceLocale!.languageCode);
    return [
      PageViewModel(
        decoration: PageDecoration(imageFlex: 2),
        image: Container(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset(ManagerAssets.group_onboarding),
              Image.asset(ManagerAssets.group_onboarding2),
            ],
          ),
        ),
        titleWidget:  Text((ManagerStrings.EasyProcess.tr),
            style:  TextStyle(
                color: ManagerColors.black,
                fontWeight: FontWeight.bold,
                fontSize: ManagerFontSizes.s34,
                fontFamily:Translationsz1.getlang(lang1),

            )
        ),
          // ManagerFont.quicksand
        bodyWidget: Container(
            height: 60,
            width: 301,
            child: Text(
              ManagerStrings.sube2.tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: Translationsz1.getlang(lang1),
                  fontWeight: FontWeight.w500,
                  color: ManagerColors.black80,
                  fontSize: ManagerFontSizes.s15),
            )),
      ),
      PageViewModel(
        decoration: PageDecoration(imageFlex: 2),
        image: Container(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset(ManagerAssets.group_onboarding),
              Image.asset(ManagerAssets.group_Women),
            ],
          ),
        ),
        titleWidget:  Text((ManagerStrings.ExpertPeople.tr),
            style:  TextStyle(
                color: ManagerColors.black,
                fontWeight: FontWeight.bold,
                fontSize: ManagerFontSizes.s34,
                fontFamily: Translationsz1.getlang(lang1))),
        bodyWidget: Container(
            height: 80,
            width: 301,
            child:  Text(
              ManagerStrings.ExpertPeoplesub.tr,
              textAlign: TextAlign.center,
              style:  TextStyle(
                  fontFamily: Translationsz1.getlang(lang1),
                  fontWeight: FontWeight.w500,
                  color: ManagerColors.black80,
                  fontSize: ManagerFontSizes.s15),
            )),
      ),

      PageViewModel(
        decoration: PageDecoration(imageFlex: 2),
        image: Container(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset(
                ManagerAssets.group_onboarding,
                filterQuality: FilterQuality.high,
              ),
              Image.asset(ManagerAssets.imgman),
            ],
          ),
        ),
        titleWidget:  Text((ManagerStrings.AllInOnePlace.tr),
            style:  TextStyle(
                color: ManagerColors.black,
                fontWeight: FontWeight.bold,
                fontSize: ManagerFontSizes.s34,
                fontFamily: Translationsz1.getlang(lang1)
            )
        ),
        bodyWidget: Container(
            height: 60,
            width: 292,
            child:  Text(
              ManagerStrings.AllInOnePlacesub.tr,
              textAlign: TextAlign.center,
              style:  TextStyle(
                  fontFamily: Translationsz1.getlang(lang1),
                  fontWeight: FontWeight.w500,
                  color: ManagerColors.black80,
                  fontSize: ManagerFontSizes.s15),
            )),
      ),
    ];
  }
  final introKey = GlobalKey<IntroductionScreenState>();
  void next(){
    introKey.currentState?.next();
  }
  void Done(int? a){
    if(introKey.currentState?.getCurrentPage()==2){
      Get.offNamed(ManagerRoutes.Login);
      Share1.zon.setString("splash", "1");
    }
  }
}