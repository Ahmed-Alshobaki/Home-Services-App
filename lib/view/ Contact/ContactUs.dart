import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controlle/ContacUs/ContacUscontrolle.dart';
import '../../core/functions/validator.dart';
import '../../core/resources/manager_colors.dart';
import '../../core/resources/manager_font_sizes.dart';
import '../../core/resources/manager_fonts.dart';
import '../../core/resources/manager_strings.dart';
import '../widget/Buttom/Buttomprimary.dart';
import '../widget/TextFormField/TextForm2.dart';

class  ContacUs extends StatelessWidget {
    ContacUs({super.key});
  ContacUscontrolle  contacUscontrolle  = Get.put(ContacUscontrolle());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          ManagerStrings. contactUs,
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
        padding: EdgeInsetsDirectional.symmetric(vertical: 20,horizontal: 20),
        child: SingleChildScrollView(
       child:    Column(
         children: [
           const Text(
             ManagerStrings.contact1,
             style: TextStyle(
                 color: Color(0xffB5B5B5),
                 fontFamily: ManagerFont.quicksand,
                 fontSize: 20),
           ),
           const SizedBox(height: 35,),
           TextFormFieldcustom2(
             controller: contacUscontrolle.name,
             validator: (val) {
               return validator(val!, 15, "name");
             },
             tital: ManagerStrings.name1,
             hint: ManagerStrings.EnterYourFullName,

             obscureText: false,
           ),
           const SizedBox(height: 25,),
           TextFormFieldcustom2(
             controller: contacUscontrolle.email,
             validator: (val) {
               return validator(val!, 15, "email");
             },
             tital: ManagerStrings.email,
             hint: ManagerStrings.EnterYourEmail,

             obscureText: false,
           ),
           const SizedBox(height: 25,),
           TextFormField(
             controller: contacUscontrolle.Massage,
             validator: (val) {
               return validator(val!, 15, "email");
             },
             obscureText: false,
             maxLines: 5, // زيادة عدد الأسطر لتحقيق الارتفاع المطلوب
             decoration: InputDecoration(
               hintText: ManagerStrings.EnterYourMassage,
               fillColor: ManagerColors.greenfath,
               filled: true,
               contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
               label: const Text(
                 ManagerStrings.Massage,
                 style: TextStyle(
                   color: ManagerColors.black,
                   fontSize: ManagerFontSizes.s20,
                 ),
               ),
               floatingLabelBehavior: FloatingLabelBehavior.always,
               disabledBorder: const OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.deepOrange),
               ),
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(8),
               ),
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: ManagerColors.green),
               ),
               enabledBorder: const OutlineInputBorder(
                 borderSide: BorderSide(color: ManagerColors.black95),
               ),
             ),
           ),
           const SizedBox(height: 40,),
           ButtomPrimary(onPressed: () {  }, tital: 'Send',)

         ],
       ),
        ),
      ),
    );
  }
}
