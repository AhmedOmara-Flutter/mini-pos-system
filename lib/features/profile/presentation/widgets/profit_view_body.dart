import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style_manager.dart';

class ProfitViewBody extends StatelessWidget {
  const ProfitViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 12,bottom: 10),
      itemCount: 10,
      separatorBuilder: (_, __) =>
      const SizedBox(height: 14),

      itemBuilder: (context, index) {

        return Container(
          padding: const EdgeInsets.all(18),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: AppColor.secondaryColor,

            border: Border.all(
              color: Colors.white.withOpacity(.04),
            ),

            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.18),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),

          child: Row(
            crossAxisAlignment:
            CrossAxisAlignment.start,

            children: [

              /// ICON
              Container(
                width: 60,
                height: 60,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,

                  gradient: LinearGradient(
                    colors: [
                      Colors.green.withOpacity(.25),
                      Colors.green.withOpacity(.08),
                    ],
                  ),
                ),

                child: const Icon(
                  Icons.trending_up_rounded,
                  color: Colors.green,
                  size: 30,
                ),
              ),

              const SizedBox(width: 16),

              /// CONTENT
              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    /// TITLE
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,

                      children: [

                        Text(
                          "عملية بيع",
                          style: StyleManager
                              .font13Weight700,
                        ),

                        Container(
                          padding:
                          const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),

                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(
                              12,
                            ),

                            color: Colors.green
                                .withOpacity(.12),
                          ),

                          child: Text(
                            "+850 ج.م",
                            style: StyleManager
                                .font11Weight600,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    /// PRICE
                    Text(
                      "تم البيع بـ 4500 ج.م",
                      style: StyleManager
                          .font12Weight600,
                    ),

                    const SizedBox(height: 12),

                    /// PRODUCTS BOX
                    Container(
                      padding:
                      const EdgeInsets.all(12),

                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(
                          16,
                        ),

                        color: Colors.white
                            .withOpacity(.03),
                      ),

                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment
                            .start,

                        children: [

                          /// HEADER
                          Row(
                            children: [

                              Icon(
                                Icons
                                    .inventory_2_outlined,
                                color: AppColor.gold,
                                size: 16,
                              ),

                              const SizedBox(
                                  width: 6),

                              Text(
                                "المنتجات",
                                style: StyleManager
                                    .font11Weight600,
                              ),
                            ],
                          ),

                          const SizedBox(
                              height: 12),

                          /// PRODUCTS
                          productItem(
                            "AirPods Pro 2",
                          ),

                          const SizedBox(
                              height: 8),

                          productItem(
                            "شاحن سريع 20W",
                          ),

                          const SizedBox(
                              height: 8),

                          productItem(
                            "كفر iPhone 13",
                          ),

                          const SizedBox(
                              height: 8),

                          /// MORE PRODUCTS
                          Row(
                            children: [

                              Container(
                                width: 6,
                                height: 6,

                                decoration:
                                BoxDecoration(
                                  shape:
                                  BoxShape.circle,

                                  color: Colors.white
                                      .withOpacity(
                                    .4,
                                  ),
                                ),
                              ),

                              const SizedBox(
                                  width: 8),

                              Text(
                                "+2 منتجات أخرى",
                                style: StyleManager
                                    .font11Weight600,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    /// TIME
                    Row(
                      children: [

                        Icon(
                          Icons
                              .access_time_rounded,

                          color: Colors.white
                              .withOpacity(.4),

                          size: 15,
                        ),

                        const SizedBox(width: 5),

                        Text(
                          "اليوم - 8:42 PM",
                          style: StyleManager
                              .font11Weight600,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget productItem(String name) {

    return Row(
      children: [

        Container(
          width: 6,
          height: 6,

          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.gold,
          ),
        ),

        const SizedBox(width: 8),

        Expanded(
          child: Text(
            name,
            style: StyleManager.font11Weight600,
          ),
        ),
      ],
    );
  }
}