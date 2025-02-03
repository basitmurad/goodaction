import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../sign_up/signup_screen.dart';
import '../../utils/constants/app_text_style.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/text_strings.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          GText.noAccountText, // Corrected spelling from "Ligin"
          style: AppTextStyle.inter(
              color: Colors.black, fontSize: 14.0, weight: FontWeight.w500),
        ),
        SizedBox(
          width: 4,
        ),
        TextButton(
          onPressed: () {

            Get.to(() => SignUpScreen());
          },
          child: Text(
            GText.signUpText,
            style: AppTextStyle.inter(
                color: Colors.green, fontSize: 14.0, weight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}
