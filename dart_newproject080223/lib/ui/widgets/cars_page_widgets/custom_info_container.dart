import 'package:dart_newproject080223/core/theme/color.dart';
import 'package:dart_newproject080223/core/theme/font.dart';
import 'package:flutter/material.dart';

class InfoCarContainerForCarsPage extends StatelessWidget {
  const InfoCarContainerForCarsPage(
      {super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89,
      width: 155,
      decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(3),
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                spreadRadius: 4,
                color: AppColors.black.withOpacity(0.25)),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppFonts.w700s12.copyWith(
              color: AppColors.lightBlue,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            subTitle,
            style: AppFonts.w400s12,
          )
        ],
      ),
    );
  }
}
