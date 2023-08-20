import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

final List<String> genderItems = [
  'Male',
  'Female',
];

String? selectedValue;

final _formKey = GlobalKey<FormState>();

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16),
                hintText: 'Enter Your Full Name.',
                hintStyle: const TextStyle(fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 30),

            const SizedBox(height: 30),
            TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              },
              child: const Text('Submit Button'),
            ),
          ],
        ),
      ),
    ),
  );
}