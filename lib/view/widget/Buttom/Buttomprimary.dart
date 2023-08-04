import 'package:flutter/material.dart';

import '../../../core/resources/manager_colors.dart';
import '../../../core/resources/manager_font_sizes.dart';
import '../../../core/resources/manager_height.dart';
import '../../../core/resources/manager_strings.dart';
import '../../welcome page/onboarding1/onboarding1.dart';

class ButtomPrimary extends StatelessWidget {
  var gata;


   ButtomPrimary({ this.gata()?});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsetsDirectional.only(bottom: 20),
        child: MaterialButton(
          color: ManagerColors.green,
          height: ManagerHeights.h50,
          minWidth: ManagerHeights.h360,
          onPressed: () {
            gata();
          },
          child: const Text(ManagerStrings.Next),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(ManagerFontSizes.s15)),
        ));
  }
}
