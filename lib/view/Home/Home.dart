import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/tab_item.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:shop/controlle/Home/Home.dart';
import 'package:shop/core/resources/manager_colors.dart';
import 'package:shop/core/resources/manager_strings.dart';

import '../../core/resources/manager_fonts.dart';

class Home extends StatelessWidget {
   Home({super.key});
   HomeControlle control = Get.put(HomeControlle());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
            onTap: () {}, child: Image.asset("assets/home/Bell_pin.png")),
        title: Image.asset("assets/home/Group2.png"),
      ),
      body: Container(
        margin: EdgeInsetsDirectional.symmetric(horizontal: 15),
        child: ListView(
          children:  [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25,),
                const Row(
                  children: [
                    Text(
                      ManagerStrings.goodmorning,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          fontFamily: ManagerFont.quicksandRegular,
                          color: ManagerColors.black),
                    ),
                    Text(ManagerStrings.goodname,
                        style: TextStyle(
                            fontSize: 17,
                            fontFamily: ManagerFont.quicksandRegular,
                            fontWeight: FontWeight.w500,
                            color: Color(
                              0xffF5DF99,
                            ))),
                  ],
                ),
                const SizedBox(height: 10,),
                Text(
                  ManagerStrings.Findhomeservice,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      fontFamily: ManagerFont.quicksand,
                      color: ManagerColors.black),
                ),

                CarouselSlider(
                    items: listimages,
                    carouselController:control.buttonCarouselController ,
                    options: CarouselOptions(
                      onPageChanged: (i,o){
                      },
                      height: 150,
                      aspectRatio: 16/9,
                      viewportFraction: 0.8,
                      initialPage: 0,

                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      pauseAutoPlayInFiniteScroll: true,
                      pauseAutoPlayOnManualNavigate: true,
                      animateToClosest: true,
                      pauseAutoPlayOnTouch: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 600),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,

                    )
                ),
                Row(children: [
                  Text(
                    ManagerStrings.Ourservices,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: ManagerFont.quicksand,
                        color: ManagerColors.black),
                  ),
                  Spacer(),
                  Text(
                    ManagerStrings.SeeALL,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: ManagerFont.quicksand,
                        color: ManagerColors.green),
                  ),
                ],),
                Container(
                  alignment: Alignment.bottomCenter,

                  child: GetBuilder<HomeControlle>(
                    init:HomeControlle() ,
                    builder: ( controller) {
                      return  BottomBarFloating(
                          items: items,
                          backgroundColor: Colors.white,
                          color: Colors.black45,
                          colorSelected: Colors.green,
                          indexSelected: control.visit,
                          onTap: (int index){
                            control.getdata(index);

                          });
                    },),
                )
              ],
            ),

          ],

        ),
      ),
    );
  }
}
 late List<Widget>? listimages = [Image.asset("assets/home/1.png"),Image.asset("assets/home/1.png"),Image.asset("assets/home/1.png")];

List<TabItem> items = [
  TabItem(
    icon: Icons.home,
   title: 'Home',
  ),


  TabItem(
    icon: Icons.shopping_cart_outlined,
    title: 'Cart',
  ),
  TabItem(
    icon: Icons.space_dashboard_sharp,
    title: 'Shop',
  ),
  TabItem(
    icon: Icons.person,
    title: 'profile',
  ),
];