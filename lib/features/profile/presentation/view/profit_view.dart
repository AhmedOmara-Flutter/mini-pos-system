import 'package:el_king_store/features/profile/presentation/widgets/profit_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/style_manager.dart';
import '../../../add_product/presentation/widgets/back_button.dart';

class ProfitView extends StatelessWidget {
  const ProfitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomBackButton(),
        ),],
        title: Text('عمليات تسجيل البيع', style: StyleManager.font16Weight700),
        centerTitle: true,
      ),
      body: ProfitViewBody(),
    );
  }
}
