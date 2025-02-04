import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/app_text_style.dart';
import '../../utils/constants/text_strings.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          GText.setLocation,
          style: AppTextStyle.inter(
              color: Colors.black,
              fontSize: 20.0,
              weight: FontWeight.w700),
        ),
        SizedBox(height: 8,),
        Text(
          textAlign: TextAlign.center,
          GText.setLocationDes,
          style: AppTextStyle.inter(
              color: Colors.black.withValues(alpha: 0.5),
              fontSize: 14.0,
              weight: FontWeight.w400),
        ),



      ],
    );
  }
}
