import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controlle/Language/Languagecontrolle.dart';
import '../../../core/resources/manager_colors.dart';
import '../../../core/resources/manager_font_sizes.dart';
import '../../../core/resources/manager_fonts.dart';
import '../../../core/resources/manager_strings.dart';
import '../../widget/Buttom/Buttomprimary.dart';

class LanguageApp extends StatelessWidget {
  LanguageApp({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageControlle controlle = Get.put(LanguageControlle());
    return Scaffold(
      body: Container(
        padding: EdgeInsetsDirectional.symmetric(vertical: 100, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsetsDirectional.only(top: 10),
              height: 139,
              width: 139,
              child: Image.asset("assets/LanguageApp/Group.png"),
            ),
            Wrap(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(top: 45),
                  child: const Text((ManagerStrings.Findyourhomeservic),
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          letterSpacing: 3.0,
                          color: ManagerColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: ManagerFontSizes.s42,
                          fontFamily: ManagerFont.quicksand)),
                ),
              ],
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 65),
              child: const Text((ManagerStrings.selectlanguage),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      letterSpacing: 1.0,
                      color: ManagerColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: ManagerFontSizes.s22,
                      fontFamily: ManagerFont.quicksand)),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 10),
              child: ListTile(
                leading: Text((ManagerStrings.English),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: ManagerColors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: ManagerFontSizes.s18,
                        fontFamily: ManagerFont.quicksand)),
                trailing: GetBuilder<LanguageControlle>(
                  init: LanguageControlle(),
                  builder: (controller) =>Radio(value: "1", groupValue: controlle.language, onChanged: (val){
                    controlle.Equals(val!);

                  })
                ),
              ),
              // Container(child: ListTile(
              //   leading:  Text((ManagerStrings.English),
              //       textAlign: TextAlign.left,
              //       style: TextStyle(
              //           color: ManagerColors.black,
              //           fontWeight: FontWeight.bold,
              //           fontSize: ManagerFontSizes.s18,
              //           fontFamily: ManagerFont.quicksand)),
              //   trailing: Radio(value: " ", onChanged: (vale1) {
              //     language = vale1!;
              //   }, groupValue: language),
              //
              // ),)
            ),
            Divider(
             indent:16 ,
              endIndent:16 ,
            ),
            Container(
              child: ListTile(
                leading: Text((ManagerStrings.Arabic),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: ManagerColors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: ManagerFontSizes.s18,
                        fontFamily: ManagerFont.quicksand)),
                trailing: GetBuilder<LanguageControlle>(
                    init: LanguageControlle(),
                    builder: (controller) =>Radio(value: "2", groupValue: controlle.language, onChanged: (val){
                      controlle.Equals(val!);

                    })
                ),
              ),
              // Container(child: ListTile(
              //   leading:  Text((ManagerStrings.English),
              //       textAlign: TextAlign.left,
              //       style: TextStyle(
              //           color: ManagerColors.black,
              //           fontWeight: FontWeight.bold,
              //           fontSize: ManagerFontSizes.s18,
              //           fontFamily: ManagerFont.quicksand)),
              //   trailing: Radio(value: " ", onChanged: (vale1) {
              //     language = vale1!;
              //   }, groupValue: language),
              //
              // ),)
            ),
            Divider(
              indent:16 ,
              endIndent:16 ,
            ),
            ButtomPrimary(),
          ],
        ),
      ),
    );
  }
}
