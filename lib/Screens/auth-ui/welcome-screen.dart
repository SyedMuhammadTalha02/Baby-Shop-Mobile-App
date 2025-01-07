import 'package:baby_shop/Controllers/google-sign-in-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../Utils/app-constant.dart';
import 'sign-in-screen.dart';

class WelcomeScreem extends StatelessWidget {
  WelcomeScreem({super.key});

  final GoogleSignInController _googleSignInController =
      Get.put(GoogleSignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppConstant.appSecondryColor,
        title: Text(
          "Welcome to my App",
          style: TextStyle(color: AppConstant.appTextColor),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: AppConstant.appSecondryColor, // Typo fix
              child: Center(
                child: SizedBox(
                  width: 200, // Adjust the width as needed
                  height: 200, // Adjust the height as needed
                  child: Lottie.asset('assets/images/splash2.json'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                'Happy Shopping',
                style: TextStyle(
                  color: AppConstant.appTextColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 12,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                  color: AppConstant.appSecondryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton.icon(
                  icon: Image.asset(
                    'assets/icons/search.png',
                    width: Get.width / 15,
                    height: Get.height / 15,
                  ),
                  // ignore: prefer_const_constructors
                  label: Text(
                    'Sign in with Google',
                    style: TextStyle(color: AppConstant.appTextColor),
                  ),
                  onPressed: () {
                    _googleSignInController.signInWithGoogle();
                  },
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 50,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                  color: AppConstant.appSecondryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton.icon(
                  icon: Icon(
                    Icons.email,
                    color: AppConstant.appTextColor,
                  ),
                  // ignore: prefer_const_constructors
                  label: Text(
                    'Sign in with Email',
                    style: TextStyle(color: AppConstant.appTextColor),
                  ),
                  onPressed: () {
                    Get.to(SignInScreen()); // Replace with your desired screen
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
