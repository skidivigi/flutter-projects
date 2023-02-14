import 'package:dart_newproject080223/core/assetspath/images_path.dart';
import 'package:dart_newproject080223/core/theme/color.dart';
import 'package:dart_newproject080223/core/theme/font.dart';
import 'package:dart_newproject080223/models/car_model.dart';
import 'package:dart_newproject080223/ui/widgets/cars_page_widgets/custom_info_container.dart';
import 'package:flutter/material.dart';

class CarsPage extends StatelessWidget {
  const CarsPage({super.key, required this.data});

  final CarModels data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: AppColors.lightBlue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45))),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 30, right: 15, left: 15, bottom: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 37,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: AppColors.white,
                          )),
                      const Spacer(),
                      const Icon(
                        Icons.more_vert,
                        color: AppColors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 87,
                  ),
                  Stack(
                    children: [
                      Positioned(
                        top: -30,
                        child: Text(
                          'TIIRA',
                          style: AppFonts.w400s160.copyWith(
                              color: AppColors.white.withOpacity(0.5)),
                        ),
                      ),
                      Image.asset(
                        data.image,
                        height: 220,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 44, left: 25),
            child: Row(
              children: [
                Text(
                  data.title,
                  style: AppFonts.w400s16,
                ),
                const Spacer(),
                Text(
                  '\$${data.price}.00',
                  style: AppFonts.w700s12.copyWith(color: AppColors.red),
                ),
              ],
            ),
          ),
          // ListView(
          //   scrollDirection: Axis.horizontal,
          //   shrinkWrap: true,
          //   children: const [
          //     InfoCarContainerForCarsPage(title: 'Transition', subTitle: 'Automatic',),
          //     InfoCarContainerForCarsPage(title: 'Speed', subTitle: '200kmph',),
          //   ],
          // ),
          const SizedBox(
            height: 37,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InfoCarContainerForCarsPage(
                title: 'Transition',
                subTitle: data.transition,
              ),
              const SizedBox(
                width: 19,
              ),
              InfoCarContainerForCarsPage(
                title: 'Speed',
                subTitle: data.speed,
              ),
            ],
          ),
          const SizedBox(
            height: 44,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: Text(
              'RENDER',
              style: AppFonts.w400s15.copyWith(color: AppColors.darkBlue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21, right: 44, top: 18),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                ),
                const SizedBox(
                  width: 11,
                ),
                Text(
                  data.ownerName,
                  style: AppFonts.w400s12,
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.message_outlined)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
