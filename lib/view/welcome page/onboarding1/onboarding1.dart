import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/resources/manager_assets.dart';
import 'package:shop/core/resources/manager_font_sizes.dart';
import 'package:shop/core/resources/manager_height.dart';
import 'package:shop/core/resources/manager_routes.dart';
import 'package:shop/core/resources/manager_strings.dart';

import '../../../Localizations/welcome page/onboarding1/onboarding.dart';
import '../../../controlle/OnBoarding/OnBoarding.dart';
import '../../../core/resources/manager_colors.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../../core/resources/manager_fonts.dart';
import '../../widget/Buttom/Buttomprimary.dart';

// class  extends StatelessWidget {
//   const ({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class OnBoarding1 extends StatelessWidget {
   OnBoarding1({super.key});
  Locale? langCode;
   String? lang ;
  @override
  Widget build(BuildContext context) {
    OnBoarding OnBoarding1 = Get.put(OnBoarding());
    Translations1 Translationsz = Get.put(Translations1());
    lang= Translationsz.getlanguage(Get.deviceLocale!.languageCode);
    // TODO: implement build
    return Scaffold(
        body: Container(
      padding: EdgeInsetsDirectional.all(ManagerFontSizes.s15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(top: 50),
            alignment: AlignmentDirectional.topEnd,
            child: InkWell(
              onTap: (){
                Get.offNamed(ManagerRoutes.Login);
              },
                child:  Text(
              ManagerStrings.Skip.tr,
              style: TextStyle(
                  fontSize: ManagerFontSizes.s18,
                  fontFamily: Translationsz.getlang(lang!),
                  color: ManagerColors.yellow),
            )),
          ),
          Container(
            // _introKey
            child: Expanded(
              child: IntroductionScreen(
                key: OnBoarding1.introKey,
                controlsPadding: EdgeInsets.only(bottom: ManagerHeights.h50),
                dotsDecorator: const DotsDecorator(
                  activeColor: ManagerColors.yellow,
                ),
                pages: OnBoarding1.getpages(),
                showSkipButton: false,
                showDoneButton: false,
                showNextButton: false,
              ),
            ),
          ),
          ButtomPrimary(
            tital: ManagerStrings.Next.tr,
            bottom: 36.0,
            gata: () {
              OnBoarding1.introKey.currentState?.next();
              int? a = OnBoarding1.introKey.currentState?.getCurrentPage();
              OnBoarding1.Done(a);

            },
          ),
        ],
      ),
    ));
  }
}
