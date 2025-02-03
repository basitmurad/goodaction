import 'package:flutter/material.dart';

class AppTextStyle {

  static inter({
    required Color color,required fontSize, required FontWeight weight,  height= 1.0, shouldUnderline= false}){
    return TextStyle(height: height, color: color, fontWeight: weight, fontSize: fontSize, fontFamily: AppFontFamilies.inter, decoration: shouldUnderline? TextDecoration.underline: TextDecoration.none, decorationColor: color);
  }

}

class AppFontFamilies {

  static String inter = 'inter';
}
