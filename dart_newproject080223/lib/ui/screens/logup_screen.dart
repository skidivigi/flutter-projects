import 'package:dart_newproject080223/core/assetspath/images_path.dart';
import 'package:dart_newproject080223/core/theme/color.dart';
import 'package:dart_newproject080223/core/theme/font.dart';
import 'package:dart_newproject080223/ui/screens/home_page.dart';
import 'package:dart_newproject080223/ui/widgets/login_screen_page/custom_elevated_button_login.dart';
import 'package:dart_newproject080223/ui/widgets/login_screen_page/custom_elevated_services_login_page.dart';
import 'package:dart_newproject080223/ui/widgets/login_screen_page/custom_text_field.dart';
import 'package:flutter/material.dart';

class LogupScreen extends StatefulWidget {
  const LogupScreen({super.key});

  @override
  State<LogupScreen> createState() => _LogupScreenState();
}

class _LogupScreenState extends State<LogupScreen> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  // String? errorTextName;
  String? errorText;
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 45, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign In',
              style: AppFonts.w400s48,
            ),
            const SizedBox(
              height: 87,
            ),
            CustomTextFieldLoginPage(
              text: 'FULL NAME',
              hindText: 'Lorem Ipsum',
              controller: controllerName,
              // onChanged: (val) {
              //   if (val.contains('@') || val.isEmpty) {
              //     errorText = null;
              //   } else {
              //     errorText = 'Not correct email group';
              //   }
              //   setState(() {});
              // },
            ),
            const SizedBox(
              height: 18,
            ),
            CustomTextFieldLoginPage(
              errorText: errorText,
              text: 'EMAIL',
              hindText: 'Loremipsum@gmail.com',
              controller: controllerEmail,
              onChanged: (val) {
                if (val.contains('@') || val.isEmpty) {
                  errorText = null;
                } else {
                  errorText = 'Not correct email group';
                }
                setState(() {});
              },
            ),
            const SizedBox(
              height: 18,
            ),
            CustomTextFieldLoginPage(
              text: 'PASSWORD',
              hindText: '••••••••',
              controller: controllerPassword,
              obsecureText: isPassword,
              suffix: IconButton(
                  onPressed: () {
                    isPassword = !isPassword;
                    setState(() {});
                  },
                  icon: Icon(
                    isPassword
                        ? Icons.remove_red_eye
                        : Icons.remove_red_eye_outlined,
                    color: AppColors.black,
                  )),
            ),
            const SizedBox(
              height: 34,
            ),
            ElevatedButtonLoginPage(
              title: 'Log up',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            const SizedBox(
              height: 9,
            ),
            const Center(
              child: Text(
                'OR',
                style: AppFonts.w300s16,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            ServicesLoginElevatedButton(
              image: AppImages.google,
              title: 'Continue With Google',
              onPressed: () {},
            ),
            const SizedBox(
              height: 13,
            ),
            ServicesLoginElevatedButton(
              image: AppImages.facebook,
              title: 'Continue With Facebook',
              onPressed: () {},
            ),
            const SizedBox(
              height: 49,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 26),
              child: Row(
                children: [
                  const Text(
                    'Have an account Already?',
                    style: AppFonts.w300s15,
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('SIGN IN',
                        style: AppFonts.w700s13.copyWith(
                            color: AppColors.amberPlus,
                            fontStyle: FontStyle.italic)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
