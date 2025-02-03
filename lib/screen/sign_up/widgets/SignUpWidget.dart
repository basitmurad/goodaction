import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/common_providers/text_field_widget.dart';
import '../../utils/constants/app_text_style.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/text_strings.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldWidget(
          subTitle: GText.email,
          hintText: GText.enterEmail,
        ),

        SizedBox(
          height: GSizes.spaceBtwInputFields-4,
        ),
        TextFieldWidget(
          subTitle: GText.name,
          hintText: GText.enterYourName,
        ),
        SizedBox(
          height: GSizes.spaceBtwInputFields-4,
        ),
        TextFieldWidget(
          subTitle: GText.password,
          hintText: GText.enterYourPassword,

        ),
        SizedBox(
          height: GSizes.spaceBtwSections+50,
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
                borderRadius:
                BorderRadius.circular(12), // Rounded corners
              ),
            ),
            child: Text(
              GText.signUpText, // Corrected spelling from "Ligin"
              style: AppTextStyle.inter(
                  color: Colors.white,
                  fontSize: 16.0,
                  weight: FontWeight.w500),
            ),
          ),
        ),


      ],
    );
  }
}
