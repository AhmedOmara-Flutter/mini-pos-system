import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style_manager.dart';

class CreditSalesItem extends StatelessWidget {
  const CreditSalesItem({
    super.key,
    required this.item,
  });

  final Map<String, String> item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColor.secondaryColor,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: Colors.white.withOpacity(.05)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.22),
            blurRadius: 18,
            spreadRadius: -4,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 68,
                width: 68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.orange.withOpacity(.30),
                      Colors.deepOrange.withOpacity(.10),
                    ],
                  ),
                ),
                child: const Icon(
                  Icons.account_balance_wallet_rounded,
                  color: Colors.orangeAccent,
                  size: 32,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item["name"]!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: StyleManager.font14Weight700,
                    ),

                    const SizedBox(height: 6),

                    Text(
                      item["details"]!,
                      style: StyleManager.font11Weight600,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.white.withOpacity(.05),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.03),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 38,
                        width: 38,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.05),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.calendar_today_rounded,
                          color: Colors.grey.shade300,
                          size: 18,
                        ),
                      ),

                      const SizedBox(width: 12),

                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(
                            "التاريخ",
                            style: StyleManager.font12Weight600,
                          ),

                          const SizedBox(height: 3),

                          Text(
                            "15 مايو 2026 ص5:51",
                            style: StyleManager.font11Weight600,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 14),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange.withOpacity(.18),
                      Colors.deepOrange.withOpacity(.08),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.orange.withOpacity(.12),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "المبلغ",
                      style: StyleManager.font11Weight600
                          .copyWith(color: AppColor.gold),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      "${item["amount"]} ج.م",
                      style: StyleManager.font16Weight700
                          .copyWith(color: AppColor.gold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
