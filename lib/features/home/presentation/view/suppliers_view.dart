import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style_manager.dart';
import '../../../add_product/presentation/widgets/back_button.dart';
import '../widgets/suppliers_view_body.dart';

class SuppliersView extends StatelessWidget {
  const SuppliersView({super.key});

  @override
  Widget build(BuildContext context) {
    final suppliers = [
      {
        "name": "احمد عماره",
        "company": "صاحب محلات ال king store",
        "phone": "01204251544",
        "balance": "12,500 ج.م",
      },
      {
        "name": "محمد مدحت",
        "company": "صاحب محلات ال king store",
        "phone": "01204391511",
        "balance": "8,300 EGP",
      },
      {
        "name": "عمر صلاح",
        "company": "صاحب محلات ال king store",
        "phone": "01285452554",
        "balance": "15,000 EGP",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.local_shipping, color: AppColor.gold),
            SizedBox(width: 5),
            Text('الموردين', style: StyleManager.font13Weight700),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomBackButton(),
          ),
        ],
        centerTitle: true,
      ),
      body: SuppliersViewBody(suppliers: suppliers),
    );
  }
}
