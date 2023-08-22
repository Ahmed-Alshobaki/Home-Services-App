import 'package:get/get.dart';

import '../../view/Auth/ForgetPassword/ForgetPassword.dart';
import '../../view/Auth/ResetPassword/reset_password.dart';
import '../../view/Auth/SingUp/singup.dart';
import '../../view/Auth/login/Login.dart';
import '../../view/Auth/verifycodeReset/verifycode.dart';
import '../../view/Auth/verifycodeResetSingup/verifycode.dart';
import '../../view/History/History.dart';
import '../../view/Home/Addcard.dart';
import '../../view/Home/Home.dart';
import '../../view/Home/cart.dart';
import '../../view/profile/editprofile.dart';
import '../../view/profile/profile.dart';
import '../../view/Home/shop.dart';
import '../../view/welcome page/language/language.dart';
import '../../view/welcome page/onboarding1/onboarding1.dart';
import '../../view/welcome page/splash/splash.dart';
import '../functions/middlewareSplash.dart';
import '../functions/mymiddlewareLogin.dart';
import '../resources/manager_routes.dart';

class Pages {
   static List<GetPage<dynamic>>? Page= [

    GetPage(name: ManagerRoutes.splash, page: () => Splash(),middlewares:[ mymiddleware()]),
    GetPage(name: ManagerRoutes.onboarding1, page: () => OnBoarding1()),
    GetPage(name: ManagerRoutes.Login, page: () => Login(),middlewares: [mymiddleLogin()]),
    GetPage(name: ManagerRoutes.LanguageApp, page: () => LanguageApp()),
    GetPage(name: ManagerRoutes.SingUp, page: () => SingUp()),
    GetPage(name: ManagerRoutes.ForgetPassword, page: () => ForgetPassword()),
    GetPage(name: ManagerRoutes.VerifyCode, page: () => VerifyCode()),
    GetPage(name: ManagerRoutes.ResetPassword, page: () => ResetPassword()),
    GetPage(name: ManagerRoutes.VerifyCodeSingup, page: () => VerifyCodeSingup()),
    GetPage(name: ManagerRoutes.Home, page: () => Home()),
    GetPage(name: ManagerRoutes.Shop, page: () => Shop()),
    GetPage(name: ManagerRoutes.Profile, page: () => Profile()),
    GetPage(name: ManagerRoutes.Editprofile, page: () => Editprofile()),
    GetPage(name: ManagerRoutes.History, page: () => History()),
    GetPage(name: ManagerRoutes.Addcard, page: () => Addcard()),
    GetPage(name: ManagerRoutes.cart, page: () => Cart()),

  ];


}