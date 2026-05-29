import 'package:el_king_store/core/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/style_manager.dart';
import '../../../add_product/presentation/widgets/back_button.dart';

class RecentViewMore extends StatelessWidget {
  const RecentViewMore({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> sales = [
      {
        "title": "سماعة AirPods برو",
        "quantity": "الكمية: 2",
        "time": "11:30 ص",
        "price": "200.00 ج.م",
      },
      {
        "title": "شاحن Type-C",
        "quantity": "الكمية: 1",
        "time": "11:54 ص",
        "price": "400.00 ج.م",
      },
      {
        "title": "جراب موبايل",
        "quantity": "الكمية: 3",
        "time": "01:51 ص",
        "price": "900.00 ج.م",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag, color: AppColor.gold),
            SizedBox(width: 5),
            Text('المبيعات الأخيره', style: StyleManager.font13Weight700),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: sales.length,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final item = sales[index];
            return Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color:AppColor.secondaryColor,
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                  color: AppColor.lightGrey.withOpacity(0.2),
                ),
              ),
              child: Row(
                children: [
                  /// Icon
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColor.gold.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColor.gold.withOpacity(0.2),
                      ),
                    ),
                    child: const Icon(
                      Icons.local_grocery_store,
                      color: AppColor.gold,
                      size: 18,
                    ),
                  ),

                  const SizedBox(width: 12),

                  /// Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["title"]!,
                          style: StyleManager.font12Weight600,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item["quantity"]!,
                          style: StyleManager.font11Weight600.copyWith(
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// Time + Price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        item["time"]!,
                        style: StyleManager.font11Weight600.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item["price"]!,
                        style: StyleManager.font13Weight400.copyWith(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
