// ignore: file_names
import 'package:baby_shop/Utils/app-constant.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appMainColor,
        title: Text(AppConstant.appMainName),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Welcome to the Admin Panel'),
      ),
    );
  }
}
