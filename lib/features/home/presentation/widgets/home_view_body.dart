import 'package:el_king_store/core/utils/style_manager.dart';
import 'package:el_king_store/features/home/presentation/widgets/home_recent_sales.dart';
import 'package:el_king_store/features/home/presentation/widgets/main_header.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import 'home_dashboard.dart';
import 'home_low_stock_products.dart';
import 'home_quick_actions.dart';
import 'home_today_sales_card.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 5,),
                HomeTodaySalesCard(),
                HomeDashboard(),
                HomeQuickActions(),
                HomeLowStockProducts(),
                HomeRecentSales(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

