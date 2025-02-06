import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/app_text_style.dart';
import '../../utils/constants/image_string.dart';
import '../../utils/constants/sizes.dart';

class OngoingInitiatives extends StatelessWidget {
  const OngoingInitiatives({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child:
      SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 700,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context,index){
                return               Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    border: Border.all(color: Colors.black.withValues(alpha: 0.1), width: 1),
                  ),
                  padding: EdgeInsets.all(12),

                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Learning Light Foundation',
                                  style: AppTextStyle.inter(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      weight: FontWeight.w600)),
                              SizedBox(height: 8),
                              Text('Toronto, Canada',
                                  style: AppTextStyle.inter(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      weight: FontWeight.w400)),
                            ],
                          )
                        ],
                      ),

                      SizedBox(height: GSizes.md + 4),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          GImages.img, // Replace with GImages.img
                          width: double.infinity,
                          height: 192,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: GSizes.md + 4),

                      Text(
                        'Providing free learning materials to schools in underserved communities.',
                        style: AppTextStyle.inter(
                          color: Colors.black,
                          fontSize: 14.0,
                          weight: FontWeight.w600,
                        ),
                      ),

                      SizedBox(height: GSizes.md),

                      /// Raised Amount & Goal
                      Row(
                        children: [
                          Text(
                            "Raised: \$${345}", // Raised amount
                            style: AppTextStyle.inter(
                              color: Colors.black,
                              fontSize: 14.0,
                              weight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Goal: \$${1000}", // Goal amount
                            style: AppTextStyle.inter(
                              color: Colors.black,
                              fontSize: 14.0,
                              weight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: GSizes.md),

                      /// Progress Bar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          value: 345 / 1000, // Raised amount / Goal
                          backgroundColor: Colors.grey.shade300,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                          minHeight: 8,
                        ),
                      ),
                    ],
                  ),
                );

              }),
            ),
          ],
        ),
      ),
    );
  }
}
