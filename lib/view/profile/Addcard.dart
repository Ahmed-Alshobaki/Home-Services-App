import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controlle/addCard/addcard.dart';
import '../../core/functions/validator.dart';
import '../../core/resources/manager_colors.dart';
import '../../core/resources/manager_font_sizes.dart';
import '../../core/resources/manager_fonts.dart';
import '../../core/resources/manager_strings.dart';
import '../widget/Buttom/Buttomprimary.dart';
import '../widget/TextFormField/TextForm2.dart';
class Addcard extends StatelessWidget {
  Addcard({super.key});

  Addcardcontroller addcardcontroller = Get.put(Addcardcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          ManagerStrings.AddCard,
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
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: ListView(
          children: [
            Column(
              children: [
                Form(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormFieldcustom2(
                          controller: addcardcontroller.CardName,
                          validator: (val) {
                            return validator(val!, 15, "name");
                          },
                          tital: ManagerStrings.CardName,
                          hint: ManagerStrings.name,

                          obscureText: false,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        DropdownButtonFormField2<String>(
                          isExpanded: true,
                          decoration: InputDecoration(
                              hintText: "Visa",
                              fillColor: ManagerColors.greenfath,
                              filled: true,
                              contentPadding:  const EdgeInsetsDirectional.symmetric(
                                  vertical: 14, horizontal: 14),
                              label: const Text(
                                "Card type",
                                style: TextStyle(
                                  color: ManagerColors.black,
                                  fontSize: ManagerFontSizes.s20,
                                  // fontFamily: Translationsz1.getlang(lang1)
                                ),
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.always,

                              disabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.deepOrange)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: ManagerColors.green)),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: ManagerColors.black95))),

                          //   ),

                          items: addcardcontroller.cards
                              .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item!,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                              .toList(),

                          validator: (value) {
                            if (value == null) {
                              return 'Please select gender.';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            //Do something when selected item is changed.
                          },
                          onSaved: (value) {

                            addcardcontroller.cardselect = value.toString();
                          },
                          buttonStyleData:  const ButtonStyleData(
                              padding: EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(

                              )

                          ),
                          iconStyleData: const IconStyleData(
                            icon: Icon(
                              Icons.expand_more_sharp,
                              color: Colors.black,
                            ),
                            iconSize: 24,
                          ),
                          dropdownStyleData: DropdownStyleData(

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white

                            ),
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            padding: EdgeInsets.symmetric(horizontal: 1),
                          ),

                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormFieldcustom2(
                          controller: addcardcontroller.CardNum,
                          validator: (val) {
                            return validator(val!, 15, "name");
                          },
                          tital: ManagerStrings.CardNum,
                          hint: "9988",


                          obscureText: false,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormFieldcustom2(
                          controller: addcardcontroller.ExpDate,
                          validator: (val) {
                            return validator(val!, 15, "name");
                          },
                          tital: ManagerStrings.ExpDate,
                          hint: "01/25",

                          obscureText: false,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormFieldcustom2(
                          controller: addcardcontroller.Cvv,
                          validator: (val) {
                            return validator(val!, 15, "name");
                          },
                          tital: ManagerStrings.Cvv,
                          hint: "999",

                          obscureText: false,
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                      ],
                    )),

                ButtomPrimary(tital:ManagerStrings.Save,onPressed: (){},)
              ],
            ),
          ],
        )
      ),
    );
  }
}
