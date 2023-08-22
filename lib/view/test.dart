import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.blue,
          width: 200,
          height: 300,
          child: ContainedTabBarView(
            tabs: [
              Text('First'),
              Text('Second'),
            ],
            views: [
              Container(color: Colors.red),
              Container(color: Colors.green)
            ],
            onChange: (index) => print(index),
          ),
        ),
      ) ,
    );
  }
}
