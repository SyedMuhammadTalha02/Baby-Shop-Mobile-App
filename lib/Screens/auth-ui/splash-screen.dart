import 'dart:async';

import 'package:baby_shop/Screens/auth-ui/welcome-screen.dart';
import 'package:baby_shop/Utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      // Navigate to your HomeScreen (or any other screen)
      Get.offAll(() =>
          WelcomeScreem()); // Replace HomeScreen() with your desired screen
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppConstant.appSecondryColor,
        appBar: AppBar(
          backgroundColor: AppConstant.appSecondryColor,
          elevation: 0,
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: Get.width,
                  alignment: Alignment.center,
                  child: Lottie.asset('assets/images/splash2.json'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: Get.width,
                alignment: Alignment.center,
                child: Text(
                  'Powered By Aptect Eproject',
                  style: TextStyle(
                    color: AppConstant.appTextColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
