import 'package:el_king_store/core/utils/app_color.dart';
import 'package:el_king_store/core/utils/style_manager.dart';
import 'package:el_king_store/features/add_product/presentation/widgets/product_text.dart'
    show ProductText;
import 'package:flutter/material.dart';

class BuildTextFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData? suffixIcon;
  final bool isLabel;

  const BuildTextFormField({
    super.key,
    required this.label,
    required this.hintText,
    this.suffixIcon,this.isLabel=true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if(isLabel)
        ProductText(label: label),
        SizedBox(height: 12),
        TextFormField(
          style: StyleManager.font16Weight600,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: Icon(suffixIcon, color: AppColor.lightGrey),
          ),
        ),
      ],
    );
  }
}
