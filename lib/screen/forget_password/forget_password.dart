import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodaction/screen/forget_password/email_send_send_screen.dart';
import 'package:goodaction/screen/utils/common_providers/text_field_widget.dart';
import 'package:goodaction/screen/utils/constants/app_text_style.dart';
import 'package:goodaction/screen/utils/constants/colors.dart';
import 'package:goodaction/screen/utils/constants/sizes.dart';
import 'package:goodaction/screen/utils/constants/text_strings.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: GAppColors.backColor,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.back)),
      ),

      body: Padding(padding: EdgeInsets.symmetric(vertical: 16,horizontal: 24),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(GText.forgetPassword,style: AppTextStyle.inter(color: Colors.black, fontSize: 22.0, weight: FontWeight.w700),)
         ,
          SizedBox(height: GSizes.spaceBtwInputFields ,)
          ,Text(GText.enterEmailAddressText,style: AppTextStyle.inter(color: GAppColors.textColorGrey, fontSize: 16.0, weight: FontWeight.w400),)
,
          SizedBox(height: GSizes.spaceBtwInputFields +20,)

          ,
          TextFieldWidget(
            subTitle: GText.email,
            hintText: GText.enterEmail,
          )
,

          SizedBox(height: GSizes.spaceBtwInputFields+50,)
,
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                Get.to(EmailSendSendScreen());

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: GAppColors.buttonColor,
                // Button background color
                foregroundColor: Colors.white,
                // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
              ),
              child:
              Text(
                GText.continueText, // Corrected spelling from "Ligin"
                style:
                AppTextStyle.inter(color: Colors.white, fontSize: 16.0, weight: FontWeight.w500)
                ,
              ),
            ),
          ),



        ],
      ),),
    );
  }
}









