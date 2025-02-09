import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:goodaction/screen/location/widgets/header.dart';
import 'package:goodaction/screen/utils/common_providers/text_field_widget.dart';
import 'package:goodaction/screen/utils/constants/app_text_style.dart';
import 'package:goodaction/screen/utils/constants/sizes.dart';
import 'package:goodaction/screen/utils/constants/text_strings.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(

            onTap: (){

              context.go("/navigation");
            },
            child: SvgPicture.asset(
              'assets/svgiocon/cross.svg',
              width: 16,
              height: 16,
              colorFilter: ColorFilter.mode(
                Colors.black.withValues(alpha: 0.8),
                // Active = black, Inactive = grey
                BlendMode.srcIn,
              ),

            ),
          ),

          SizedBox(width: 20,)
        ],
      ),
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Header(),
              ),

              SizedBox(height: GSizes.spaceBtwSections,),
              TextFieldWidget(
                suffixIcon: Icon(Icons.search),
              ),

              SizedBox(height: GSizes.spaceBtwInputFields,),


              Row(
                children: [

                  Icon(
                    CupertinoIcons.location_solid,
                    color: Colors.green,
                    size: 22,
                  ),
                  Text(GText.enterLocation,style: AppTextStyle.inter(color: Colors.green, fontSize: 15.0, weight: FontWeight.w600),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

