import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:goodaction/screen/dashboard/widgets/PostWidget.dart';
import 'package:goodaction/screen/location/location_screen.dart';
import 'package:goodaction/screen/utils/constants/app_text_style.dart';
import 'package:goodaction/screen/utils/constants/image_string.dart';
import 'package:goodaction/screen/utils/constants/sizes.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black, // Change to your desired color
      statusBarIconBrightness: Brightness.light, // For white icons
    ));

    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            color: Colors.black,
            height: 58,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Image(
                      height: 30,
                      width: 120,
                      image: AssetImage(GImages.appLogo2)),
                  Spacer(),
                  Icon(
                    CupertinoIcons.location_solid,
                    color: Colors.green,
                    size: 16,
                  ),
                  Text(
                    'Karachi, Pakistan',
                    style: AppTextStyle.inter(
                        color: Colors.white,
                        fontSize: 10.0,
                        weight: FontWeight.w200),
                  ),
                  Transform.rotate(
                    angle: 80.1,
                    child: IconButton(
                        onPressed: () {

                          Get.to(() =>LocationScreen());
                        },
                        icon: Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Welcome, ',
                    style: AppTextStyle.inter(
                        color: Colors.black,
                        fontSize: 15.0,
                        weight: FontWeight.w300),
                  ),
                  Text(
                    'Basit',
                    style: AppTextStyle.inter(
                        color: Colors.black,
                        fontSize: 20.0,
                        weight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: GSizes.lg,
              ),
              SizedBox(
                height: 500,
                child: ListView.builder(
                  itemCount: 5,  // Limits to 5 items
                  itemBuilder: (context, index) {
                    return PostWidget();
                  },
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}


