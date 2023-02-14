import 'package:dart_newproject080223/ui/widgets/login_page_widgets_unused/custom_login_button.dart';
import 'package:dart_newproject080223/ui/widgets/login_page_widgets_unused/custom_login_services_button.dart';
import 'package:dart_newproject080223/ui/widgets/login_page_widgets_unused/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? errorText;
  bool obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 28, right: 13),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 87,
              ),
              CustomTextField(
                errorText: errorText,
                onChanged: (val) {
                  if (val.contains('@')) {
                    errorText = null;
                  } else {
                    errorText = 'Not correct email group';
                  }
                  setState(() {});
                },
                titleText: 'EMAIL OR PHONE',
                hintText: 'qwerty@maik.com',
                controller: loginController,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                obsecureText: obsecureText,
                onChanged: (val) {},
                titleText: 'PASSWORD',
                hintText: '••••••••',
                controller: passwordController,
                suffix: IconButton(
                  icon: const Icon(
                    Icons.remove_red_eye,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    obsecureText = !obsecureText;
                    setState(() {});
                  },
                ),
              ),
              TextButton(
                onPressed: (() {}),
                child: const Text('Forgot password?',
                    style: TextStyle(fontSize: 11, color: Colors.black)),
              ),
              const SizedBox(
                height: 30,
              ),
              const LoginButton(),
              const SizedBox(
                height: 9,
              ),
              const Center(
                child: Text(
                  'OR',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              const LoginServiceButton(
                  pathImage: 'assets/images/1.png',
                  textButton: 'Continue with Google'),
              const SizedBox(
                height: 13,
              ),
              const LoginServiceButton(
                  pathImage: 'assets/images/2.png',
                  textButton: 'Continue with Facebook'),
            ],
          ),
        ),
      ),
    );
  }
}
