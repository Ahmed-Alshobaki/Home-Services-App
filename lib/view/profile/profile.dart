import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shop/core/resources/manager_colors.dart';
import 'package:shop/core/resources/manager_font_sizes.dart';
import 'package:shop/core/resources/manager_routes.dart';

import '../../controlle/profile/porfile.dart';
import '../../core/resources/manager_fonts.dart';
import '../../core/resources/manager_strings.dart';
import '../widget/Buttom/BottomBarFloating.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  porfileController profilecontroller = Get.put(porfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FFF7),
      //F9FFF7
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
      bottomNavigationBar: BottomBarFloatinn(
        indexSelected: profilecontroller.visit,
        onTap: (int) {
          profilecontroller.getdata(int);
          profilecontroller.gotopag();

        },
        itemss: BottomBarFloatinn.items,
      ),
      body: Container(
        padding: EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 20),
        child : SingleChildScrollView(
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
                        child: Image(
                            image: AssetImage("assets/profile/profile.png"))),
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
                    const SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      height: 35,
                      minWidth: 76,
                      onPressed: () {
                        profilecontroller.gotoedit();
                      },
                      child: Text("edit"),
                      color: ManagerColors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 387,
                height: 72,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      top: 24,
                      child: Opacity(
                        opacity: 0.64,
                        child: Container(
                          width: 24.93,
                          height: 24,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24.93,
                                height: 24,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(width: 24.93, height: 24),
                                    ),
                                    Positioned(
                                      left: 3.81,
                                      top: 2.17,
                                      child:
                                      Image.asset("assets/profile/card.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 344.07,
                      top: 24,
                      child: Opacity(
                        opacity: 0.84,
                        child: Container(
                          width: 24.93,
                          height: 24,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24.93,
                                height: 24,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(width: 24.93, height: 24),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 58,
                      top: 16,
                      child: SizedBox(
                        width: 176,
                        child: Text(
                          'Payment Methods',
                          style: TextStyle(
                            color: Color(0xFF1B1D21),
                            fontSize: 16,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w700,
                            height: 1.12,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 58,
                      top: 39,
                      child: InkWell(
                        onTap: (){
                          profilecontroller.gotoPayment();
                        },
                        child: SizedBox(
                          width: 224,
                          child: Text(
                            'Add your credit & debit cards',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14,
                              fontFamily: ManagerFont.SemiBold,
                              fontWeight: FontWeight.w500,
                              height: 1.29,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        right: 10,
                        top: 25,
                        child: Container(
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 387,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      top: 24,
                      child: Opacity(
                        opacity: 0.64,
                        child: Container(
                          width: 24.93,
                          height: 24,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24.93,
                                height: 24,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(width: 24.93, height: 24),
                                    ),
                                    Positioned(
                                      left: 3.81,
                                      top: 2.17,
                                      child: Image.asset(
                                          "assets/profile/marker.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 344.07,
                      top: 24,
                      child: Opacity(
                        opacity: 0.84,
                        child: Container(
                          width: 24.93,
                          height: 24,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24.93,
                                height: 24,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(width: 24.93, height: 24),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 58,
                      top: 16,
                      child: SizedBox(
                        width: 176,
                        child: Text(
                          'Location',
                          style: TextStyle(
                            color: Color(0xFF1B1D21),
                            fontSize: 16,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w700,
                            height: 1.12,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 58,
                      top: 39,
                      child: InkWell(
                        onTap: (){

                        },
                        child: SizedBox(
                          width: 224,
                          child: Text(
                            'Add your Home Location ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14,
                              fontFamily: ManagerFont.SemiBold,
                              fontWeight: FontWeight.w500,
                              height: 1.29,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        right: 10,
                        top: 25,
                        child: Container(
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 387,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      top: 24,
                      child: Opacity(
                        opacity: 0.64,
                        child: Container(
                          width: 24.93,
                          height: 24,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24.93,
                                height: 24,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(width: 24.93, height: 24),
                                    ),
                                    Positioned(
                                      left: 3.81,
                                      top: 2.17,
                                      child: Image.asset(
                                          "assets/profile/notify.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 344.07,
                      top: 24,
                      child: Opacity(
                        opacity: 0.84,
                        child: Container(
                          width: 24.93,
                          height: 24,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24.93,
                                height: 24,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(width: 24.93, height: 24),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 58,
                      top: 16,
                      child: SizedBox(
                        width: 176,
                        child: Text(
                          'Payment Methods',
                          style: TextStyle(
                            color: Color(0xFF1B1D21),
                            fontSize: 16,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w700,
                            height: 1.12,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 58,
                      top: 39,
                      child: SizedBox(
                        width: 224,
                        child: Text(
                          'Add your credit & debit cards',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14,
                            fontFamily: ManagerFont.SemiBold,
                            fontWeight: FontWeight.w500,
                            height: 1.29,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        right: 10,
                        top: 25,
                        child: Container(child: GetBuilder<porfileController>(
                          builder: (controller) {
                            return FlutterSwitch(
                              activeColor: ManagerColors.green,
                              height: 24,
                              width: 46,
                              valueFontSize: 24,
                              value: profilecontroller.valueSwitsh,
                              onToggle: (bool value) {
                                profilecontroller.getdataSwitsh(value);
                              },
                            );
                          },
                        )))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 387,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      top: 24,
                      child: Opacity(
                        opacity: 0.64,
                        child: Container(
                          width: 24.93,
                          height: 24,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24.93,
                                height: 24,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(width: 24.93, height: 24),
                                    ),
                                    Positioned(
                                      left: 3.81,
                                      top: 2.17,
                                      child: Image.asset(
                                          "assets/profile/Calling.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 344.07,
                      top: 24,
                      child: Opacity(
                        opacity: 0.84,
                        child: Container(
                          width: 24.93,
                          height: 24,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24.93,
                                height: 24,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(width: 24.93, height: 24),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 58,
                      top: 16,
                      child: SizedBox(
                        width: 176,
                        child: Text(
                          'Contact Us',
                          style: TextStyle(
                            color: Color(0xFF1B1D21),
                            fontSize: 16,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w700,
                            height: 1.12,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 58,
                      top: 39,
                      child: SizedBox(
                        width: 224,
                        child: Text(
                          'For daily update and others',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w500,
                            height: 1.29,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        right: 10,
                        top: 25,
                        child: Container(
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 387,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      top: 24,
                      child: Opacity(
                        opacity: 0.64,
                        child: Container(
                          width: 24.93,
                          height: 24,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24.93,
                                height: 24,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(width: 24.93, height: 24),
                                    ),
                                    Positioned(
                                      left: 3.81,
                                      top: 2.17,
                                      child: Image.asset(
                                          "assets/profile/Logout.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 344.07,
                      top: 24,
                      child: Opacity(
                        opacity: 0.84,
                        child: Container(
                          width: 24.93,
                          height: 24,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24.93,
                                height: 24,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(width: 24.93, height: 24),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                     Positioned(
                      left: 58,
                      top: 28,
                      child: InkWell(
                        onTap: ()async{
                          await FirebaseAuth.instance.signOut();
                          GoogleSignIn googleSignIn = GoogleSignIn();
                          googleSignIn.disconnect();
                          Get.offNamed(ManagerRoutes.Login);
                        },
                        child: const SizedBox(
                          width: 176,
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              color: Color(0xFF1B1D21),
                              fontSize: 16,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w700,
                              height: 1.12,
                            ),
                          ),
                        ),

                      ),
                    ),
                    Positioned(
                        right: 10,
                        top: 25,
                        child: Container(
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        ))
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
