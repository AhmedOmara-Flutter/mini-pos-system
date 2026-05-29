import 'package:el_king_store/core/utils/app_color.dart';
import 'package:el_king_store/features/credit_sales/presentation/widgets/add_credit_sales_form.dart';
import 'package:flutter/material.dart';

class BuildModalBottomSheet extends StatelessWidget {
  const BuildModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20,bottom: 40),
      decoration: BoxDecoration(
        color: AppColor.secondaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child:AbsorbPointer(
          absorbing: false,
          child: Padding(padding: EdgeInsets.only(bottom: MediaQuery
              .of(context)
              .viewInsets
              .bottom), child: AddCreditSalesForm())),
    );
  }
}

