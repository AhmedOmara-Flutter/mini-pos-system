import 'package:el_king_store/core/utils/app_color.dart';
import 'package:el_king_store/core/utils/style_manager.dart';
import 'package:el_king_store/core/widgets/background_card.dart';
import 'package:el_king_store/features/home/presentation/widgets/recent_sale_item.dart';
import 'package:el_king_store/features/home/presentation/widgets/recent_view_more.dart';
import 'package:flutter/material.dart';

class HomeRecentSales extends StatelessWidget {
  const HomeRecentSales({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.only(left: 10,right: 10, top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: AppColor.secondaryColor,),
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'اخر عمليات البيع',
                style: StyleManager.font12Weight600.copyWith(
                  fontSize: 14,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RecentViewMore(),));
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
          const SizedBox(height: 12),
          Column(
            children: List.generate(
              5,
                  (index) => const RecentSaleItem(
                title: 'شاحن سريع 20W + كابل',
                quantity: '2 قطعة',
                time: '11:30 ص',
                price: '230.00 ج.م',
              ),
            ),
          ),
        ],
      ),
    );
  }
}



