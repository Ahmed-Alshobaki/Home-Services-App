import 'package:awesome_bottom_bar/tab_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/resources/manager_routes.dart';

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


  late List<Widget>? listimages = [Image.asset("assets/home/1.png"),Image.asset("assets/home/1.png"),Image.asset("assets/home/1.png")];
  getdataindex(int index){
    this.indexx = index;
    update();

  }

  gotopag(){
    if(visit==3){
      Get.toNamed(ManagerRoutes.Profile);
      update();
      visit=0;
    }
    if(visit==2){
      Get.toNamed(ManagerRoutes.Shop);
      update();
      visit=0;
    }
  }
}