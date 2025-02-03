import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goodaction/screen/utils/constants/image_string.dart';
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
    return Scaffold(
      backgroundColor: GAppColors.backColor,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.back)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Center(
          child:
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


              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
