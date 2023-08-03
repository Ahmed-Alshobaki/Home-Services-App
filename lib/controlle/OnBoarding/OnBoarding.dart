import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shop/core/resources/manager_routes.dart';

import '../../core/resources/manager_assets.dart';
import '../../core/resources/manager_colors.dart';
import '../../core/resources/manager_font_sizes.dart';
import '../../core/resources/manager_fonts.dart';
import '../../core/resources/manager_strings.dart';

class OnBoarding extends GetxController{
  List<PageViewModel> getpages() {
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
        titleWidget: const Text((ManagerStrings.EasyProcess1),
            style: TextStyle(
                color: ManagerColors.black,
                fontWeight: FontWeight.bold,
                fontSize: ManagerFontSizes.s34,
                fontFamily: ManagerFont.quicksand)),
        bodyWidget: Container(
            height: 80,
            width: 301,
            child: Text(
              ManagerStrings.sube2,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: ManagerFont.quicksand,
                  fontWeight: FontWeight.w500,
                  color: ManagerColors.black80,
                  fontSize: 15),
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
        titleWidget: const Text((ManagerStrings.ExpertPeople),
            style: TextStyle(
                color: ManagerColors.black,
                fontWeight: FontWeight.bold,
                fontSize: ManagerFontSizes.s34,
                fontFamily: ManagerFont.quicksand)),
        bodyWidget: Container(
            height: 80,
            width: 301,
            child: const Text(
              ManagerStrings.ExpertPeoplesub,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: ManagerFont.quicksand,
                  fontWeight: FontWeight.w500,
                  color: ManagerColors.black80,
                  fontSize: 15),
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
        titleWidget: const Text((ManagerStrings.AllInOnePlace),
            style: TextStyle(
                color: ManagerColors.black,
                fontWeight: FontWeight.bold,
                fontSize: ManagerFontSizes.s34,
                fontFamily: ManagerFont.quicksand)),
        bodyWidget: Container(
            height: 60,
            width: 292,
            child: const Text(
              ManagerStrings.AllInOnePlacesub,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: ManagerFont.quicksand,
                  fontWeight: FontWeight.w500,
                  color: ManagerColors.black80,
                  fontSize: 15),
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

    }
  }
}