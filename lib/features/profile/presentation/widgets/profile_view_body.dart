import 'package:el_king_store/core/utils/app_color.dart';
import 'package:el_king_store/core/utils/route_manager.dart';
import 'package:el_king_store/core/utils/style_manager.dart';
import 'package:el_king_store/features/profile/presentation/widgets/activity_tile.dart';
import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    const gold = AppColor.gold;
    const green = Color(0xff22C55E);

    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(
              left: 14,
              right: 14,
              bottom: 20,
              top: 10,
            ),
            child: Column(
              children: [
                /// LOGO
                Container(
                  width: 145,
                  height: 145,
                  margin: EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [gold.withOpacity(.25), Colors.transparent],
                    ),
                    border: Border.all(color: gold.withOpacity(.4), width: 1.5),
                    boxShadow: [
                      BoxShadow(
                        color: gold.withOpacity(.25),
                        blurRadius: 35,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      Assets.images.kingLogo.path,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: AppColor.secondaryColor,
                    border: Border.all(color: gold.withOpacity(.08)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.25),
                        blurRadius: 25,
                        offset: const Offset(0, 15),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 82,
                        height: 82,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [gold, gold.withOpacity(.2)],
                          ),
                        ),
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            Assets.images.medhat2.path,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const BoxDecoration(
                                    color: green,
                                    shape: BoxShape.circle,
                                  ),
                                ),

                                const SizedBox(width: 6),

                                Text(
                                  "النظام يعمل",
                                  style: StyleManager.font11Weight600,
                                ),
                              ],
                            ),

                            const SizedBox(height: 10),

                            Text(
                              "متجر اكسسوارات الموبيل",
                              style: StyleManager.font13Weight700,
                            ),

                            const SizedBox(height: 7),

                            Text(
                              "إدارة النشاط اليومي",
                              style: StyleManager.font11Weight600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RouteManager.profit);
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff1E5F3A),
                          Color(0xff0A1F2F),
                          Color(0xff102B3F),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.gold.withOpacity(.12),
                          blurRadius: 25,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "إجمالي الأرباح",
                                style: StyleManager.font11Weight600,
                              ),

                              const SizedBox(height: 14),

                              Text(
                                "12,500 ج.م",
                                style: StyleManager.font19Weight700,
                              ),

                              const SizedBox(height: 10),

                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.green.withOpacity(.12),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.arrow_upward,
                                      color: Colors.green,
                                      size: 16,
                                    ),

                                    const SizedBox(width: 5),

                                    Text(
                                      "+18%",
                                      style: StyleManager.font11Weight600,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.gold.withOpacity(.12),
                          ),
                          child: Icon(
                            Icons.bar_chart_rounded,
                            color: AppColor.gold,
                            size: 34,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // const SizedBox(height: 18),
                //
                // /// ACTIVITY
                // Container(
                //   padding: const EdgeInsets.all(18),
                //   decoration: BoxDecoration(
                //     color: AppColor.secondaryColor,
                //     borderRadius: BorderRadius.circular(24),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.black.withOpacity(.18),
                //         blurRadius: 20,
                //         offset: const Offset(0, 10),
                //       ),
                //     ],
                //   ),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Row(
                //         children: [
                //           Container(
                //             padding: const EdgeInsets.all(10),
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(14),
                //               color: gold.withOpacity(.12),
                //             ),
                //             child: Icon(Icons.bolt, color: gold),
                //           ),
                //
                //           const SizedBox(width: 12),
                //
                //           Text(
                //             "النشاط الأخير",
                //             style: StyleManager.font13Weight700,
                //           ),
                //         ],
                //       ),
                //
                //       const SizedBox(height: 24),
                //
                //       ActivityTile(
                //         icon: Icons.sell,
                //         title: "تم تسجيل عملية بيع",
                //         sub: "منذ 10 دقائق",
                //         color: green,
                //       ),
                //
                //       ActivityTile(
                //         icon: Icons.add_box_rounded,
                //         title: "تم إضافة منتج جديد",
                //         sub: "شاحن سريع 20W",
                //         color: gold,
                //       ),
                //     ],
                //   ),
                // ),
                //
                // const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget miniCard({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: AppColor.secondaryColor,
        border: Border.all(color: color.withOpacity(.08)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: color.withOpacity(.12),
            ),
            child: Icon(icon, color: color, size: 22),
          ),

          const SizedBox(height: 18),

          Text(value, style: StyleManager.font13Weight700),

          const SizedBox(height: 6),

          Text(title, style: StyleManager.font11Weight600),
        ],
      ),
    );
  }
}


class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: AppColor.secondaryColor,
        border: Border.all(color: color.withOpacity(.08)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.18),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: color.withOpacity(.12),
            ),
            child: Icon(icon, color: color),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(value, style: StyleManager.font19Weight700),

              const SizedBox(height: 6),

              Text(title, style: StyleManager.font11Weight600),
            ],
          ),
        ],
      ),
    );
  }
}
