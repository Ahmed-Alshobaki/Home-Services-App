import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Addcardcontroller extends GetxController{


  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController name = new TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();
  List<String?> cards = ["Visa","MasterCard","Discover",];
  String? cardselect = "Visa";

}
