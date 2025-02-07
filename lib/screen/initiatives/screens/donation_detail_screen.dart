import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodaction/screen/initiatives/screens/donation_now_screen.dart';
import 'package:goodaction/screen/initiatives/widgets/character_image_widget.dart';
import 'package:goodaction/screen/initiatives/widgets/expandable_text_widget.dart';
import '../../utils/constants/app_text_style.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/image_string.dart';
import '../../utils/constants/sizes.dart';
import '../widgets/donation_widget.dart';

class DonationDetailScreen extends StatefulWidget {
  const DonationDetailScreen({super.key});

  @override
  State<DonationDetailScreen> createState() => _DonationDetailScreenState();
}

class _DonationDetailScreenState extends State<DonationDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:                    Padding(
        padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 24),
        child: SizedBox(
          width: double.infinity,
          height: 48,
          child: ElevatedButton(
            onPressed: () {

              Get.to(()=>DonationNowScreen());


            },
            style: ElevatedButton.styleFrom(
              backgroundColor: GAppColors.buttonColor,
              // Button background color
              foregroundColor: Colors.white,
              // Text color
              shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(6), // Rounded corners
              ),
            ),
            child: Text(
              "Donation Now", // Corrected spelling from "Ligin"
              style: AppTextStyle.inter(
                  color: Colors.white,
                  fontSize: 16.0,
                  weight: FontWeight.w500),
            ),
          ),
        ),
      ),

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  ClipRRect(
                    child: Image.asset(
                      GImages.img, // Replace with GImages.img
                      width: double.infinity,
                      height: 209,
                      fit: BoxFit.cover,
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: GSizes.spaceBtwSections,
              ),
             Padding(padding: EdgeInsets.symmetric(horizontal: 16)
             ,child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [


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
                       valueColor:
                       AlwaysStoppedAnimation<Color>(Colors.green),
                       minHeight: 8,
                     ),
                   ),
                   SizedBox(height: GSizes.md - 6),
                   Text(
                     "Organizer", // Goal amount
                     style: AppTextStyle.inter(
                       color: Colors.black,
                       fontSize: 16.0,
                       weight: FontWeight.w500,
                     ),
                   ),
                   SizedBox(
                     height: GSizes.spaceBtwInputFields,
                   ),
                   Row(
                     children: [
                       CharacterImageWidget(text: 'Basit Murad'),
                       Row(
                         children: [
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
                               Row(
                                 children: [
                                   Icon(
                                     CupertinoIcons.location_solid,
                                     color: Colors.black.withValues(alpha: 0.6),
                                     size: 20,
                                   ),
                                   Text('Toronto, Canada',
                                       style: AppTextStyle.inter(
                                           color: Colors.black,
                                           fontSize: 12.0,
                                           weight: FontWeight.w400)),
                                 ],
                               ),
                             ],
                           )
                         ],
                       ),
                     ],
                   ),
                   ExpandableTextWidget(
                     title: "About this donation",
                     description:
                     "Flutter is an open-source UI software development toolkit created by Google. "
                         "It is used to develop applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, "
                         "and the web from a single codebase. The first version of Flutter was known as codename 'Sky' "
                         "and ran on the Android operating system. Flutter widgets incorporate all critical platform "
                         "differences such as scrolling, navigation, icons, and fonts, providing a native performance experience.",
                   ),
                   Text('Recent Donations',
                       style: AppTextStyle.inter(
                           color: Colors.black,
                           fontSize: 16.0,
                           weight: FontWeight.w500)),
                   SizedBox(height: GSizes.md + 4),

                   SizedBox(
                     height: 300,
                     child: ListView.builder(
                       itemCount: 8,  // Limits to 5 items
                       itemBuilder: (context, index) {
                         return DonationWidget();
                       },
                     ),
                   ),

                   SizedBox(height: GSizes.spaceBtwSections,),


                   SizedBox(height: GSizes.spaceBtwSections,),

                 ],
               ),)
            ],
          ),
        ));
  }
}
