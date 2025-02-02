import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goodaction/screen/utils/common_providers/text_field_widget.dart';
import 'package:goodaction/screen/utils/constants/colors.dart';
import 'package:goodaction/screen/utils/constants/image_string.dart';
import 'package:goodaction/screen/utils/constants/sizes.dart';
import 'package:goodaction/screen/utils/device/device_utility.dart';

import '../utils/constants/text_strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = GDeviceUtils.getScreenWidth(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            SizedBox(
              height: GSizes.lg,
            ),
            Container(
              width: double.infinity,
              child: Image(
                fit: BoxFit.fitWidth,
                image: AssetImage(GImages.onboardingimage),
                height: 194,
              ),
            ),
            SizedBox(
              height: GSizes.lg,
            ),

            Text(GText.welcomeTo),

            Text(GText.appName ,style: TextStyle(fontWeight: FontWeight.w900),),
            SizedBox(
              height: GSizes.lg,
            ),
            TextFieldWidget(
              subTitle: 'Email',
              hintText: 'Enter your email',
            ),
            SizedBox(
              height: GSizes.lg,
            ),
            TextFieldWidget(
              subTitle: 'Password',
              hintText: 'Enter your password',
              suffixIcon: Icon(CupertinoIcons.eye_slash),
            ),
            SizedBox(
              height: GSizes.md - 4,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text('Forget Password'),
            ),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: GAppColors.buttonColor,
                  // Button background color
                  foregroundColor: Colors.white,
                  // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                ),
                child: Text(
                  'Login', // Corrected spelling from "Ligin"
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
