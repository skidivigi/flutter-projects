import 'package:flutter/material.dart';

class SecondExample extends StatelessWidget {
  const SecondExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ThreeExamples(
            icon: Icons.camera_roll,
            text: 'Basis example',
          ),
          SizedBox(
            height: 15,
          ),
          ThreeExamples(
            icon: Icons.calculate,
            text: 'Basis example',
          ),
          SizedBox(
            height: 15,
          ),
          ThreeExamples(
            icon: Icons.rule,
            text: 'Basis example',
          ),
        ],
      ),
    );
  }
}

class ThreeExamples extends StatelessWidget {
  ThreeExamples({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7), color: Colors.white),
        child: Padding(
          padding: EdgeInsets.fromLTRB(25.0, 5.0, 10.0, 5.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 65,
              ),
              Text(
                '--- kgs',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
