import 'package:el_king_store/features/home/presentation/widgets/supplier_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style_manager.dart';

class SuppliersViewBody extends StatelessWidget {
  const SuppliersViewBody({
    super.key,
    required this.suppliers,
  });

  final List<Map<String, String>> suppliers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10,top: 12),
      child: Column(
        children: [
          TextFormField(
            style: StyleManager.font16Weight600,
            decoration: InputDecoration(
              hintText: 'ابحث عن المورد بالاسم...',
              prefixIcon: Icon(Icons.search, color: AppColor.lightGrey),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: suppliers.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final supplier = suppliers[index];
                return SupplierItem(supplier: supplier);
              },
            ),
          ),
        ],
      ),
    );
  }
}