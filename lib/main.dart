import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:goodaction/screen/dashboard/dashboard.dart';
import 'package:goodaction/screen/login/login_screen.dart';
import 'package:goodaction/screen/splash.dart';
import 'package:goodaction/screen/utils/constants/colors.dart';

import 'navigation_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: GAppColors.backColor, // Change this to your desired color
      statusBarIconBrightness: Brightness.light, // Use Brightness.dark for dark icons
    ));

    return GetMaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner

      title: 'Flutter Demo',
      theme: ThemeData(

        useMaterial3: true,
      ),
      home: Dashboard(),
    );
  }
}

