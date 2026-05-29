import 'package:el_king_store/core/widgets/build_text_form_field.dart';
import 'package:el_king_store/features/credit_sales/presentation/widgets/credit_sales_item.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style_manager.dart';

class CreditSalesViewBody extends StatelessWidget {
  const CreditSalesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> creditSales = [
      {
        "name": "احمد عماره",
        "details": "باقي من فاتورة شهر مايو",
        "amount": "2500",
      },
      {
        "name": "محمد مدحت",
        "details": "مشتريات مواد غذائية",
        "amount": "1,200",
      },
      {
        "name": "اسلام محمد",
        "details": "أجل متفق عليه أسبوعين",
        "amount": "3,750",
      },
      {
        "name": "اسلام محمد",
        "details": "أجل متفق عليه أسبوعين",
        "amount": "3,750",
      },
    ];
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
            left: 10, right: 10, bottom: 10, top: 12),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: TextFormField(
                  style: StyleManager.font16Weight600,
                  decoration: InputDecoration(
                    hintText: 'ابحث عن العميل بالاسم...',
                    prefixIcon: Icon(Icons.search, color: AppColor.lightGrey),
                  ),
                ),

            ),
            SliverToBoxAdapter(
                child: SizedBox(height: 12),

            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 5,bottom: 10,top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "قائمة العملاء الآجل",
                      style: StyleManager.font12Weight600,
                    ),
                  ],
                ),
              ),
            ),
            SliverList.separated(
              itemCount: creditSales.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final item = creditSales[index];
                return CreditSalesItem(item: item);
              },
            ),
          ],
        ),
      ),
    );
  }
}

