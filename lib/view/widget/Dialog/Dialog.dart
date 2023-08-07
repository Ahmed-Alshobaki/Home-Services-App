import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';


class DialogA {

  static getDialog({required BuildContext context, required void Function()? btnOkOnPress}){
    return  AwesomeDialog(
      context: context,
      dialogType: DialogType.success,
      animType: AnimType.topSlide,
      title: 'Success Reset',
      //  desc: 'Dialog description here.............',
      btnCancelOnPress: () {},
      btnOkOnPress: btnOkOnPress,
    ).show();
  }

}