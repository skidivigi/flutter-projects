import 'package:dart_newproject080223/core/theme/color.dart';
import 'package:dart_newproject080223/core/theme/font.dart';
import 'package:flutter/material.dart';

class ChipWidgetForHomePage extends StatelessWidget {
  const ChipWidgetForHomePage(
      {super.key,
      required this.label,
      required this.selected,
      required this.onSelected});

  final String label;
  final bool selected;
  final Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      onSelected: onSelected,
      backgroundColor: AppColors.white,
      disabledColor: AppColors.white,
      selectedColor: AppColors.darkBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      label: Text(label),
      selected: selected,
      labelStyle: AppFonts.w700s12
          .copyWith(color: selected ? AppColors.white : AppColors.black),
      side: const BorderSide(color: AppColors.darkBlue, width: 1),
    );
  }
}
