import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/resources/manager_fonts.dart';
import 'package:shop/core/resources/manager_strings.dart';

import '../../controlle/Shop/Shop.dart';
import '../widget/Buttom/BottomBarFloating.dart';

class Categories extends StatelessWidget {
  Categories({super.key});

  ShopController shopController = Get.put(ShopController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FFF6),
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
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      bottomNavigationBar: GetBuilder<ShopController>(
        builder: (controller) {
          return BottomBarFloatinn(
            indexSelected: shopController.visit,
            onTap: (i) {
              shopController.getdata(i);
              shopController.gotopag();
            },
            itemss: BottomBarFloatinn.items,
          );
        },
      ),
      body: Container(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 15,horizontal: 10),
          height: double.infinity,
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

                            height: 190,
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
                      const Expanded(
                          child: SizedBox(
                            height: 190,
                            width: double.infinity,
                            child: Card(
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
                  const Row(
                    children: [
                      Expanded(
                          child: SizedBox(

                            height: 190,
                            width: double.infinity,
                            child: Card(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Image(
                                          image: AssetImage(
                                              "assets/home/Group2b.png")),
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
                      Expanded(
                          child: SizedBox(
                            height: 190,
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
                    ],
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: SizedBox(

                            height: 190,
                            width: double.infinity,
                            child: Card(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Image(
                                          image: AssetImage(
                                              "assets/home/Group1zon.png")),
                                    ),
                                    Text(
                                      "conditioning",
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
                          child: SizedBox(
                            height: 190,
                            width: double.infinity,
                            child: Card(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Image(
                                          image: AssetImage(
                                              "assets/home/Groupzon2.png")),
                                    ),
                                    Text(
                                      "plumbing",
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
                ],

              ),

            ],
          ))
    );
  }
}