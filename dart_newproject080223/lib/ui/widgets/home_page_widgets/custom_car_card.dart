import 'package:dart_newproject080223/core/assetspath/images_path.dart';
import 'package:dart_newproject080223/core/theme/color.dart';
import 'package:dart_newproject080223/core/theme/font.dart';
import 'package:flutter/material.dart';

class CarCardHomePage extends StatelessWidget {
  const CarCardHomePage(
      {super.key,
      required this.image,
      required this.title,
      required this.price,
      required this.onTap,
      this.bgColor = AppColors.lightGrey});

  final String image;
  final String title;
  final int price;
  final Color bgColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 4),
                spreadRadius: 4,
                blurRadius: 4,
                color: AppColors.black.withOpacity(0.25),
              ),
            ],
          ),
          height: 169,
          width: 152,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                  height: 90,
                  width: double.infinity,
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 18,
                    ),
                    Text(
                      title,
                      style: AppFonts.w400s11.copyWith(
                        color: AppColors.darkBlue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 18,
                    ),
                    Text(
                      '\$$price',
                      style: AppFonts.w400s10.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    Text(
                      '\\day',
                      style: AppFonts.w400s10.copyWith(color: AppColors.pink),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Spacer(),
                    Icon(
                      Icons.heart_broken_outlined,
                      color: AppColors.red,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.arrow_circle_right,
                      color: AppColors.darkBlue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
