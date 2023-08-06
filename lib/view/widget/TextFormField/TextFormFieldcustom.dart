import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Localizations/welcome page/onboarding1/onboarding.dart';
import '../../../core/resources/manager_colors.dart';
import '../../../core/resources/manager_font_sizes.dart';
import '../../../core/resources/manager_strings.dart';

class TextFormFieldcustom extends StatelessWidget {
   String tital ;
  String hint;
  Widget Iconn;
 bool obscureText  ;


   TextFormFieldcustom({required this.tital, required this.hint, required this.Iconn, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    // Translations1 Translationsz1 = Get.put(Translations1());
    // String lang1 = Translationsz1.getlanguage(Get.deviceLocale!.languageCode);
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hint.tr,
          fillColor: ManagerColors.greenfath,
          filled: true,
          contentPadding:  EdgeInsetsDirectional.symmetric(
              vertical: 16, horizontal: 16),
          label: Text(
          tital.tr,
            style: TextStyle(
                color: ManagerColors.black,
                fontSize: ManagerFontSizes.s20,
               // fontFamily: Translationsz1.getlang(lang1)
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Iconn,


          disabledBorder:  OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.deepOrange
              )
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),

          ),
          focusedBorder:  OutlineInputBorder(

          ),
          enabledBorder:  OutlineInputBorder(
              borderSide:  BorderSide(color: ManagerColors.black95)
          )

      ),
    );
  }
}
