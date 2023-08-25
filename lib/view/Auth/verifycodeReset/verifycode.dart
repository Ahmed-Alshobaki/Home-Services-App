import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/resources/manager_fonts.dart';

import '../../../Localizations/welcome page/locale/locale.dart';
import '../../../Localizations/welcome page/onboarding1/Translations1.dart';

import '../../../controlle/verifyreast/VerifyCodeController.dart';
import '../../../core/resources/manager_colors.dart';
import '../../../core/resources/manager_font_sizes.dart';
import '../../../core/resources/manager_strings.dart';
import '../../widget/Buttom/Buttomprimary.dart';
import '../../widget/TextFormField/TextFormFieldcustom.dart';
import '../ForgetPassword/ForgetPassword.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

Localee Translationsz1 = Get.put(Localee());

class VerifyCode extends StatelessWidget {
  VerifyCode({super.key});

  String lang1 = Translationsz1.getlanguage(Get.deviceLocale!.languageCode);
  VerifyCodeController controller = Get.put(VerifyCodeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: EdgeInsetsDirectional.symmetric(vertical: 30, horizontal: 20),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: false,
          children: [
            Text((ManagerStrings.Otp.tr),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: ManagerColors.black,
                  fontSize: ManagerFontSizes.s31,
                  fontFamily: Translationsz1.getlang(lang1),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 55,
              margin: EdgeInsetsDirectional.symmetric(horizontal: 30),
              child: Text((ManagerStrings.Otptital.tr),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: ManagerColors.black80,
                    fontSize: ManagerFontSizes.s15,
                    fontFamily: Translationsz1.getlang(lang1),
                  )),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(bottom: 25, top: 35),
              child: OtpTextField(
                focusedBorderColor: ManagerColors.green,
                textStyle: const TextStyle(
                    fontSize: ManagerFontSizes.s20,
                    fontFamily: ManagerFont.quicksand),
                showCursor: true,
                fieldWidth: 48,
                numberOfFields: 5,
                fillColor: ManagerColors.greenfath,
                filled: true,
                borderColor: Color(0xff5FD068),
                autoFocus: false,
                showFieldAsBox: true,

                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                onSubmit: (String verificationCode) {},
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ButtomPrimary(
              tital: ManagerStrings.Reset_Password.tr,
              onPressed: () {
                controller.goResetPassword();
              },
            ),
          ],
        ),
      ),
    );
  }
}
