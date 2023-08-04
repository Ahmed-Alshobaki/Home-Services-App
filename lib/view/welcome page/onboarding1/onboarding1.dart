import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/resources/manager_assets.dart';
import 'package:shop/core/resources/manager_font_sizes.dart';
import 'package:shop/core/resources/manager_height.dart';
import 'package:shop/core/resources/manager_strings.dart';

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
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoarding OnBoarding1 = Get.put(OnBoarding());

    // TODO: implement build
    return Scaffold(
        body: Container(
      padding: EdgeInsetsDirectional.all(ManagerFontSizes.s15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
          //SizedBox(height: 40,),
          // Container(
          //     margin: const EdgeInsetsDirectional.only(bottom: 20),
          //     child: MaterialButton(
          //       color: ManagerColors.green,
          //       height: ManagerHeights.h50,
          //       minWidth: ManagerHeights.h360,
          //       onPressed: () {
          //         OnBoarding1.introKey.currentState?.next();
          //         int? a =OnBoarding1.introKey.currentState?.getCurrentPage();
          //         OnBoarding1.Done(a);
          //       },
          //       child: const Text(ManagerStrings.Next),
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(ManagerFontSizes.s15)),
          //     )),
          ButtomPrimary(gata: (){
            OnBoarding1.introKey.currentState?.next();
            int? a =OnBoarding1.introKey.currentState?.getCurrentPage();
            OnBoarding1.Done(a);
          },),

        ],
      ),
    ));
  }
}
