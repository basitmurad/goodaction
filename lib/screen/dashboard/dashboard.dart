import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:goodaction/screen/utils/constants/app_text_style.dart';
import 'package:goodaction/screen/utils/constants/image_string.dart';

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
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start
       ,
       children: [

         SizedBox(height: 40,),

         Container(
           color: Colors.black,
           height: 48,
           width: MediaQuery.of(context).size.width,
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [

                 Image(
                   height: 35,
                   width: 150,
                   image: AssetImage(GImages.appLogo2))],
             ),
           ),
         ),


         Padding(
           padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
           child: Row(
             children: [

               Text('Welcome,' ,style: AppTextStyle.inter(color: Colors.black, fontSize: 15.0, weight: FontWeight.w300),),
               Text('Basit,' ,style: AppTextStyle.inter(color: Colors.black, fontSize: 15.0, weight: FontWeight.w600),)
             ],
           ),
         )

       ],

     ),

    );
  }
}
