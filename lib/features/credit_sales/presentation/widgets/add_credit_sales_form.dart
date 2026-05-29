import 'package:el_king_store/core/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/style_manager.dart';
import '../../../../core/widgets/build_text_form_field.dart';

class AddCreditSalesForm extends StatelessWidget {
  const AddCreditSalesForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20,bottom: 10),
          decoration: BoxDecoration(
            color: AppColor.gold,
            borderRadius: BorderRadius.circular(20)
          ),
          width: 60,
          height: 3,
        ),
        Row(
          children: [
            Expanded(
              child: BuildTextFormField(
                label: '',
                hintText: 'اكتب اسم العميل',
                isLabel: false,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: BuildTextFormField(
                label: '',
                hintText: 'اكتب المبلغ الآجل',
                isLabel: false,
              ),
            ),
          ],
        ),
        BuildTextFormField(
          label: '',
          hintText: 'أدخل أي ملاحظات إضافية',
          isLabel: false,
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add_circle_outline, color: Colors.white),
              SizedBox(width: 10),
              Text('إضافة الآجل', style: StyleManager.font14Weight700),
            ],
          ),
        ),
      ],
    );
    ;
  }
}
