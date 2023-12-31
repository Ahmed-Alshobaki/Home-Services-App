import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Localizations/welcome page/locale/locale.dart';
import '../../../Localizations/welcome page/onboarding1/Translations1.dart';
import '../../../controlle/Language/Languagecontrolle.dart';
import '../../../core/resources/manager_colors.dart';
import '../../../core/resources/manager_font_sizes.dart';
import '../../../core/resources/manager_fonts.dart';
import '../../../core/resources/manager_routes.dart';
import '../../../core/resources/manager_strings.dart';
import '../../widget/Buttom/Buttomprimary.dart';

class LanguageApp extends StatelessWidget {
  LanguageApp({super.key});

  bool Checkboxbool = true;

  @override
  Widget build(BuildContext context) {
    LanguageControlle controlle = Get.put(LanguageControlle());
    Localee Translationsz1 = Get.put(Localee());
    String lang1 = Translationsz1.getlanguage(Get.deviceLocale!.languageCode);
    return Scaffold(
      body: Container(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 45, horizontal: 16),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  height: 139,
                  width: 139,
                  child: Image.asset("assets/LanguageApp/Group.png"),
                ),
                Wrap(
                  children: [
                    Container(
                      padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
                      margin: const EdgeInsetsDirectional.only(top: 20),
                      child: Text((ManagerStrings.Findyourhomeservic.tr),
                          style: TextStyle(
                              color: ManagerColors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                              fontFamily: Translationsz1.getlang(lang1))),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsetsDirectional.only(top: 20),
                  child: Text((ManagerStrings.selectlanguage.tr),
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          letterSpacing: 1.0,
                          color: ManagerColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: ManagerFontSizes.s22,
                          fontFamily: Translationsz1.getlang(lang1))),
                ),
                Container(
                  margin: const EdgeInsetsDirectional.only(top: 10),
                  child: ListTile(
                    leading: const Text((ManagerStrings.English),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: ManagerColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: ManagerFontSizes.s18,
                            fontFamily: ManagerFont.quicksand)),
                    trailing: GetBuilder<LanguageControlle>(
                        init: LanguageControlle(),
                        builder: (controller) => Radio(
                            fillColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.green),
                            activeColor: ManagerColors.primaryColor,
                            value: "1",
                            groupValue: controlle.language,
                            onChanged: (val) {
                              controlle.Equals(val!);
                              controlle.change("en");
                              Translationsz1.long1 = "en";
                            })),
                  ),
                ),
                const Divider(
                  indent: 16,
                  endIndent: 16,
                ),
                Container(
                  child: ListTile(
                    leading: Text((ManagerStrings.Arabic.tr),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: ManagerColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: ManagerFontSizes.s18,
                            fontFamily: Translationsz1.getlang(lang1))),
                    trailing: GetBuilder<LanguageControlle>(
                        init: LanguageControlle(),
                        builder: (controller) => Radio(
                            fillColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.green),
                            activeColor: ManagerColors.primaryColor,
                            value: "2",
                            groupValue: controlle.language,
                            onChanged: (val) {
                              controlle.Equals(val!);
                              controlle.change("ar");
                              Translationsz1.long1 = "ar";
                            })),
                  ),
                ),
                const Divider(
                  indent: 16,
                  endIndent: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsetsDirectional.only(start: 0, top: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GetBuilder<LanguageControlle>(
                            builder: (controller) {
                              return Checkbox(

                                  activeColor: ManagerColors.green,
                                  value: controller.Checkboxbool,
                                  onChanged: (bool) {
                                    controller.Checkbox_(bool!);
                                  });
                            },
                          ),
                          Text((ManagerStrings.Bycreatinganaccountyouagreetoour.tr),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: ManagerColors.black80,
                                  fontSize: ManagerFontSizes.s15,
                                  fontFamily: ManagerFont.din)),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsetsDirectional.only(start: 50),
                      child: Text((ManagerStrings.Term_and_Conditions.tr),
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: ManagerColors.green,
                              fontSize: ManagerFontSizes.s15,
                              fontFamily: ManagerFont.din)),
                    ),
                  ],
                ),
                GetBuilder<LanguageControlle>(
                  init: LanguageControlle(),
                  builder: (controller) {
                    return ButtomPrimary(
                      tital: ManagerStrings.Next.tr,
                      mtop: 45,
                      onPressed: () {
                        if (controller.Checkboxbool) {
                          Get.offNamed(ManagerRoutes.onboarding1);
                        }
                      },
                    );
                  },
                )
              ],
            ),
          ],
        )
      ),
    );
  }
}
