import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goodaction/screen/utils/common_providers/text_field_widget.dart';
import 'package:goodaction/screen/utils/device/device_utility.dart';

import '../../utils/constants/app_text_style.dart';

class DonationNowScreen extends StatefulWidget {
  const DonationNowScreen({super.key});

  @override
  State<DonationNowScreen> createState() => _DonationNowScreenState();
}

class _DonationNowScreenState extends State<DonationNowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.arrow_left,
                color: Colors.black,
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [


                Text(
                  'How much do you want to donate?',
                  style: AppTextStyle.inter(
                    color: Colors.black.withValues(alpha: 0.7),
                    fontSize: 14.0,
                    weight: FontWeight.w600,
                  ),
                ),


                Container(
                  height: 48,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "\$ ${345}", // Raised amount
                        style: AppTextStyle.inter(
                          color: Colors.black,
                          fontSize: 14.0,
                          weight: FontWeight.w400,
                        ),
                      ),

                      SizedBox(width: 5), // Add some spacing
                  Spacer(),
                      SizedBox(

                        width: 100,
                        height:25,// Adjust width as needed
                        child: TextField(
                          textAlign: TextAlign.center, // Align text inside the field
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,

                            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                          ),
                          style: AppTextStyle.inter(
                            color: Colors.black,
                            fontSize: 14.0,
                            weight: FontWeight.w400,
                          ),
                          keyboardType: TextInputType.number, // Set number input
                        ),
                      ),

                      SizedBox(width: 5), // Add spacing

                      Text(
                        '.00', // Raised amount
                        style: AppTextStyle.inter(
                          color: Colors.black,
                          fontSize: 14.0,
                          weight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )



              ],
            ),
          ),
        ));
  }
}
