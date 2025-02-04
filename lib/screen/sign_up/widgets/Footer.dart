import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:goodaction/screen/login/login_screen.dart';
import '../../utils/constants/app_text_style.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/text_strings.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          GText.alreadyHaveAccount, // Corrected spelling from "Ligin"
          style: AppTextStyle.inter(
              color: Colors.black,
              fontSize: 14.0,
              weight: FontWeight.w500),
        ),
        SizedBox(
          height: GSizes.lg + 10,
          width: GSizes.lg -12,
        ),

        TextButton(onPressed: (){
          Get.to(()=>LoginScreen());
        }, child:         Text(
          GText.login, // Corrected spelling from "Ligin"
          style: AppTextStyle.inter(
              color: Colors.green,
              fontSize: 16.0,
              weight: FontWeight.w700),
        ),
        )
      ],
    );
  }
}
