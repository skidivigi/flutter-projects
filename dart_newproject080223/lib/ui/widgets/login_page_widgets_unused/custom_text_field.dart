import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.titleText,
      required this.hintText,
      this.obsecureText = false,
      this.suffix,
      required this.controller,
      required this.onChanged,
      this.errorText});
  final String titleText;
  final String hintText;
  final bool obsecureText;
  final Widget? suffix;
  final TextEditingController controller;
  final Function(String) onChanged;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff2B4C59)),
        ),
        TextField(
          onChanged: onChanged,
          controller: controller,
          obscureText: obsecureText,
          decoration: InputDecoration(
            suffixIcon: suffix,
            errorText: errorText,
            hintText: hintText,
            hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xffA1A1A1)),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE5E5E5)),
            ),
          ),
        ),
      ],
    );
  }
}
