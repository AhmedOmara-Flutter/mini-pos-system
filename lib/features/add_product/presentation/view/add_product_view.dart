import 'package:flutter/material.dart';

import '../../../../core/utils/style_manager.dart';
import '../widgets/add_product_view_body.dart';
import '../widgets/back_button.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomBackButton(),
        ),],
        title: Text('اضافه منتج جديد', style: StyleManager.font16Weight700),
        centerTitle: true,
      ),
      body: SafeArea(child: AddProductViewBody()),
    );
  }
}
