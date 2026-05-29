import 'package:el_king_store/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

class ProductText extends StatelessWidget {
  const ProductText({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(label, style: StyleManager.font12Weight600),
        SizedBox(width: 8),
        CircleAvatar(backgroundColor: Colors.red, radius: 2),
      ],
    );
  }
}
