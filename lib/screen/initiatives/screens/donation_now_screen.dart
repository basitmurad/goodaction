import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodaction/screen/initiatives/screens/payment_detail_screen.dart';
import 'package:goodaction/screen/utils/constants/colors.dart';
import 'package:goodaction/screen/utils/constants/sizes.dart';
import 'package:goodaction/screen/utils/device/device_utility.dart';

import '../../utils/constants/app_text_style.dart';

class DonationNowScreen extends StatefulWidget {
  const DonationNowScreen({super.key});

  @override
  State<DonationNowScreen> createState() => _DonationNowScreenState();
}

class _DonationNowScreenState extends State<DonationNowScreen> {
  int _selectedOption = 1; // Initial selected value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
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
                  'You are donating to',
                  style: AppTextStyle.inter(
                    color: Colors.black.withValues(alpha: 0.7),
                    fontSize: 14.0,
                    weight: FontWeight.w400,
                  ),
                ),

                SizedBox(
                  height: GSizes.spaceBtwSections,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    'Learning Light Foundation',
                    style: AppTextStyle.inter(
                      color: Colors.black.withValues(alpha: 0.7),
                      fontSize: 18.0,
                      weight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: GSizes.spaceBtwSections,
                ),

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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    border: Border.all(
                        color: Colors.black.withValues(alpha: 0.1), width: 1),
                  ),
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.symmetric(vertical: 12),
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
                        height: 25, // Adjust width as needed
                        child: TextField(
                          textAlign: TextAlign.center,
                          // Align text inside the field
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 5),
                          ),
                          style: AppTextStyle.inter(
                            color: Colors.black,
                            fontSize: 14.0,
                            weight: FontWeight.w400,
                          ),
                          keyboardType:
                              TextInputType.number, // Set number input
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
                ),

                SizedBox(
                  height: GSizes.spaceBtwSections - 20,
                ),

                Container(
                  height: 115,
                  width: GDeviceUtils.getScreenWidth(context),
                  decoration: BoxDecoration(
                    color: GAppColors.backColo2r,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    border: Border.all(color: Colors.transparent, width: 1),
                  ),
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Organization matching',
                        style: AppTextStyle.inter(
                          color: Colors.black.withValues(alpha: 0.7),
                          fontSize: 15.0,
                          weight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Your organization is set to match your donation by 50%.',
                        style: AppTextStyle.inter(
                          color: Colors.black.withValues(alpha: 0.7),
                          fontSize: 14.0,
                          weight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$${250})", // Raised amount
                            style: AppTextStyle.inter(
                              color: Colors.black,
                              fontSize: 20.0,
                              weight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "(50%)", // Raised amount
                            style: AppTextStyle.inter(
                              color: Colors.black,
                              fontSize: 14.0,
                              weight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: GSizes.spaceBtwSections - 12,
                ),

                Text(
                  "Payments method", // Raised amount
                  style: AppTextStyle.inter(
                    color: Colors.black,
                    fontSize: 18.0,
                    weight: FontWeight.w500,
                  ),
                ),

                SizedBox(
                  height: GSizes.spaceBtwInputFields,
                ),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedOption = 1; // Set selected option
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PaymentDetailScreen(), // Replace with your actual screen
                      ),
                    );
                  },
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: _selectedOption == 1
                            ? Colors.blue
                            : Colors.black.withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    margin: EdgeInsets.symmetric(vertical: 8),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio<int>(
                          value: 1,
                          groupValue: _selectedOption,
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value!;
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentDetailScreen(),
                              ),
                            );
                          },
                        ),
                        Text(
                          "stripe",
                          style: AppTextStyle.inter(
                              color: GAppColors.stripeColor,
                              fontSize: 16.0,
                              weight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedOption = 2; // Set selected option
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentDetailScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: _selectedOption == 2
                            ? Colors.blue
                            : Colors.black.withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    margin: EdgeInsets.symmetric(vertical: 8),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio<int>(
                          value: 2,
                          groupValue: _selectedOption,
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value!;
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentDetailScreen(),
                              ),
                            );
                          },
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Pay",
                                style: AppTextStyle.inter(
                                  color: GAppColors.paypalColor,
                                  // Dark Green for "Pay"
                                  fontSize: 16.0,
                                  weight: FontWeight.w900,
                                ),
                              ),
                              TextSpan(
                                text: "Pal",
                                style: AppTextStyle.inter(
                                  color: GAppColors.paypalColor.withValues(
                                      alpha: 0.5), // Light Green for "Pal"
                                  fontSize: 16.0,
                                  weight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        )

                        // Text("PayPal",style: AppTextStyle.inter(color: Colors.purple, fontSize: 16.0, weight: FontWeight.w900),),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}
