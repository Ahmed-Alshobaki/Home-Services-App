import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';


class DialogA {

  static getDialog({required BuildContext context, required void Function()? btnOkOnPress
  ,required String tital,required DialogType dialogType,void Function()? btnCancelOnPress}){
    return  AwesomeDialog(
      context: context,
      dialogType:dialogType,
      animType: AnimType.topSlide,
        title: tital,
      //  desc: 'Dialog description here.............',
      btnCancelOnPress: btnCancelOnPress,

      btnOkOnPress: btnOkOnPress,
    ).show();
  }

}