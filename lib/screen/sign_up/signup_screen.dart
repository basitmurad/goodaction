import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/common_providers/text_field_widget.dart';
import '../utils/constants/app_text_style.dart';
import '../utils/constants/colors.dart';
import '../utils/constants/image_string.dart';
import '../utils/constants/sizes.dart';
import '../utils/constants/text_strings.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              SizedBox(
                height: GSizes.spaceBtwSections +30,
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
                subTitle: GText.name,
                hintText: GText.enterYourName,
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
              Align(
                alignment: Alignment.bottomRight,
                child: Text(GText.forgetPassword ,
                  style:                   AppTextStyle.inter(color: Colors.black, fontSize: 14.0, weight: FontWeight.w500)
                  ,),
              ),
        
              SizedBox(
                height: GSizes.lg,
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
        
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
        
                  Text(
                    GText.alreadyHaveAccount, // Corrected spelling from "Ligin"
                    style:
                    AppTextStyle.inter(color: Colors.black, fontSize: 14.0, weight: FontWeight.w500)
                    ,
                  ),
        
        
                  SizedBox(
                    height: GSizes.lg +10,width: 3,
                  ),
                  Text(
                    GText.login, // Corrected spelling from "Ligin"
                    style:
                    AppTextStyle.inter(color: Colors.green, fontSize: 14.0, weight: FontWeight.w500)
                    ,
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
