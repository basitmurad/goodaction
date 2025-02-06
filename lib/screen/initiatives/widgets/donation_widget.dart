import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/app_text_style.dart';
import '../../utils/constants/image_string.dart';

class DonationWidget extends StatelessWidget {
  const DonationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            GImages.profile, // Replace with GImages.profile
            height: 48,
            width: 48,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Basit',
                style: AppTextStyle.inter(
                    color: Colors.black,
                    fontSize: 16.0,
                    weight: FontWeight.w600)),
            SizedBox(height: 8),
            Text('2 hours',
                style: AppTextStyle.inter(
                    color: Colors.black,
                    fontSize: 12.0,
                    weight: FontWeight.w400)),
          ],
        ),
        Spacer(),
        Text(
          "\$${1000}", // Goal amount
          style: AppTextStyle.inter(
            color: Colors.black,
            fontSize: 14.0,
            weight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
