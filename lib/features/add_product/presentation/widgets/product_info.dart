import 'package:dotted_border/dotted_border.dart';
import 'package:el_king_store/core/widgets/background_card.dart';
import 'package:el_king_store/features/add_product/presentation/widgets/build_card_header.dart';
import 'package:el_king_store/core/widgets/build_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style_manager.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundCard(
      child: Column(
        children: [
          BuildCardHeader(text: 'معلومات المنتج', icon: Icons.error_outline),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: BuildTextFormField(
                  hintText: 'اكتب اسم المنتج',
                  label: 'اسم المنتج',
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: BuildTextFormField(
                  label: 'الماركه',
                  hintText: 'اكتب الماركه',
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          DottedBorder(
            color: AppColor.gold,
            dashPattern: const [8, 4],
            borderType: BorderType.RRect,
            radius: const Radius.circular(8),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.blueGrey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: AppColor.gold.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      color: AppColor.gold,
                      size: 30,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'اضافه صورة',
                    style: StyleManager.font11Weight600.copyWith(
                      fontSize: 12,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(height: 5),

                  Text('5MB حتي PNG,JPG', style: StyleManager.font11Weight600),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
