import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:shop/core/resources/manager_fonts.dart';


class DialogA {

  static getDialog({bool dismissOnTouchOutside = false,String? desc,required BuildContext context, required void Function()? btnOkOnPress
  ,required String tital,required DialogType dialogType,void Function()? btnCancelOnPress}){
    return  AwesomeDialog(
      dismissOnTouchOutside: dismissOnTouchOutside,
      context: context,
      dialogType:dialogType,
      animType: AnimType.topSlide,
        desc:desc ,
        title: tital,
        titleTextStyle:const TextStyle(fontFamily: ManagerFont.quicksand,fontSize: 20) ,
         descTextStyle: const TextStyle(fontFamily: ManagerFont.SemiBold),
      //  desc: 'Dialog description here.............',
      btnCancelOnPress: btnCancelOnPress,

      btnOkOnPress: btnOkOnPress,
    ).show();
  }

}