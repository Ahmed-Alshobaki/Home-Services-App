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
      ManagerStrings.ExpertPeoplesub : "لدينا أفضل الأفراد في مجالهم يعملون من أجلك فقط. إنهم مدربون جيدًا وقادرون على التعامل مع أي شيء تحتاجه.",
      ManagerStrings.AllInOnePlace :"نجمع كل احتيجاتك",
      ManagerStrings.AllInOnePlacesub : "لدينا جميع الخدمات المنزلية كل ما تحتاجة بشكل يومي وسهولةالاستخدام",
      ManagerStrings.Findyourhomeservic: "جميع الخدمات المنزلية في مكان واحد",
      ManagerStrings.selectlanguage : "اختار اللغة",
      ManagerStrings.Arabic : "العربية",
      ManagerStrings.Bycreatinganaccountyouagreetoour : "بتسجيلك هنا فانت توافق علي ",
      ManagerStrings.Term_and_Conditions : "الشروط والاحكام",
      ManagerStrings.Login : "تسجيل الدخول",
      ManagerStrings.Email : "الايميل",
      ManagerStrings.Password : "رقم المرور",
    },
    "en" : {
      ManagerStrings.EasyProcess  : "EasyProcess",
      ManagerStrings.sube2  :  ManagerStrings.sube2 ,
      ManagerStrings.Skip : "Skip",
      ManagerStrings.Next : "Next",
      ManagerStrings.ExpertPeople : ManagerStrings.ExpertPeople,
      ManagerStrings.ExpertPeoplesub : ManagerStrings.ExpertPeoplesub,
      ManagerStrings.AllInOnePlace : ManagerStrings.AllInOnePlace,
      ManagerStrings.AllInOnePlacesub : ManagerStrings.AllInOnePlacesub,
      ManagerStrings.Findyourhomeservic :   ManagerStrings.Findyourhomeservic,
      ManagerStrings.selectlanguage : ManagerStrings.selectlanguage,
      ManagerStrings.Arabic : ManagerStrings.Arabic,
      ManagerStrings.Bycreatinganaccountyouagreetoour : ManagerStrings.Bycreatinganaccountyouagreetoour,
      ManagerStrings.Term_and_Conditions : ManagerStrings.Term_and_Conditions,
      ManagerStrings.Login : ManagerStrings.Login,
      ManagerStrings.Email : ManagerStrings.Email,
      ManagerStrings. Password : ManagerStrings.Password,

    }
  };

String en_US = "en";
String ar_JO = "ar";
String? long1 ;


  String getlanguage(String s){
  if (s.contains(en_US)) {
   return "en";

  }else if(s.contains(ar_JO)){
    return "ar";
  }
  return "null";
}
String getlang (String lang){
    if (lang=="ar"||long1=="ar") {
      return ManagerFont.din;
    }else{ return ManagerFont.quicksand;};
    return "null";
}
}