import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/resources/manager_assets.dart';

import '../../../Localizations/welcome page/locale/locale.dart';
import '../../../Localizations/welcome page/onboarding1/Translations1.dart';
import '../../../controlle/Login/Login.dart';
import '../../../controlle/singup/singup.dart';
import '../../../core/functions/AlertExitApp.dart';
import '../../../core/functions/validator.dart';
import '../../../core/resources/manager_colors.dart';
import '../../../core/resources/manager_font_sizes.dart';
import '../../../core/resources/manager_fonts.dart';
import '../../../core/resources/manager_strings.dart';
import '../../widget/Buttom/Buttomprimary.dart';
import '../../widget/TextFormField/TextFormFieldcustom.dart';

class SingUp extends StatelessWidget {
  SingUp({super.key});
  SingUpController SingUpControllerr = Get.put(SingUpController());
  @override
  Widget build(BuildContext context) {

    Localee Translationsz1 = Get.put(Localee());
    String lang1 = Translationsz1.getlanguage(Get.deviceLocale!.languageCode);
    return Scaffold(
      body: WillPopScope(
        onWillPop: (){
          AwesomeDialog(
              context: context,
              dialogType: DialogType.info,
              animType: AnimType.rightSlide,
            title: 'info',
            desc: 'Do you want to sign out',
              btnCancelOnPress: () {},
          btnOkOnPress: () {},
          ).show();
          return Future.value(true);
        },
        child: ListView(

          padding: EdgeInsetsDirectional.symmetric(vertical: 90, horizontal: 20),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: false,
          children: [
            Text((ManagerStrings.Register.tr),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: ManagerColors.black,
                  fontSize: ManagerFontSizes.s31,
                  fontFamily: Translationsz1.getlang(lang1),
                )),
            const SizedBox(
              height: 15,
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
              height: 25,
            ),
            TextFormFieldcustom(
              controller: SingUpControllerr.name,
              validator: (val){
                return  validator(val!,15,"name");
              },
              tital: ManagerStrings.FullName,
              hint: ManagerStrings.EnterYourFullName.tr,
              Iconn: Icon(Icons.person_outline),
              obscureText: false,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormFieldcustom(
              controller: SingUpControllerr.email,
              validator: (val){
                return   validator(val!,15,"email");
              },
              tital: ManagerStrings.Email,
              hint: ManagerStrings.EnterYourEmail.tr,
              Iconn: Icon(Icons.email_outlined),
              obscureText: false,
            ),
            const SizedBox(
              height: 20,
            ),
            GetBuilder<SingUpController>(
              init: SingUpController(),
              builder: (controller) {
                return TextFormFieldcustom(
                  controller: SingUpControllerr.password,
                  validator: (val){
                    return    validator(val!,15,"password");
                  },
                  obscureText: SingUpControllerr.obscureText,
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
            GetBuilder<SingUpController>(
              init: SingUpController(), builder: ( controller) {
              return Container(
                  margin: EdgeInsetsDirectional.only(top: 15),
                  child: InkWell(
                    onTap: (){
                      SingUpControllerr.gotoForgetPasswordpage();
                    },
                    child: Text(
                      ManagerStrings.Forget.tr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: ManagerFontSizes.s15,
                          fontFamily: Translationsz1.getlang(lang1)),
                    ),
                  ));
            },),
            const SizedBox(
              height: 40,
            ),
            ButtomPrimary(
              bottom: 10,
              tital: ManagerStrings.Register.tr,
              gata: (){
                SingUpControllerr.gotoVerify();
              },
            ),
            Container(
                margin: const EdgeInsetsDirectional.only(top: 10),
                child: Text(
                  ManagerStrings.OR.tr,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: ManagerFont.quicksand),
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 64,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ManagerColors.greenfath,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: ManagerColors.black60)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 32,
                      width: 32,
                      child: const Image(
                        image: AssetImage(ManagerAssets.Facebook),
                        filterQuality: FilterQuality.high,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    ManagerStrings.Facebook.tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: Translationsz1.getlang(lang1),

                        fontSize: ManagerFontSizes.s19),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Container(
              height: 64,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ManagerColors.greenfath,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: ManagerColors.black60)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 32,
                      width: 32,
                      child: const Image(
                        image: AssetImage(ManagerAssets.Google),
                        filterQuality: FilterQuality.high,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    ManagerStrings.Google.tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: Translationsz1.getlang(lang1),

                        fontSize: ManagerFontSizes.s19),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ManagerStrings.Have_Account.tr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: ManagerFont.SemiBold,
                      fontSize: ManagerFontSizes.s16),
                ),
               GetBuilder<SingUpController>(
                 init: SingUpController(),
                 builder: ( controller) {
                 return  InkWell(
                   onTap: () {
                     SingUpControllerr.gotoAingup();
                   },
                   child: Text(
                     ManagerStrings.SignUp.tr,
                     textAlign: TextAlign.center,
                     style: TextStyle(
                         fontFamily: Translationsz1.getlang(lang1),
                         fontSize: ManagerFontSizes.s16),
                   ),
                 );
               },)
              ],
            )
          ],
        ),
      ),
    );
  }
}
