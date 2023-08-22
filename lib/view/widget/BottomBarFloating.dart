import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../core/constant/icon/my_flutter_app_icons.dart';

class BottomBarFloatinn extends StatelessWidget {
    int indexSelected = 0;
    Function(int)? onTap;
    List<TabItem<dynamic>>? itemss;
   static List<TabItem> items = [
      const TabItem(
        icon: Icons.home_outlined,
        title: "Home"

      ),
      const TabItem(
        icon:MyFlutterApp.doc_text,
          title: "History"
      ),
      const TabItem(
        icon: MyFlutterApp.th_thumb_empty,
          title: "Categories"
      ),
      const TabItem(
        icon: Icons.person_2_outlined,
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
