import 'package:dart_newproject080223/core/theme/color.dart';
import 'package:flutter/material.dart';

class CarModels {
  final String image;
  final int price;
  final String title;
  final String transition;
  final String speed;
  final String ownerName;

  CarModels(
      {required this.transition,
      required this.speed,
      required this.ownerName,
      required this.image,
      required this.price,
      required this.title});
}
