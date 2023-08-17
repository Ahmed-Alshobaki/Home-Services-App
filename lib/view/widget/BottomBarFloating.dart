import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomBarFloatinn extends StatelessWidget {
    int indexSelected = 0;
    Function(int)? onTap;
    List<TabItem<dynamic>>? itemss;
   static List<TabItem> items = [
      TabItem(
        icon: Icons.home_outlined,
        title: 'Home',
      ),


      TabItem(
        icon: Icons.shopping_cart_outlined,
        title: 'Cart',
      ),
      TabItem(
        icon: Icons.space_dashboard_outlined,
        title: 'Shop',
      ),
      TabItem(
        icon: Icons.person_2_outlined,
        title: 'profile',
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
