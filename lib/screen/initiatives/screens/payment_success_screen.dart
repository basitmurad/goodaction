import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:goodaction/navigation_menu.dart';
import 'package:goodaction/screen/utils/constants/colors.dart';
import 'package:goodaction/screen/utils/constants/image_string.dart';
import 'package:goodaction/screen/utils/constants/sizes.dart';
import 'package:goodaction/screen/utils/device/device_utility.dart';

import '../../utils/constants/app_text_style.dart';

class PaymentSuccessScreen extends StatefulWidget {
  const PaymentSuccessScreen({super.key});

  @override
  State<PaymentSuccessScreen> createState() => _PaymentSuccessScreenState();
}

class _PaymentSuccessScreenState extends State<PaymentSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                width: GDeviceUtils.getScreenWidth(context),
                height: 450,
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: GAppColors.dialogeCOlor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    // Profile Image Positioned on Top
                    Positioned(
                      top: -25,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: GAppColors.dialogeCOlor, width: 2),
                          image: DecorationImage(
                            image: AssetImage(GImages.success),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    // Main Content
                    Positioned(
                      top: 23,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0), // Uniform padding
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // Align center
                          children: [
                            SizedBox(height: 40,),
                            Text(
                              'Donation Successful',
                              style: AppTextStyle.inter(
                                color: Colors.black,
                                fontSize: 26.0,
                                weight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: GSizes.spaceBtwInputFields),

                            Text(
                              'Donation to:',
                              style: AppTextStyle.inter(
                                color: Colors.black,
                                fontSize: 14.0,
                                weight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: GSizes.spaceBtwInputFields),

                            Text(
                              'Learning Light Foundation',
                              style: AppTextStyle.inter(
                                color: Colors.black,
                                fontSize: 16.0,
                                weight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: GSizes.spaceBtwInputFields),

                            Text(
                              '500',
                              style: AppTextStyle.inter(
                                color: Colors.black,
                                fontSize: 14.0,
                                weight: FontWeight.w500,
                              ),
                            ),

                            // Row for Donor Name & Donation Date
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildInfoBox('Donor Name', 'Basit Murad'),
                                SizedBox(width: 20),
                                _buildInfoBox('Donation Date', 'Mar 1, 2024'),
                              ],
                            ),

                            // Row for Amount Donated & Matched Amounts
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildInfoBox('Amount Donated', '\$${1000}'),
                                SizedBox(width: 20),
                                _buildInfoBox('Matched Amounts', '\$${1000}'),
                              ],
                            ),

                            SizedBox(height: 16),

                            // Bottom Text
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 100),
                              child: Text(
                                "Don't miss your chance to show your support!",
                                style: AppTextStyle.inter(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  weight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 8),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 100),
                              child: Text(
                                maxLines: 2,
                                'Share this fundraiser and help us reach even\n more people. Every share increases our impact!',
                                style: AppTextStyle.inter(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  weight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),



              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {

                    Get.offAll(NavigationMenu());

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: GAppColors.buttonColor,
                    // Button background color
                    foregroundColor: Colors.white,
                    // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6), // Rounded corners
                    ),
                  ),
                  child:
                  Text(
                    'Okay go it ', // Corrected spelling from "Ligin"
                    style:
                    AppTextStyle.inter(color: Colors.white, fontSize: 16.0, weight: FontWeight.w500)
                    ,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }




  Widget _buildInfoBox(String title, String value) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: Colors.black.withOpacity(0.1), width: 1),
      ),
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyle.inter(
              color: Colors.black.withOpacity(0.5),
              fontSize: 12.0,
              weight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12),

          Text(
            value,
            style: AppTextStyle.inter(
              color: Colors.black,
              fontSize: 12.0,
              weight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
