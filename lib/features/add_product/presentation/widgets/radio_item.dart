import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style_manager.dart';

class RadioItem extends StatelessWidget {
  final String text;
  final bool isSelected;

  const RadioItem({
    super.key,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveRadioItem(text: text, )
        : InactiveRadioItem(text: text, );
  }
}

class InactiveRadioItem extends StatelessWidget {
  const InactiveRadioItem({super.key, required this.text,});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColor.blueGrey,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: AppColor.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: StyleManager.font11Weight600),
          Icon(Icons.radio_button_off, color: AppColor.lightGrey, size: 20),
        ],
      ),
    );
  }
}

class ActiveRadioItem extends StatelessWidget {
  const ActiveRadioItem({super.key, required this.text,});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColor.blueGrey,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: AppColor.gold),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: StyleManager.font11Weight600),
          Icon(
            Icons.radio_button_checked_rounded,
            color: AppColor.gold,
            size: 20,
          ),
        ],
      ),
    );
  }
}
