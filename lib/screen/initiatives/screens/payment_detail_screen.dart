import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:goodaction/screen/initiatives/screens/payment_success_screen.dart';
import 'package:goodaction/screen/utils/common_providers/text_field_widget.dart';
import 'package:goodaction/screen/utils/constants/image_string.dart';
import 'package:goodaction/screen/utils/constants/sizes.dart';
import '../../utils/constants/app_text_style.dart';
import '../../utils/constants/colors.dart';

class PaymentDetailScreen extends StatefulWidget {
  const PaymentDetailScreen({super.key});

  @override
  State<PaymentDetailScreen> createState() => _PaymentDetailScreenState();
}

class _PaymentDetailScreenState extends State<PaymentDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              context.go("/navigation");
            },
            icon: Icon(
              CupertinoIcons.arrow_left,
              color: Colors.black,
            )),
        title: Text(
          'Payment Details',
          style: AppTextStyle.inter(
            color: Colors.black.withValues(alpha: 0.7),
            fontSize: 18.0,
            weight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            children: [
              TextFieldWidget(
                subTitle: 'Email',
              ),
              SizedBox(
                height: GSizes.spaceBtwInputFields,
              ),
              Row(
                children: [
                  Expanded(
                      child: TextFieldWidget(
                    subTitle: 'First Name',
                  )),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: TextFieldWidget(
                    subTitle: 'Last Name',
                  )),
                ],
              ),
              SizedBox(
                height: GSizes.spaceBtwInputFields,
              ),
              TextFieldWidget(
                subTitle: 'Card Number',
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Image(height: 20, image: AssetImage(GImages.master)),
              ),
              SizedBox(
                height: GSizes.spaceBtwInputFields,
              ),
              Row(
                children: [
                  Expanded(
                      child: TextFieldWidget(
                    hintText: 'MM/YY',
                  )),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: TextFieldWidget(
                    hintText: 'CVC',
                  )),
                ],
              ),
              SizedBox(
                height: GSizes.spaceBtwInputFields,
              ),
              TextFieldWidget(
                hintText: 'Name on card',
              ),
              SizedBox(
                height: GSizes.spaceBtwInputFields,
              ),
              TextFieldWidget(
                subTitle: 'Country',
              ),
              SizedBox(
                height: GSizes.spaceBtwInputFields,
              ),
              TextFieldWidget(
                subTitle: 'Zip code / Postal Code',
              ),
              SizedBox(
                height: GSizes.spaceBtwInputFields + 40,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {

                    context.go("/paymentSuccessScreen");

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
                  child: Text(
                    'Donate - 500', // Corrected spelling from "Ligin"
                    style: AppTextStyle.inter(
                        color: Colors.white,
                        fontSize: 16.0,
                        weight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: GSizes.spaceBtwSections - 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.lock,
                    color: GAppColors.textColorGrey.withValues(alpha: 0.6),
                  ),
                  Text(
                    'donation is secure',
                    style: AppTextStyle.inter(
                      color: GAppColors.textColorGrey.withValues(alpha: 0.6),
                      fontSize: 18.0,
                      weight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: GSizes.spaceBtwSections - 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
