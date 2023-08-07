import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/resources/manager_strings.dart';

import '../../../core/constant/apptheme.dart';
import '../../../core/resources/manager_fonts.dart';

class Translations1 implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "ar": {

          ManagerStrings.EasyProcess: "سهولة الوصول",
          ManagerStrings.sube2:
              "ابحث عن كل احتياجات منزلك في مكان واحد. نحن نقدم كل الخدمات لجعل تجربة منزلك سلسة.",
          ManagerStrings.Skip: "تخطي",
          ManagerStrings.Next: "التالي",
          ManagerStrings.ExpertPeople: "عمالة مميزة",
          ManagerStrings.ExpertPeoplesub:
              "لدينا أفضل الأفراد في مجالهم يعملون من أجلك فقط. إنهم مدربون جيدًا وقادرون على التعامل مع أي شيء تحتاجه.",
          ManagerStrings.AllInOnePlace: "نجمع كل احتيجاتك",
          ManagerStrings.AllInOnePlacesub:
              "لدينا جميع الخدمات المنزلية كل ما تحتاجة بشكل يومي وسهولةالاستخدام",
          ManagerStrings.Findyourhomeservic:
              "جميع الخدمات المنزلية في مكان واحد",
          ManagerStrings.selectlanguage: "اختار اللغة",
          ManagerStrings.Arabic: "العربية",
          ManagerStrings.Bycreatinganaccountyouagreetoour:
              "بتسجيلك هنا فانت توافق علي ",
          ManagerStrings.Term_and_Conditions: "الشروط والاحكام",
          ManagerStrings.Login: "تسجيل الدخول",
          ManagerStrings.Email: "الايميل",
          ManagerStrings.Password: "رقم المرور",
          // ManagerStrings. Password : "نسيت رقم المرور ؟",
          ManagerStrings.OR: "او",
          ManagerStrings.Facebook: "فيس بوك",
          ManagerStrings.Google: "جوجل",
          ManagerStrings.Dont_Have_Account: "ليس لديك حساب ؟",
          ManagerStrings.SignUp: "تسجيل جديد",
          ManagerStrings.Phone_and_password:
              "برجاء ادخال الايميل ورقم المرور للدخول",
          ManagerStrings.EnterYourPassword: "ادخل رقم المرور",
          ManagerStrings.EnterYourEmail: "ادخل الايميل الخاص بك",
          ManagerStrings.Forget: "نسيت رقم المرور ؟",
          ManagerStrings.Register: "تسجيل جديد",
          ManagerStrings.FullName: "اسمك الكامل",
          ManagerStrings.EnterYourFullName: "ادخل اسمك الكامل",
          ManagerStrings.Sign_in: "تسجيل دخول",
          ManagerStrings.Have_Account: "لديك حساب ؟",
          ManagerStrings.Forget2: "نسيت كلمة المرور",
          ManagerStrings.Enter_your_Phone_Number_to_reset_password:"برجاء الايميل الهاتف لتاكيد حسابك",
          ManagerStrings.Reset_Password: "ارسل",
          ManagerStrings.Otp : "رمز الدخول",
          ManagerStrings.Otptital : "رمز التحقيق تم ارسالة الي الايميل .....",
          ManagerStrings.Create_new_password : "برجاء ادخال كلمة مرور لتاكيد حسابك",
          ManagerStrings.Confirm_Password : "تاكيد رقم المرور",
          ManagerStrings.Submit : "تسجيل",
          ManagerStrings.notvalidUsername : "اسم مستخدم غير صالح",
          ManagerStrings.characters6 : "كلمة سر تتكون 6 احروف",
          ManagerStrings.notvalidemail : "الايميل غير صالح",
          ManagerStrings.notvalidphono : "رقم غير صالح",
          ManagerStrings.empty : "لايمكن لنص ان يكون فارغ",
        },
        "en": {
          ManagerStrings.EasyProcess: "EasyProcess",
          ManagerStrings.sube2: ManagerStrings.sube2,
          ManagerStrings.Skip: "Skip",
          ManagerStrings.Next: "Next",
          ManagerStrings.ExpertPeople: ManagerStrings.ExpertPeople,
          ManagerStrings.ExpertPeoplesub: ManagerStrings.ExpertPeoplesub,
          ManagerStrings.AllInOnePlace: ManagerStrings.AllInOnePlace,
          ManagerStrings.AllInOnePlacesub: ManagerStrings.AllInOnePlacesub,
          ManagerStrings.Findyourhomeservic: ManagerStrings.Findyourhomeservic,
          ManagerStrings.selectlanguage: ManagerStrings.selectlanguage,
          ManagerStrings.Arabic: ManagerStrings.Arabic,
          ManagerStrings.Bycreatinganaccountyouagreetoour:
              ManagerStrings.Bycreatinganaccountyouagreetoour,
          ManagerStrings.Term_and_Conditions:
              ManagerStrings.Term_and_Conditions,
          ManagerStrings.Login: ManagerStrings.Login,
          ManagerStrings.Email: ManagerStrings.Email,
          ManagerStrings.Password: ManagerStrings.Password,
          ManagerStrings.Forget: ManagerStrings.Forget,
          ManagerStrings.OR: ManagerStrings.OR,
          ManagerStrings.Facebook: ManagerStrings.Facebook,
          ManagerStrings.Google: ManagerStrings.Google,
          ManagerStrings.Dont_Have_Account: ManagerStrings.Dont_Have_Account,
          ManagerStrings.SignUp: ManagerStrings.SignUp,
          ManagerStrings.Phone_and_password: ManagerStrings.Phone_and_password,
          ManagerStrings.EnterYourPassword: ManagerStrings.EnterYourPassword,
          ManagerStrings.EnterYourEmail: ManagerStrings.EnterYourEmail,
          ManagerStrings.Register: ManagerStrings.Register,
          ManagerStrings.FullName: ManagerStrings.FullName,
          ManagerStrings.EnterYourFullName: ManagerStrings.EnterYourFullName,
          ManagerStrings.Have_Account: ManagerStrings.Have_Account,
          ManagerStrings.Sign_in: ManagerStrings.Sign_in,
          ManagerStrings.Forget2: ManagerStrings.Forget2,
          ManagerStrings.Enter_your_Phone_Number_to_reset_password:
              ManagerStrings.Enter_your_Phone_Number_to_reset_password,
          ManagerStrings.Reset_Password: ManagerStrings.Reset_Password,
          ManagerStrings.Otp : ManagerStrings.Otp,
          ManagerStrings.Otptital : ManagerStrings.Otptital,
          ManagerStrings.Create_new_password : ManagerStrings.Create_new_password,
          ManagerStrings.Confirm_Password : ManagerStrings.Confirm_Password,
          ManagerStrings.Submit : ManagerStrings.Submit,
          ManagerStrings.notvalidUsername : ManagerStrings.notvalidUsername,
          ManagerStrings.characters6 : ManagerStrings.characters6,
          ManagerStrings.notvalidemail : ManagerStrings.notvalidemail,
          ManagerStrings.notvalidphono : ManagerStrings.notvalidphono,
          ManagerStrings.empty : ManagerStrings.empty,

        }
      };




}
