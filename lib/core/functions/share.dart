import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Share extends GetxService{

        late SharedPreferences zon ;
  Future<Share>init()async{
      zon = await SharedPreferences.getInstance();
    return this;
  }
   Future oninit()async{
    await  Get.putAsync(() => Share().init());
    FirebaseAuth.instance
        .authStateChanges()
        .listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    }

    );
   }
}


