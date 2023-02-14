import 'package:flutter/material.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  Widget _squares(MainAxisAlignment value) {
    return Column(
      mainAxisAlignment: value,
      children: [
        Container(
          height: 80,
          width: 80,
          color: Colors.red,
          child: Center(child: Text('1')),
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.yellow,
          child: Center(child: Text('2')),
        ),
        Container(
          height: 125,
          width: 125,
          color: Colors.green,
          child: Center(child: Text('3')),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(-4, 8),
                  blurRadius: 10,
                  spreadRadius: 10,
                  color: Colors.red,
                ),
              ],
              gradient: LinearGradient(colors: [
                Colors.black,
                Colors.blue,
              ]),
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
              border: Border.all(width: 10, color: Colors.black),
            ),
            width: 100,
            height: 200,
          ),
        ),
      ),
    );
  }
}
