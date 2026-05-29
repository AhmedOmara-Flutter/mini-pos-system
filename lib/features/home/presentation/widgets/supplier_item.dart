import 'package:el_king_store/core/utils/app_color.dart';
import 'package:el_king_store/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

class SupplierItem extends StatelessWidget {
  const SupplierItem({
    super.key,
    required this.supplier,
  });

  final Map<String, String> supplier;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColor.secondaryColor,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: AppColor.lightGrey.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.15),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 62,
            width: 62,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              gradient: LinearGradient(
                colors: [
                  Colors.blue.withOpacity(.25),
                  Colors.blue.withOpacity(.08),
                ],
              ),
            ),
            child: const Icon(
              Icons.local_shipping_rounded,
              color: Colors.blue,
              size: 30,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        supplier["name"]!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:StyleManager.font13Weight700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.business_rounded,
                      color: Colors.grey.shade500,
                      size: 15,
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        supplier["company"]!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:StyleManager.font11Weight600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.04),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_rounded,
                            color: Colors.grey.shade400,
                            size: 15,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            supplier["phone"]!,
                            style:StyleManager.font12Weight600,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
