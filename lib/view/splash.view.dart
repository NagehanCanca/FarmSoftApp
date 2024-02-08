import 'dart:async';
import 'package:farm_soft/view/login/view/login.view.dart';
import 'package:get/get.dart';
import 'package:farm_soft/utils/global.colors.dart';
import 'package:flutter/material.dart';


class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(() => LoginView());
    });


    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: const Center(
        child: Text(
          'FarmSoft',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
