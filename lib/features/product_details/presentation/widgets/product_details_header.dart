import 'package:el_king_store/features/add_product/presentation/widgets/back_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style_manager.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline,color: Colors.red,)),

        Text('تفاصيل المنتج', style: StyleManager.font16Weight700),
        CustomBackButton(),
      ],
    );
  }
}
