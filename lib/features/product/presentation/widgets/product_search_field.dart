import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style_manager.dart';

class ProductSearchField extends StatelessWidget {
  const ProductSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(10),
      sliver: SliverToBoxAdapter(
        child: TextFormField(
          style: StyleManager.font16Weight600,
          decoration: InputDecoration(
            hintText: 'ابحث عن المنتج بالاسم...',
            prefixIcon: Icon(
              Icons.search,
              color: AppColor.lightGrey,
            ),
          ),
        ),
      ),
    );
  }
}
