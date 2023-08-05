import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Localizations/welcome page/onboarding1/onboarding.dart';
import '../../../core/resources/manager_colors.dart';
import '../../../core/resources/manager_font_sizes.dart';
import '../../../core/resources/manager_fonts.dart';
import '../../../core/resources/manager_strings.dart';
import '../../widget/TextFormField/TextFormFieldcustom.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Translations1 Translationsz1 = Get.put(Translations1());
    String lang1 = Translationsz1.getlanguage(Get.deviceLocale!.languageCode);
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsetsDirectional.symmetric(vertical: 90, horizontal: 20),
        child: ListView(
          children: [
            Text((ManagerStrings.Login.tr),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: ManagerColors.black,
                  fontSize: ManagerFontSizes.s28,
                  fontFamily: Translationsz1.getlang(lang1),
                )),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
              child: Text((ManagerStrings.Phone_and_password.tr),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: ManagerColors.black80,
                    fontSize: ManagerFontSizes.s14,
                    fontFamily: Translationsz1.getlang(lang1),
                  )),
            ),
            SizedBox(
              height: 60,
            ),
            TextFormFieldcustom(tital: ManagerStrings.Email,hint: ManagerStrings.EnterYourEmail,Iconn: Icons.phone_outlined,),
            SizedBox(
              height: 35,
            ),
            TextFormFieldcustom(tital: ManagerStrings.Password,hint: ManagerStrings.EnterYourPassword,Iconn: Icons.remove_red_eye_outlined,),
          ],
        ),
      ),
    );
  }
}
