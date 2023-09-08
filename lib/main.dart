import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/resources/manager_colors.dart';
import 'package:shop/view/Home/Home.dart';
import 'Localizations/welcome page/onboarding1/Translations1.dart';
import 'core/constant/Pages.dart';
import 'core/functions/share.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  await Share().oninit();
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
      home: Home(),
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
