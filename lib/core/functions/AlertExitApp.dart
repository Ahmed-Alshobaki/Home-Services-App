import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:path/path.dart';

import '../../view/widget/Dialog/Dialog.dart';

  Future zon({required BuildContext x}){
AwesomeDialog(
context: x,
dialogType: DialogType.info,
animType: AnimType.rightSlide,
title: 'Dialog Title',
desc: 'Dialog description here.............',
btnCancelOnPress: () {},
btnOkOnPress: () {},
).show();
return Future.value(true);
}
