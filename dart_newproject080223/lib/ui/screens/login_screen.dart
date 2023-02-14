import 'package:dart_newproject080223/core/assetspath/images_path.dart';
import 'package:dart_newproject080223/core/theme/color.dart';
import 'package:dart_newproject080223/core/theme/font.dart';
import 'package:dart_newproject080223/ui/screens/home_page.dart';
import 'package:dart_newproject080223/ui/screens/logup_screen.dart';
import 'package:dart_newproject080223/ui/widgets/login_screen_page/custom_elevated_button_login.dart';
import 'package:dart_newproject080223/ui/widgets/login_screen_page/custom_elevated_services_login_page.dart';
import 'package:dart_newproject080223/ui/widgets/login_screen_page/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  String? errorText;
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
              height: 32,
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
                    size: 23,
                  )),
            ),
            TextButton(
                onPressed: (() {}),
                child: Text('Forgot Password?',
                    style: AppFonts.w400s11.copyWith(
                      color: AppColors.black,
                    ))),
            const SizedBox(
              height: 34,
            ),
            ElevatedButtonLoginPage(
              title: 'Log in',
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
                    'Don’t Have an account yet?',
                    style: AppFonts.w300s15,
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogupScreen()));
                    },
                    child: Text('SIGN UP',
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
