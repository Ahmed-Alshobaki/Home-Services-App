import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/resources/manager_colors.dart';

import '../../controlle/History/HistoryControlle.dart';
import '../../core/resources/manager_fonts.dart';
import '../../core/resources/manager_strings.dart';
import '../widget/BottomBarFloating.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    HistoryControlle  historycontrolle = Get.put(HistoryControlle());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          ManagerStrings.History,
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
      bottomNavigationBar: GetBuilder<HistoryControlle>(
        init: HistoryControlle(),
        builder: (controller) {
          return BottomBarFloatinn(indexSelected: historycontrolle.visit,onTap: (i){
            historycontrolle.getdata(i);
            print(i);
          },itemss:BottomBarFloatinn.items ,);

        },
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.white,

        child: ContainedTabBarView(
          tabBarProperties: const TabBarProperties(
                indicatorColor: Colors.green,
                  labelColor: Colors.black,
                  unselectedLabelColor:Color(0xffB5B5B5),
          ),
          tabs: const [
            Text('Underway',style: TextStyle(),),
            Text('Previous'),
          ],
          views: [
            Container(
              color: ManagerColors.greenfath,
             child: Center(
               child: Image.asset("assets/History/nohistory.png"),
             ),
            ),
            Container(
              color: ManagerColors.greenfath,
              child: Image.asset("assets/History/nohistory.png"),
            )
          ],
          onChange: (index) => print(index),
        ),
      ),
    );
  }
}
