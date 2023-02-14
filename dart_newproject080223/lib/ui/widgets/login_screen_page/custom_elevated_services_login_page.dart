import 'package:dart_newproject080223/core/assetspath/images_path.dart';
import 'package:dart_newproject080223/core/theme/color.dart';
import 'package:dart_newproject080223/core/theme/font.dart';
import 'package:flutter/material.dart';

class ServicesLoginElevatedButton extends StatelessWidget {
  const ServicesLoginElevatedButton(
      {super.key,
      required this.image,
      required this.title,
      required this.onPressed});

  final String image;
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        side: const BorderSide(width: 2, color: AppColors.black),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 12),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 31,
              width: 31,
            ),
            const Spacer(),
            Text(
              title,
              style: AppFonts.w400s16.copyWith(color: AppColors.black),
            )
          ],
        ),
      ),
    );
  }
}
