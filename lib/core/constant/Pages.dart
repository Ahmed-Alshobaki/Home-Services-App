import 'package:get/get.dart';

import '../../view/Auth/ForgetPassword/ForgetPassword.dart';
import '../../view/Auth/ResetPassword/reset_password.dart';
import '../../view/Auth/SingUp/singup.dart';
import '../../view/Auth/login/Login.dart';
import '../../view/Auth/verifycodeReset/verifycode.dart';
import '../../view/Auth/verifycodeResetSingup/verifycode.dart';
import '../../view/welcome page/language/language.dart';
import '../../view/welcome page/onboarding1/onboarding1.dart';
import '../../view/welcome page/splash/splash.dart';
import '../functions/middleware.dart';
import '../resources/manager_routes.dart';

class Pages {
   static List<GetPage<dynamic>>? Page= [

    GetPage(name: ManagerRoutes.splash, page: () => Splash(),middlewares:[ mymiddleware()]),
    GetPage(name: ManagerRoutes.onboarding1, page: () => OnBoarding1()),
    GetPage(name: ManagerRoutes.Login, page: () => Login()),
    GetPage(name: ManagerRoutes.LanguageApp, page: () => LanguageApp()),
    GetPage(name: ManagerRoutes.SingUp, page: () => SingUp()),
    GetPage(name: ManagerRoutes.ForgetPassword, page: () => ForgetPassword()),
    GetPage(name: ManagerRoutes.VerifyCode, page: () => VerifyCode()),
    GetPage(name: ManagerRoutes.ResetPassword, page: () => ResetPassword()),
    GetPage(name: ManagerRoutes.VerifyCodeSingup, page: () => VerifyCodeSingup()),


  ];


}