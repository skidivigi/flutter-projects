import 'package:dart_newproject080223/core/assetspath/images_path.dart';
import 'package:dart_newproject080223/core/theme/color.dart';
import 'package:dart_newproject080223/core/theme/font.dart';
import 'package:dart_newproject080223/ui/screens/login_screen.dart';
import 'package:dart_newproject080223/ui/widgets/welcome_page.dart/button_welcome_page.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.welcome),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset(
                  AppImages.welcomeLogo,
                  height: 59,
                  width: 145,
                ),
                const Spacer(),
                Text(
                  'Rent your dream car from the \n Best Company',
                  style: AppFonts.w600s26.copyWith(color: AppColors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 100,
                ),
                WelcomeButton(
                  title: 'Get Started',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
