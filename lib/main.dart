import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_pickers/image_pickers.dart';
import 'package:shop/core/resources/manager_colors.dart';
import 'package:shop/core/resources/manager_routes.dart';
import 'package:shop/view/Home/Home.dart';
import 'package:shop/view/Home/shop.dart';
import 'package:shop/view/test.dart';

import 'Localizations/welcome page/locale/locale.dart';
import 'Localizations/welcome page/onboarding1/Translations1.dart';
import 'core/constant/Pages.dart';
import 'core/constant/apptheme.dart';
import 'core/functions/share.dart';
import 'view/Auth/ForgetPassword/ForgetPassword.dart';
import 'view/Auth/ResetPassword/reset_password.dart';
import 'view/Auth/SingUp/singup.dart';
import 'view/Auth/login/Login.dart';

import 'view/Auth/verifycodeReset/verifycode.dart';
import 'view/Auth/verifycodeResetSingup/verifycode.dart';
import 'view/profile/editprofile.dart';
import 'view/profile/profile.dart';
import 'view/welcome page/language/language.dart';
import 'view/welcome page/onboarding1/onboarding1.dart';
import 'view/welcome page/splash/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Share().oninit1();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     // initialRoute: ManagerRoutes.splash,
      locale: Get.deviceLocale,
      translations: Translations1(),
     home: Editprofile(),
      theme: ThemeData(
          colorScheme:
              ThemeData().colorScheme.copyWith(primary: ManagerColors.black80),
          appBarTheme: const AppBarTheme(
              actionsIconTheme: IconThemeData(),
              elevation: 0,
              color: ManagerColors.white,
              iconTheme: IconThemeData(
                color: ManagerColors.black,
              ))),
      debugShowCheckedModeBanner: false,

      getPages: Pages.Page,
    );
  }
}
