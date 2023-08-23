import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/icon/home_icons.dart';


class BottomBarFloatinn extends StatelessWidget {
    int indexSelected = 0;
    Function(int)? onTap;
    List<TabItem<dynamic>>? itemss;
   static List<TabItem> items = [
      const TabItem(
        icon: Home.home_1,
        title: "Home"

      ),
      const TabItem(
        icon:Home.doc_text,
          title: "History"
      ),
      const TabItem(
        icon: Home.th_thumb_empty,
          title: "Categories"
      ),
      const TabItem(
        icon: Icons.person_outline,
          title: "Person"

      ),
    ];
   BottomBarFloatinn({super.key,required this.indexSelected ,required this.onTap,required this.itemss});

  @override
  Widget build(BuildContext context) {
    return BottomBarFloating(
        items: itemss!,
        backgroundColor: Colors.white,
        color: Colors.black45,
        colorSelected: Colors.green,
        indexSelected:indexSelected,
        onTap: onTap,

        );
  }
}
