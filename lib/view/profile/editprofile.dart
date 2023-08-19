import 'package:flutter/material.dart';

import '../../core/resources/manager_colors.dart';
import '../../core/resources/manager_fonts.dart';
import '../../core/resources/manager_strings.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            Container(

              height: 200,
              width: 389,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsetsDirectional.only(top: 8),
                      child: Image(image: AssetImage("assets/profile/profile.png"))),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    ManagerStrings.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: ManagerFont.quicksand,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    height: 35,
                    minWidth: 76,
                    onPressed: () {},
                    child: Text("edit"),
                    color: ManagerColors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
