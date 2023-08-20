import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/view/test.dart';

import '../../controlle/addCard/addcard.dart';
import '../../core/functions/validator.dart';
import '../../core/resources/manager_fonts.dart';
import '../../core/resources/manager_strings.dart';
import '../widget/TextFormField/TextFormFieldcustom.dart';

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
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Form(
                child: Column(
              children: [
                TextFormFieldcustom(
                  controller: addcardcontroller.name,
                  validator: (val) {
                    return validator(val!, 15, "name");
                  },
                  tital: ManagerStrings.CardName,
                  hint: ManagerStrings.EnterYourFullName.tr,
                  Iconn: Icon(Icons.person_outline),
                  obscureText: false,
                ),
                SizedBox(
                  height: 10,
                ),
                // Container(
                //   width: 400,
                //   child: DropdownButton<String>(
                //       items: addcardcontroller.cards
                //           .map((itam) => DropdownMenuItem<String>(
                //               value:itam ,
                //               child: Text(itam!, style: TextStyle(fontSize: 24),
                //               )
                //       )
                //       ).toList(),
                //       onChanged: (itam)=>addcardcontroller.cardselect= itam),
                // )
                DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    // Add Horizontal padding using menuItemStyleData.padding so it matches
                    // the menu padding when button's width is not specified.
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // Add more decoration..
                  ),
                  hint: const Text(
                    'Select Your Gender',
                    style: TextStyle(fontSize: 14),
                  ),
                  items: genderItems
                      .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
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
                    selectedValue = value.toString();
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.only(right: 8),
                  ),
                  iconStyleData: const IconStyleData(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black45,
                    ),
                    iconSize: 24,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
