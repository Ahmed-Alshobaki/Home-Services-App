import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controlle/editprofile/Editprofile.dart';
import '../../core/functions/validator.dart';

import '../../core/resources/manager_fonts.dart';
import '../../core/resources/manager_strings.dart';
import '../widget/Buttom/Buttomprimary.dart';
import '../widget/TextFormField/TextFormFieldcustom.dart';

class Editprofile extends StatelessWidget {
   Editprofile({super.key});
   EditProfileController editProfileController = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        //F9FFF7
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text(
            ManagerStrings.EditProfile,
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
      body: ListView(children: [
        Container(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Container(

                height: 180,
                width: 389,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsetsDirectional.only(top: 8),
                        child: const Image(image: AssetImage("assets/profile/profile.png"))),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      ManagerStrings.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: ManagerFont.quicksand,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              Form(child: Column(
                children: [
                  TextFormFieldcustom(
                    controller: editProfileController.name,
                    validator: (val) {
                      return validator(val!, 15, "name");
                    },
                    tital: ManagerStrings.FullName,
                    hint: ManagerStrings.EnterYourFullName.tr,
                    Iconn: Icon(Icons.person_outline),
                    obscureText: false,
                  ),
                  const SizedBox(height: 20,),
                  TextFormFieldcustom(
                    controller: editProfileController.email,
                    validator: (val) {
                      return validator(val!, 25, "email");
                    },
                    tital: ManagerStrings.Email,
                    hint: ManagerStrings.EnterYourEmail.tr,
                    Iconn: const Icon(Icons.email_outlined),
                    obscureText: false,
                  ),
                  const SizedBox(height: 20,),
                  GetBuilder<EditProfileController>(

                    builder: (controller) {
                      return TextFormFieldcustom(
                        controller: editProfileController.password,
                        validator: (val) {
                          return validator(val!, 6, "password");
                        },
                        obscureText: editProfileController.obscureText,
                        tital: ManagerStrings.Password,
                        hint: ManagerStrings.EnterYourPassword.tr,
                        Iconn: IconButton(
                          onPressed: () {
                            controller.cheng();
                          },
                          icon: controller.obscureText
                              ? const Icon(Icons.visibility_off_outlined)
                              : const Icon(Icons.remove_red_eye_outlined),
                        ),
                      );
                    },
                  ),
                  ButtomPrimary(tital: 'Save Changes',onPressed: (){},mtop: 45,),
                  const SizedBox(height: 30,),
                  Container(
                    height:50 ,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color(0x1AFF0000),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("assets/editProfile/del_alt_light.png")),
                        Text(
                          ManagerStrings.DeleteAccoun,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: ManagerFont.SemiBold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  )

                ],

              ))



            ],
          ),
        ),
      ],)
    );
  }
}
