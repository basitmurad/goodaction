import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goodaction/screen/utils/constants/colors.dart';
import 'package:goodaction/screen/utils/constants/image_string.dart';

import 'login/login_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // Navigate to Login Screen after 2 seconds
    Timer(const Duration(seconds: 2), () {
      context.go('/loginScreen');
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
        child: Center(child:

          Image(image: AssetImage('assets/logo/logo2.png')),),
      ),
    );
  }
}
