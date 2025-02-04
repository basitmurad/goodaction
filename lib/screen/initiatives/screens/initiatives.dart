import 'package:flutter/material.dart';
import 'package:goodaction/screen/utils/constants/app_text_style.dart';

class InitiativesScreen extends StatefulWidget {
  const InitiativesScreen({super.key});

  @override
  State<InitiativesScreen> createState() => _InitiativesScreenState();
}

class _InitiativesScreenState extends State<InitiativesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Initiatives" ,style: AppTextStyle.inter(color: Colors.black, fontSize: 18.0, weight: FontWeight.w600),),
      ),


      body: Column(
        children: [

        ],

      ),
    );
  }
}
