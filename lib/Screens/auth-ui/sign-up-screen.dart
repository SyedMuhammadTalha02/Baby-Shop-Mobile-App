import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/app-constant.dart';
import 'sign-in-screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appSecondryColor,
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: AppConstant.appTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Welcome Text Section
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                child: Text(
                  "Welcome to My App",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: AppConstant.appTextColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildTextField(
                    hintText: 'Full Name',
                    prefixIcon: Icons.person,
                  ),
                  _buildTextField(
                    hintText: 'Email',
                    prefixIcon: Icons.email,
                  ),
                  _buildTextField(
                    hintText: 'Phone Number',
                    prefixIcon: Icons.phone,
                    keyboardType: TextInputType.phone,
                  ),
                  _buildTextField(
                    hintText: 'Address',
                    prefixIcon: Icons.home,
                  ),
                  _buildTextField(
                    hintText: 'Password',
                    prefixIcon: Icons.lock,
                    obscureText: true,
                    suffixIcon: Icons.visibility_off,
                  ),
                  _buildTextField(
                    hintText: 'Confirm Password',
                    prefixIcon: Icons.lock,
                    obscureText: true,
                    suffixIcon: Icons.visibility_off,
                  ),
                  SizedBox(height: 20.0),
                  _buildSignUpButton(),
                  SizedBox(height: 10.0),
                  _buildSignInText(), // Already have an account section
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String hintText,
    required IconData prefixIcon,
    bool obscureText = false,
    IconData? suffixIcon,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        obscureText: obscureText,
        cursorColor: AppConstant.appSecondryColor,
        keyboardType: keyboardType,
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

  Widget _buildSignUpButton() {
    return InkWell(
      onTap: () {
        // Add your sign-up logic here
      },
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: Get.width / 1.5,
        height: 50.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppConstant.appSecondryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          'Sign Up',
          style: TextStyle(
            color: AppConstant.appTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildSignInText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account?",
          style: TextStyle(color: AppConstant.appStatusBarColor),
        ),
        TextButton(
          onPressed: () {
            // Navigate to the sign-in page
            Get.to(() => SignInScreen());
          },
          child: Text(
            'Sign In',
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
