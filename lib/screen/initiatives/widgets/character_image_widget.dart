import 'package:flutter/material.dart';

class CharacterImageWidget extends StatelessWidget {
  final String text;  // The input string
  final double size;  // Size of the circle
  final Color backgroundColor;  // Background color of the circle
  final TextStyle textStyle;  // Style for the text

  // Constructor
  const CharacterImageWidget({
    Key? key,
    required this.text,
    this.size = 55.0, // Default size of the circle
    this.backgroundColor = Colors.grey, // Default background color
    this.textStyle = const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white), // Default text style
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,  // Circular shape
        color: backgroundColor,  // Background color of the circle
      ),
      alignment: Alignment.center,
      child: Text(
        text.isNotEmpty ? text[0] : '',  // Display the first character
        style: textStyle,  // Text style
      ),
    );
  }
}
