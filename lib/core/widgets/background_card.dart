import 'package:el_king_store/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class BackgroundCard extends StatelessWidget {
  final Widget child;

  const BackgroundCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: AppColor.secondaryColor,
      ),
      child: child,
    );
  }
}
