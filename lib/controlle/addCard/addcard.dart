import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Addcardcontroller extends GetxController{


  TextEditingController CardName = new TextEditingController();
  TextEditingController CardType = new TextEditingController();
  TextEditingController CardNum = new TextEditingController();
  TextEditingController ExpDate = new TextEditingController();
  TextEditingController Cvv = new TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();
  List<String?> cards = ["Visa","MasterCard","Discover",];
  String? cardselect = "Visa";

}
