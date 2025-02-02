import 'package:flutter/material.dart';


class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final String? subTitle;
  final IconData? prefixIcon;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Color? subtitleColor;
  // final TextEditingController? textEditingController;

  const TextFieldWidget({
    super.key,
    this.hintText,
    this.subTitle,
    this.prefixIcon,
    this.obscureText = false,
    this.suffixIcon, this.subtitleColor,
    // required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (subTitle != null)
          Text(
            subTitle!,
          ),
        const SizedBox(height: 8),
        TextField(
          obscureText: obscureText!,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                width: 1.5,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          ),
        ),
      ],
    );
  }
}
