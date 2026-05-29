import 'package:el_king_store/core/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/style_manager.dart';

class RecentSaleItem extends StatelessWidget {
  final String title;
  final String quantity;
  final String time;
  final String price;

  const RecentSaleItem({
    super.key,
    required this.title,
    required this.quantity,
    required this.time,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColor.gold.withOpacity(0.15),
                border: Border.all(
                  color: AppColor.gold.withOpacity(0.25),
                ),
              ),
              child: const Icon(
                Icons.local_grocery_store,
                color: AppColor.gold,
                size: 18,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: StyleManager.font12Weight600,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    quantity,
                    style: StyleManager.font11Weight600.copyWith(
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: StyleManager.font11Weight600.copyWith(
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: StyleManager.font13Weight400.copyWith(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        Divider(color: AppColor.gold.withOpacity(0.15)),
        const SizedBox(height: 10),
      ],
    );
  }
}