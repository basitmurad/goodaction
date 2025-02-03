import 'package:flutter/material.dart';
import 'package:goodaction/screen/login/widgets/ImageWidget.dart';
import 'package:goodaction/screen/sign_up/widgets/Footer.dart';
import 'package:goodaction/screen/sign_up/widgets/SignUpWidget.dart';
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
      backgroundColor: GAppColors.backColor,

        body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: GSizes.spaceBtwSections + 70,
                ),


                
                // ImageWidget(imagePath: GImages.onboardingimage),
                Align(
                  child: Image(
                    image: AssetImage(GImages.appLogo),
                    height: 25,
                  ),
                ),

                SizedBox(height: GSizes.lg -10,),
                Text(GText.betheChange ,style: AppTextStyle.inter(color: GAppColors.textColorGrey, fontSize: 16.0, weight: FontWeight.w600),),

                SizedBox(
                  height: GSizes.lg+30,
                ),

                SignUpWidget(),

                SizedBox(
                  height: GSizes.spaceBtwSections,
                  width: 3,
                ),
                Footer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


