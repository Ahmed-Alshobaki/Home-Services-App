import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Localizations/welcome page/locale/locale.dart';
import '../../../Localizations/welcome page/onboarding1/Translations1.dart';
import '../../../controlle/Login/Login.dart';
import '../../../controlle/forgetpassword/forgetpassword.dart';
import '../../../core/functions/validator.dart';
import '../../../core/resources/manager_assets.dart';
import '../../../core/resources/manager_colors.dart';
import '../../../core/resources/manager_font_sizes.dart';
import '../../../core/resources/manager_fonts.dart';
import '../../../core/resources/manager_strings.dart';
import '../../widget/Buttom/Buttomprimary.dart';
import '../../widget/TextFormField/TextFormFieldcustom.dart';

Localee Translationsz1 = Get.put(Localee());

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  ForgetPasswordController Controllerr = Get.put(ForgetPasswordController());

  String lang1 = Translationsz1.getlanguage(Get.deviceLocale!.languageCode);

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
            Text((ManagerStrings.Forget2.tr),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: ManagerColors.black,
                  fontSize: ManagerFontSizes.s31,
                  fontFamily: Translationsz1.getlang(lang1),
                )),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 55,
              margin: EdgeInsetsDirectional.symmetric(horizontal: 30),
              child: Text((ManagerStrings.Phone_and_password.tr),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: ManagerColors.black80,
                    fontSize: ManagerFontSizes.s20,
                    fontFamily: Translationsz1.getlang(lang1),
                  )),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormFieldcustom(
              controller: Controllerr.email,
              validator: (val) {
                validator(val!, 6, "email");
              },
              tital: ManagerStrings.Email,
              hint: ManagerStrings.EnterYourEmail.tr,
              Iconn: Icon(Icons.email_outlined),
              obscureText: false,
            ),
            const SizedBox(
              height: 50,
            ),
            ButtomPrimary(
              tital: ManagerStrings.Reset_Password.tr,
              onPressed: () {
                Controllerr.goVerify();
              },
            ),
          ],
        ),
      ),
    );
  }
}
