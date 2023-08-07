import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_pickers/image_pickers.dart';
import 'package:shop/core/resources/manager_routes.dart';

import 'Localizations/welcome page/onboarding1/onboarding.dart';
import 'view/Auth/ForgetPassword/ForgetPassword.dart';
import 'view/Auth/SingUp/singup.dart';
import 'view/Auth/login/Login.dart';
import 'view/Auth/verifycode/verifycode.dart';
import 'view/welcome page/language/language.dart';
import 'view/welcome page/onboarding1/onboarding1.dart';
import 'view/welcome page/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      //initialRoute: ManagerRoutes.splash,
      locale: Get.deviceLocale,
      translations: Translations1(),
      home: VerifyCode(),
      theme: ThemeData(
        unselectedWidgetColor: Colors.red,
        disabledColor: Colors.blue,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,

      getPages: [
        GetPage(name: ManagerRoutes.splash, page: () => Splash()),
        GetPage(name: ManagerRoutes.onboarding1, page: () => OnBoarding1()),
        GetPage(name: ManagerRoutes.Login, page: () => Login()),
        GetPage(name: ManagerRoutes.LanguageApp, page: () => LanguageApp()),
        GetPage(name: ManagerRoutes.SingUp, page: () => SingUp()),
        GetPage(name: ManagerRoutes.ForgetPassword, page: () => ForgetPassword()),
        GetPage(name: ManagerRoutes.VerifyCode, page: () => VerifyCode()),

      ],
    );
  }
}
