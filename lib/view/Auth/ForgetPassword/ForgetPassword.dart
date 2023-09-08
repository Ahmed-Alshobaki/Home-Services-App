import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/resources/manager_routes.dart';
import '../../../Localizations/welcome page/locale/locale.dart';
import '../../../controlle/forgetpassword/forgetpassword.dart';
import '../../../core/functions/validator.dart';
import '../../../core/resources/manager_colors.dart';
import '../../../core/resources/manager_font_sizes.dart';
import '../../../core/resources/manager_strings.dart';
import '../../widget/Buttom/Buttomprimary.dart';
import '../../widget/Dialog/Dialog.dart';
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
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 30, horizontal: 20),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
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
              margin: const EdgeInsetsDirectional.symmetric(horizontal: 30),
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
              onPressed: ()async {
                try{
                  await FirebaseAuth.instance.sendPasswordResetEmail(email:Controllerr.email!.text );
                  DialogA.getDialog(
                    dismissOnTouchOutside: false,
                      context: context,
                      btnOkOnPress: () {
                        Get.offNamed(ManagerRoutes.Login);
                      },
                      tital: 'success',
                      desc: "A message has been sent to your email",
                      dialogType: DialogType.success);
                }catch(e){
                  DialogA.getDialog(
                      context: context,
                      btnOkOnPress: () {},
                      tital: "Email does not exist",
                      dialogType: DialogType.info);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
