import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        Text(
          GText.login, // Corrected spelling from "Ligin"
          style: AppTextStyle.inter(
              color: Colors.green,
              fontSize: 16.0,
              weight: FontWeight.w700),
        ),
      ],
    );
  }
}
