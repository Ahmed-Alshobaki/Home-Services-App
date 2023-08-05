import 'dart:ui';

import 'package:get/get.dart';
import 'package:shop/core/resources/manager_strings.dart';

import '../../../core/resources/manager_fonts.dart';

class Translations1 implements Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "ar" : {
      ManagerStrings.EasyProcess :"سهولة الوصول",
      ManagerStrings.sube2 :"ابحث عن كل احتياجات منزلك في مكان واحد. نحن نقدم كل الخدمات لجعل تجربة منزلك سلسة.",
      ManagerStrings.Skip : "تخطي",
      ManagerStrings.Next : "دخول",
      ManagerStrings.ExpertPeople : "عمالة مميزة",
      ManagerStrings.ExpertPeoplesub : "لدينا أفضل الأفراد في مجالهم يعملون من أجلك فقط. إنهم مدربون جيدًا وقادرون على التعامل مع أي شيء تحتاجه."
    },
    "en" : {
      ManagerStrings.EasyProcess  : "EasyProcess",
      ManagerStrings.sube2  :  ManagerStrings.sube2 ,
      ManagerStrings.Skip : "Skip",
      ManagerStrings.Next : "Next",
      ManagerStrings.ExpertPeople : ManagerStrings.ExpertPeople,
      ManagerStrings.ExpertPeoplesub : ManagerStrings.ExpertPeoplesub
    }
  };

String en_US = "en";
String ar_JO = "ar";


  String getlanguage(String s){
  if (s.contains(en_US)) {
   return "en";

  }else if(s.contains(ar_JO)){
    return "ar";
  }
  return "null";
}
String getlang (String lang){
    if (lang=="ar") {
      return ManagerFont.din;
    }else{ return ManagerFont.quicksand;};
    return "null";
}
}