import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controlle/splash/splash_controlle.dart';
import 'package:shop/core/resources/manager_assets.dart';
import 'package:shop/core/resources/manager_colors.dart';

class Splash extends StatelessWidget {
   Splash({super.key});
  SplashControlle splashControlle = Get.put(SplashControlle());
  @override
  Widget build(BuildContext context) {
   splashControlle.change();
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: ManagerColors.green,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional.center,
                child: Image.asset(
              ManagerAssets.group,
              filterQuality: FilterQuality.high,
            ))
          ],
        ),
      ),
    );
  }
}
