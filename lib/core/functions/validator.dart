import 'package:get/get.dart';
import 'package:shop/core/resources/manager_strings.dart';
validator(String val,min,type){
     if (type=="username") {
    if (!GetUtils.isUsername(type)) {
      return ManagerStrings.notvalidUsername.tr;
    }
  }
      // if(type=="email"){
      //   if (!GetUtils.isEmail(type)) {
      //     return ManagerStrings.notvalidemail.tr;
      //   }
      // }

     if (val.isEmpty) {
       return "no Empty ";
     }


  if (val.length<=4) {
    return ManagerStrings.characters6.tr;
  }

}