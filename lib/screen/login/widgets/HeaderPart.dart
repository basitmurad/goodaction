import 'package:flutter/material.dart';
import '../../utils/constants/app_text_style.dart';
import '../../utils/constants/image_string.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/text_strings.dart';

class HeaderPart extends StatelessWidget {
  const HeaderPart({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          GText.welcomeTo,
          style: AppTextStyle.inter(
              color: Colors.black,
              fontSize: 15.0,
              weight: FontWeight.w500),
        ),
        SizedBox(height: GSizes.lg -14,),


        Image(
          image: AssetImage(GImages.appLogo),
          height: 25,
        ),
        SizedBox(
          height: GSizes.lg,
        ),
      ],
    );
  }
}
