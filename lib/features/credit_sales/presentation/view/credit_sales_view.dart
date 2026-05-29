import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style_manager.dart';
import '../../../add_product/presentation/widgets/back_button.dart';
import '../../../home/presentation/widgets/build_floation_action_button.dart';
import '../widgets/credit_sales_view_body.dart';

class CreditSalesView extends StatelessWidget {
  const CreditSalesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.08),
          BuildFloatingActionButton(),
        ],
      ),
      appBar: AppBar(
        leading: SizedBox(),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_balance_wallet, color: AppColor.gold),
            SizedBox(width: 5),
            Text('الآجل', style: StyleManager.font13Weight700),
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
      body: CreditSalesViewBody(),
    );
  }
}
