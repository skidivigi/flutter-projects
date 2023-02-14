import 'package:dart_newproject080223/core/theme/color.dart';
import 'package:dart_newproject080223/core/theme/font.dart';
import 'package:flutter/material.dart';

class CustomTextFieldLoginPage extends StatelessWidget {
  const CustomTextFieldLoginPage(
      {super.key,
      required this.text,
      required this.hindText,
      required this.controller,
      this.obsecureText = false,
      this.suffix,
      this.errorText,
      this.onChanged});

  final String text;
  final String hindText;
  final TextEditingController controller;
  final bool obsecureText;
  final Widget? suffix;
  final String? errorText;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppFonts.w400s16.copyWith(color: AppColors.darkBlue),
        ),
        TextField(
          onChanged: onChanged,
          obscureText: obsecureText,
          controller: controller,
          decoration: InputDecoration(
            errorText: errorText,
            suffix: suffix,
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey)),
            hintText: hindText,
            hintStyle: AppFonts.w400s16,
          ),
        ),
      ],
    );
  }
}
