import 'package:el_king_store/core/utils/app_color.dart';
import 'package:el_king_store/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

class BuildCardHeader extends StatelessWidget {
  final String text;
  final IconData icon;

  const BuildCardHeader({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: AppColor.gold, size: 20),
        SizedBox(width: 5),
        Text(text, style: StyleManager.font13Weight700),
      ],
    );
  }
}
