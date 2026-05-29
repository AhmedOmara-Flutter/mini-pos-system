import 'package:el_king_store/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../add_product/presentation/widgets/back_button.dart';

class StockViewMore extends StatelessWidget {
  const StockViewMore({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        "title": "سماعة AirPods برو",
        "subtitle": "منتج أصلي - جودة عالية",
        "stock": "3 فقط",
      },
      {
        "title": "شاحن سريع Type-C",
        "subtitle": "شاحن 25W سريع",
        "stock": "5 فقط",
      },
      {
        "title": "كابل USB",
        "subtitle": "كابل متين عالي الجودة",
        "stock": "2 فقط",
      },
      {
        "title": "جراب موبايل",
        "subtitle": "حماية كاملة ضد الصدمات",
        "stock": "4 فقط",
      },
    ];

    return Scaffold(
      backgroundColor: AppColor.mainColor,
      appBar: AppBar(
        leading: SizedBox(),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag, color: AppColor.gold),
            SizedBox(width: 5),
            Text('المنتجات قليلة المخزون', style: StyleManager.font13Weight700),
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
          itemCount: products.length,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final item = products[index];

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
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(
                      Icons.inventory_2_rounded,
                      color: Colors.white,
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
                          style: StyleManager.font12Weight600.copyWith(
                            fontSize: 14,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item["subtitle"]!,
                          style: StyleManager.font11Weight600.copyWith(
                            color: Colors.white60,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// Stock
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.red.withOpacity(0.25),
                      ),
                    ),
                    child: Text(
                      item["stock"]!,
                      style: StyleManager.font11Weight600.copyWith(
                        color: Colors.redAccent,
                        fontSize: 11,
                      ),
                    ),
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