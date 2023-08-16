import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeControlle extends GetxController{
  CarouselController buttonCarouselController = CarouselController();
   late int visit = 0;
      getdata(int index ){
        visit = index;
        update();
      }

}