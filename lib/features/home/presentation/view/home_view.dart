import 'package:el_king_store/core/utils/app_color.dart';
import 'package:el_king_store/features/home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/style_manager.dart';
import '../../../../generated/assets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColor.gold, width: 2),
              image: DecorationImage(
                image: AssetImage(Assets.images.medhat2.path),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Column(
          children: [
            Text(' 👋 مرحبا بك', style: StyleManager.font11Weight600),
            Text('متجر اكسسوارات الموبيل', style: StyleManager.font12Weight600),
          ],
        ),
      ),
      body: HomeViewBody(),
    );
  }
}
