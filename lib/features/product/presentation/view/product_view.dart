import 'package:el_king_store/core/utils/app_color.dart';
import 'package:el_king_store/features/product/presentation/widgets/product_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/style_manager.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 20,),
            Icon(Icons.layers_rounded, color: AppColor.gold),
            SizedBox(width: 5),
            Text('المنتجات', style: StyleManager.font13Weight700),
          ],
        ),
      ),
      body: ProductViewBody(),
    );
  }
}
