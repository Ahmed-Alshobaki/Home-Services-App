import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../Localizations/welcome page/locale/locale.dart';
import '../../../Localizations/welcome page/onboarding1/Translations1.dart';
import '../../../controlle/Login/Login.dart';
import '../../../controlle/ResetPassword/ResetPassword.dart';
import '../../../core/functions/validator.dart';
import '../../../core/resources/manager_colors.dart';
import '../../../core/resources/manager_font_sizes.dart';
import '../../../core/resources/manager_fonts.dart';
import '../../../core/resources/manager_strings.dart';
import '../../widget/Buttom/Buttomprimary.dart';
import '../../widget/Dialog/Dialog.dart';
import '../../widget/TextFormField/TextFormFieldcustom.dart';
import '../ForgetPassword/ForgetPassword.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({Key? key}) : super(key: key);
  Localee Translationsz1 = Get.put(Localee());

  @override
  Widget build(BuildContext context) {
    String lang1 = Translationsz1.getlanguage(Get.deviceLocale!.languageCode);
    ResetPasswordController Controller = Get.put(ResetPasswordController());

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
            Text((ManagerStrings.Reset_Password.tr),
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
              padding: EdgeInsetsDirectional.symmetric(horizontal: 40),
              child: Text((ManagerStrings.Create_new_password.tr),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: ManagerColors.black80,
                    fontSize: ManagerFontSizes.s15,
                    fontFamily: Translationsz1.getlang(lang1),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            GetBuilder<ResetPasswordController>(
              init: ResetPasswordController(),
              builder: (controller) {
                return TextFormFieldcustom(
                  controller: Controller.password1,
                  validator: (val) {
                    return validator("val", 6, "password");
                  },
                  obscureText: Controller.obscureText,
                  tital: ManagerStrings.Password,
                  hint: ManagerStrings.EnterYourPassword.tr,
                  Iconn: IconButton(
                    onPressed: () {
                      controller.cheng();
                    },
                    icon: controller.obscureText
                        ? Icon(Icons.visibility_off_outlined)
                        : Icon(Icons.remove_red_eye_outlined),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
            GetBuilder<ResetPasswordController>(
              init: ResetPasswordController(),
              builder: (controller) {
                return TextFormFieldcustom(
                  controller: Controller.password2,
                  validator: (val) {
                    return validator("val", 6, "password");
                  },
                  obscureText: Controller.obscureText,
                  tital: ManagerStrings.Confirm_Password,
                  hint: ManagerStrings.EnterYourPassword.tr,
                  Iconn: IconButton(
                    onPressed: () {
                      controller.cheng();
                    },
                    icon: controller.obscureText
                        ? Icon(Icons.visibility_off_outlined)
                        : Icon(Icons.remove_red_eye_outlined),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 40,
            ),
            ButtomPrimary(
              tital: ManagerStrings.Submit.tr,
              onPressed: () {
                DialogA.getDialog(
                    context: context,
                    btnOkOnPress: () {},
                    tital: 'Success Reset',
                    dialogType: DialogType.success);
              },
            ),
          ],
        ),
      ),
    );
  }
}
