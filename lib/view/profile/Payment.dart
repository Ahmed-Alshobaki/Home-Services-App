import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/resources/manager_colors.dart';

import '../../controlle/Payment/Payment.dart';
import '../../core/resources/manager_fonts.dart';
import '../../core/resources/manager_strings.dart';


class Payment extends StatelessWidget {
   Payment({super.key});
  ControllerPayment  controllerPayment = Get.put(ControllerPayment());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          ManagerStrings.Payment,
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
      body: Container(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 30,horizontal: 30 ),
        color: ManagerColors.greenfath,
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset("assets/payment/card.png"),
                Image.asset("assets/payment/card2.png"),
               const SizedBox(height: 120,),

               InkWell(
                 onTap: (){
                   controllerPayment.gotoAddCard();
                 },
                 child: Container(
                   width: 310,
                   height: 58,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: ManagerColors.green,
                   ),
                   child: const Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.add,size: 25,color: ManagerColors.white,),
                       Text(
                         ManagerStrings.AddCard,
                         style: TextStyle(
                             color: Colors.white,
                             fontFamily: ManagerFont.quicksand,
                             fontSize: 20),
                         textAlign: TextAlign.center,
                       ),
                     ],
                   ),
                 ),
               )
              ],
            )
          ],
        ),
      ),
    );
  }
}
