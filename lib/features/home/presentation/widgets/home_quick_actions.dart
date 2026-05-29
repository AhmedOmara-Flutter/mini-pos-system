import 'package:el_king_store/core/utils/route_manager.dart';
import 'package:el_king_store/core/utils/style_manager.dart';
import 'package:el_king_store/features/home/presentation/widgets/quick_action_item.dart';
import 'package:flutter/material.dart';

class HomeQuickActions extends StatelessWidget {
  const HomeQuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right:5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'إجراءات سريعة',
                  style: StyleManager.font12Weight600,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              QuickActionItem(
                title: 'الآجل',
                icon: Icons.account_balance_wallet,
                color: Colors.green,
                onTap: () {
                  Navigator.pushNamed(context, RouteManager.creditSales);
                },
              ),
              QuickActionItem(
                title: 'الموردين',
                icon: Icons.local_shipping,
                color: Colors.blue,
                onTap: () {
                  Navigator.pushNamed(context, RouteManager.suppliers);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

