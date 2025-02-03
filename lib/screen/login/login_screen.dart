import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:goodaction/screen/forget_password/forget_password.dart';
import 'package:goodaction/screen/sign_up/signup_screen.dart';
import 'package:goodaction/screen/utils/common_providers/text_field_widget.dart';
import 'package:goodaction/screen/utils/constants/app_text_style.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: GSizes.spaceBtwSections +50,
              ),
              SizedBox(
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
          
              Text(GText.welcomeTo ,style:   AppTextStyle.inter(color: Colors.black, fontSize: 15.0, weight: FontWeight.w500),),
              SizedBox(
                height: GSizes.xs,
              ),
          
              Text(GText.appName ,style:   AppTextStyle.inter(color: Colors.black, fontSize: 18.0, weight: FontWeight.w700),),
              SizedBox(
                height: GSizes.lg,
              ),
              TextFieldWidget(
                subTitle: GText.email,
                hintText: GText.enterEmail,
              ),
              SizedBox(
                height: GSizes.lg,
              ),
              TextFieldWidget(
                subTitle: GText.password,
                hintText: GText.enterYourPassword,
                suffixIcon: Icon(CupertinoIcons.eye_slash),
              ),
              SizedBox(
                height: GSizes.md - 4,
              ),
              GestureDetector(

                onTap: (){

                  Get.to(ForgetPassword());
                },
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(GText.forgetPassword ,
                  style:                   AppTextStyle.inter(color: Colors.black, fontSize: 14.0, weight: FontWeight.w500)
                    ,),
                ),
              ),
          
              SizedBox(
                height: GSizes.lg+20,
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
                  child:
                  Text(
                    GText.login, // Corrected spelling from "Ligin"
                    style:
                    AppTextStyle.inter(color: Colors.white, fontSize: 16.0, weight: FontWeight.w500)
                    ,
                  ),
                ),
              ),
          
              SizedBox(
                height: GSizes.lg +10,width: 3,
              ),
              
              Row(
          
                children: [
          
                  Text(
                    GText.donotHaveTExt, // Corrected spelling from "Ligin"
                    style:
                    AppTextStyle.inter(color: Colors.black, fontSize: 14.0, weight: FontWeight.w500)
                    ,
                  ),
          
          
                  SizedBox(
                    height: GSizes.lg +10,width: 3,
                  ),
                  GestureDetector(
                    onTap: (){
          
                      Get.to(SignUpScreen());
                    },
                    child: Text(
                      GText.signUpText, // Corrected spelling from "Ligin"
                      style:
                      AppTextStyle.inter(color: Colors.green, fontSize: 14.0, weight: FontWeight.w500)
                      ,
                    ),
                  ),
          
                ],
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
