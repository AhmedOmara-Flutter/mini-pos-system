import 'package:el_king_store/features/product/presentation/widgets/product_state_card.dart';
import 'package:flutter/material.dart';

class ProductAnalyticsCard extends StatelessWidget {
  const ProductAnalyticsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),
        child: Row(
          children: [
            Expanded(
              child: ProductStatCard(
                title: "قيمة المخزون",
                value: "28,450",
                color: Colors.blue,
                icon: Icons.account_balance_wallet,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ProductStatCard(
                title: "إجمالي المنتجات",
                value: "142",
                color: Colors.green,
                icon: Icons.inventory_2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
