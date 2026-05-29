import 'dart:async';

import 'package:el_king_store/core/helper_function/custom_show_snake_bar.dart';
import 'package:el_king_store/features/home/presentation/widgets/live_countdown_timer.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style_manager.dart';

class HomeTodaySalesCard extends StatelessWidget {
  const HomeTodaySalesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xff1E5F3A), Color(0xff0A1F2F), Color(0xff102B3F)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.25),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  children: [
                    Text(
                      "اليوم",
                      style: StyleManager.font11Weight600.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.08),
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.white.withOpacity(.08)),
                ),
                child: const Icon(
                  Icons.bar_chart_rounded,
                  color: Color(0xffF5B223),
                  size: 30,
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),
          Text("مبيعات اليوم", style: StyleManager.font12Weight600),

          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("3,560.00", style: StyleManager.font30Weight700),
              SizedBox(width: 8),
              Padding(
                padding: EdgeInsets.only(bottom: 7),
                child: Text(
                  "ج.م",
                  style: StyleManager.font12Weight600.copyWith(
                    color: AppColor.gold,
                  ),
                ),
              ),
              Spacer(),
              LiveCountdownTimer(durationSeconds: 24*60*60),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(.18),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  "+18.6%",
                  style: StyleManager.font12Weight600.copyWith(
                    color: Colors.green,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text("من أمس ↗", style: StyleManager.font12Weight600),
            ],
          ),
        ],
      ),
    );
  }
}