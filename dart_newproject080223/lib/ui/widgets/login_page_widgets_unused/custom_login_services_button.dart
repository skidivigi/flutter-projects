import 'package:flutter/material.dart';

class LoginServiceButton extends StatelessWidget {
  const LoginServiceButton({
    Key? key,
    required this.pathImage,
    required this.textButton,
  }) : super(key: key);

  final String pathImage;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: const BorderSide(width: 2, color: Colors.black),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
        child: Row(
          children: [
            Image.asset(
              pathImage,
              height: 30,
            ),
            const Spacer(),
            Text(
              textButton,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
