import 'package:awesome_bottom_bar/tab_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeControlle extends GetxController{
  CarouselController buttonCarouselController = CarouselController();
   late int visit = 0;
   int indexx = 0;

      getdata(int index ){
        visit = index;
        update();
      }

      zon(int index){

      return  visit==index?Colors.green:Colors.black26;
      }

  List<TabItem> items = [
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
  late List<Widget>? listimages = [Image.asset("assets/home/1.png"),Image.asset("assets/home/1.png"),Image.asset("assets/home/1.png")];
  getdataindex(int index){
    this.indexx = index;
    update();

  }
}