import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/resources/manager_colors.dart';

import '../../controlle/profile/porfile.dart';
import '../../core/resources/manager_fonts.dart';
import '../../core/resources/manager_strings.dart';
import '../widget/BottomBarFloating.dart';

class Profile extends StatelessWidget {
   Profile({super.key});
  porfileController profilecontroller = Get.put(porfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FFF7),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          ManagerStrings.Profile,
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
      bottomNavigationBar: BottomBarFloatinn(indexSelected: profilecontroller.visit, onTap: (int) {
        profilecontroller.getdata(int);

      }, itemss: BottomBarFloatinn.items,),
      body: Container(
        padding: EdgeInsetsDirectional.symmetric(vertical: 20,horizontal: 20),
        child:  Column(
          children: [
            Container(
              padding: EdgeInsetsDirectional.symmetric(vertical:15),
              height: 218,
              width: 389,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child:   Column(

                children: [

                  Image(image: AssetImage("assets/profile/profile.png")),
                  SizedBox(height: 10,),
                  Text(
                    ManagerStrings.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: ManagerFont.quicksand,
                        fontSize: 16),
                  ),
                  SizedBox(height: 15,),
                  MaterialButton(
                    height: 35,
                    minWidth: 76,
                    onPressed: (){},child: Text("edit"),color:ManagerColors.green,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),)
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
