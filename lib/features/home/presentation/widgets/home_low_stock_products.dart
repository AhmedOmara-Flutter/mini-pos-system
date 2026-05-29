import 'package:el_king_store/features/home/presentation/widgets/low_stock_item.dart';
import 'package:el_king_store/features/home/presentation/widgets/stock_view_more.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style_manager.dart';


class HomeLowStockProducts extends StatelessWidget {
  const HomeLowStockProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10, bottom: 10),
      padding: EdgeInsets.only(left: 10,right: 10, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: AppColor.secondaryColor,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'منتجات قليلة المخزون',
                style: StyleManager.font12Weight600.copyWith(
                  fontSize: 14,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StockViewMore(),));
                },
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Text(
                    'عرض الكل',
                    style: StyleManager.font12Weight600.copyWith(
                      color: AppColor.gold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Column(
            children: List.generate(
              2,
                  (index) => LowStockItem(
                    title: 'سماعة AirPods برو',
                    subtitle: 'منتج أصلي - جودة عالية',
                    stockText: '3 فقط',
                  ),
            ),
          ),
        ],
      ),
    );
  }
}


