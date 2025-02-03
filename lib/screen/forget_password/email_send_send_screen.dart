import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:goodaction/screen/login/login_screen.dart';
import 'package:goodaction/screen/utils/constants/image_string.dart';
import '../utils/constants/app_text_style.dart';
import '../utils/constants/colors.dart';
import '../utils/constants/sizes.dart';
import '../utils/constants/text_strings.dart';

class EmailSendSendScreen extends StatefulWidget {
  const EmailSendSendScreen({super.key});

  @override
  State<EmailSendSendScreen> createState() => _EmailSendSendScreenState();
}
class _EmailSendSendScreenState extends State<EmailSendSendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GAppColors.backColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16 ,horizontal: 24),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(GImages.email),
                  height: 100,
                  width: 100,
                ),
                Text(
                  GText.gotEmailOn,
                  style: AppTextStyle.inter(
                      color: Colors.black,
                      fontSize: 20.0,
                      weight: FontWeight.w700),
                ),
                SizedBox(
                  height: GSizes.xs +8,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      textAlign: TextAlign.center,
                      GText.recoveryInstruction,
                      style: AppTextStyle.inter(
                          color: Colors.black,
                          fontSize: 16.0,
                          weight: FontWeight.w400),
                    )),

                SizedBox(
                  height: GSizes.xs +24,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {

                      Get.to(LoginScreen());

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: GAppColors.buttonColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // Rounded corners
                      ),


                    ),
                    child:
                    Text(
                      GText.checkMyEmail, // Corrected spelling from "Ligin"
                      style:
                      AppTextStyle.inter(color: Colors.white, fontSize: 16.0, weight: FontWeight.w500)
                      ,
                    ),
                  ),
                ),

                SizedBox(height: 50,)
              ],
            ),


          ],
        ),
      ),
    );
  }
}
