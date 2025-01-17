import 'package:baby_shop/Screens/admin-panel/main-screen.dart';
import 'package:baby_shop/Screens/auth-ui/sign-in-screen.dart';
import 'package:baby_shop/Screens/auth-ui/splash-screen.dart';
import 'package:baby_shop/Screens/auth-ui/welcome-screen.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

// import 'Screens/auth-ui/splash-screen.dart';

import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

// main app class
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // ignore: prefer_const_constructors
      home: WelcomeScreem(),
    );
  }
}
