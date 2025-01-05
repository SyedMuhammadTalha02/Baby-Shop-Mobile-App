import 'package:baby_shop/Utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'sign-up-screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppConstant.appSecondryColor,
            centerTitle: true,
            title: Text(
              "Sign In",
              style: TextStyle(
                color: AppConstant.appTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Ensuring the animation area has a proper background color
                Container(
                  width: double.infinity,
                  color: AppConstant.appSecondryColor, // Background color
                  padding: EdgeInsets.symmetric(
                      vertical: 20.0), // Add padding for spacing
                  child: Center(
                    child: Container(
                      width: Get.width / 1.2,
                      height: Get.height / 4,
                      child: Lottie.asset(
                        'assets/images/splash2.json',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height / 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildTextField(
                        hintText: 'Email',
                        prefixIcon: Icons.email,
                        obscureText: false,
                      ),
                      _buildTextField(
                        hintText: 'Password',
                        prefixIcon: Icons.lock,
                        obscureText: true,
                        suffixIcon: Icons.visibility_off,
                      ),
                      _buildForgotPassword(),
                      SizedBox(height: Get.height / 20),
                      _buildSignInButton(),
                      SizedBox(height: Get.height / 30),
                      _buildSignUpText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildTextField({
    required String hintText,
    required IconData prefixIcon,
    bool obscureText = false,
    IconData? suffixIcon,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        obscureText: obscureText,
        cursorColor: AppConstant.appSecondryColor,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(prefixIcon, color: AppConstant.appTextColor),
          suffixIcon: suffixIcon != null
              ? Icon(suffixIcon, color: AppConstant.appTextColor)
              : null,
          contentPadding: const EdgeInsets.all(16.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: AppConstant.appTextColor),
          ),
        ),
      ),
    );
  }

  Widget _buildForgotPassword() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          // Add your forgot password logic
        },
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            color: AppConstant.appTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildSignInButton() {
    return InkWell(
      onTap: () {
        // Add your sign-in logic here
      },
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: Get.width / 1.5,
        height: Get.height / 15,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppConstant.appSecondryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          'Sign In',
          style: TextStyle(
            color: AppConstant.appTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(color: AppConstant.appStatusBarColor),
        ),
        TextButton(
          onPressed: () {
            Get.to(() => SignUpScreen());
          },
          child: Text(
            'Sign Up',
            style: TextStyle(
              color: AppConstant.appStatusBarColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
