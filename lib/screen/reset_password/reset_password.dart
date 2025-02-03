import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/common_providers/text_field_widget.dart';
import '../utils/constants/app_text_style.dart';
import '../utils/constants/colors.dart';
import '../utils/constants/sizes.dart';
import '../utils/constants/text_strings.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.back)),
      ),

      body: Padding(padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(GText.forgetPassword,style: AppTextStyle.inter(color: Colors.black, fontSize: 16.0, weight: FontWeight.w600),)
            ,
            SizedBox(height: GSizes.spaceBtwInputFields -8,)
            ,Text(GText.enterEmailAddressText,style: AppTextStyle.inter(color: GAppColors.textColorGrey, fontSize: 14.0, weight: FontWeight.w400),)
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
                onPressed: () {},
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
                  GText.login, // Corrected spelling from "Ligin"
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
