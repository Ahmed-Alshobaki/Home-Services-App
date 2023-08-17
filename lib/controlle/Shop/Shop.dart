import 'package:get/get.dart';

class ShopController extends GetxController{
  late int visit = 2;
  getdata(int index ){
    visit = index;
    update();
  }
}