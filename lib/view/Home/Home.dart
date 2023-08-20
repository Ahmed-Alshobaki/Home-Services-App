import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/tab_item.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:shop/controlle/Home/Home.dart';
import 'package:shop/core/resources/manager_colors.dart';
import 'package:shop/core/resources/manager_strings.dart';
import 'package:shop/view/test.dart';

import '../../controlle/Home/Home.dart';
import '../../core/resources/manager_fonts.dart';
import '../test.dart';
import '../widget/BottomBarFloating.dart';

class Home extends StatelessWidget {
  Home({super.key});

  HomeControlle control = Get.put(HomeControlle());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text(
            ManagerStrings.Categories,
            style: TextStyle(
                color: Colors.black,
                fontFamily: ManagerFont.quicksand,
                fontSize: 20),
          ),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new),
          ),
        ),
      body: Container(
        margin: EdgeInsetsDirectional.symmetric(horizontal: 15, vertical: 0),
        child: ListView(
          shrinkWrap: false,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
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
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  ManagerStrings.Findhomeservice,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      fontFamily: ManagerFont.quicksand,
                      color: ManagerColors.black),
                ),
                const SizedBox(
                  height: 12,
                ),
                CarouselSlider(
                    items: control.listimages,
                    carouselController: control.buttonCarouselController,
                    options: CarouselOptions(
                      onPageChanged: (i, o) {
                        control.getdataindex(i);
                        control.gotopag();
                        print(control.indexx);
                      },
                      height: 150,
                      aspectRatio: 16 / 9,
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
                    )),

                Container(
                  alignment: Alignment.center,
                  child: GetBuilder<HomeControlle>(
                    builder: (controller) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                                      3,
                                (index) => AnimatedContainer(
                              margin: EdgeInsetsDirectional.only(start: 5),
                              duration: Duration(seconds: 500),
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color:control.zon(index),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    const Text(
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
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                
                Container(

                    height: 330,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                
                                  height: 200,
                                  width: double.infinity,
                                  child: const Card(
                                      child: Column(
                                    children: [
                                      Expanded(
                                        child: Image(
                                            image: AssetImage(
                                                "assets/home/Group1a.png")),
                                      ),
                                      Text(
                                        "hourly cleaning",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: ManagerFont.quicksand),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  )),
                                )),
                                Expanded(
                                    child: Container(
                                  height: 200,
                                  width: double.infinity,
                                  child: const Card(
                                      child: Column(
                                    children: [
                                      Expanded(
                                        child: Image(
                                            image: AssetImage(
                                                "assets/home/Group2a.png")),
                                      ),
                                      Text(
                                        "contract cleaning",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: ManagerFont.quicksand),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  )),
                                )),
                              ],
                            ),
                            Container(

                              child: Row(
                                
                                children: [
                                  Expanded(
                                      child: Container(
                                    height: 200,
                                    width: double.infinity,
                                    child: Card(
                                        child: Column(
                                      children: [
                                        Expanded(
                                          child: Image(
                                              image: AssetImage(
                                                  "assets/home/Group2.png")),
                                        ),
                                        Text(
                                          "car wash",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: ManagerFont.quicksand),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                      ],
                                    )),
                                  )),
                                  Expanded(
                                      child: Container(
                                        margin: EdgeInsetsDirectional.symmetric(
                                            vertical: 10),
                                    height: 200,
                                    width: double.infinity,
                                    child: const Card(
                                        child: Column(
                                      children: [
                                        Expanded(
                                          child: Image(
                                              image: AssetImage(
                                                  "assets/home/Group4a.png")),
                                        ),
                                        Text(
                                          "electrical",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: ManagerFont.quicksand),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                      ],
                                    )),
                                  )),

                                ],
                              ),
                            ),

                          ],
                        ),

                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
