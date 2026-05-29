import 'package:flutter/material.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style_manager.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    final List cards = [
      ['المبيعات', '88,451', Colors.green, Icons.payments_rounded, 'ج.م'],
      ['صافي الارباح', '8,451', AppColor.gold, Icons.trending_up_rounded, 'ج.م'],
      ['المنتجات', '852', Colors.blue, Icons.inventory_2_rounded, 'منتج'],
    ];

    return SizedBox(
      height: size.height * 0.18, // responsive height
      child: ListView.builder(
        padding: const EdgeInsets.only(right: 10),
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: size.width * 0.38, // 👈 responsive width بدل 140
            child: HomeCard(
              iconColor: cards[index][2],
              label: cards[index][0],
              number: cards[index][1],
              icon: cards[index][3],
              footer: cards[index][4],
            ),
          );
        },
      ),
    );
  }
}


class HomeCard extends StatelessWidget {
  final Color iconColor;
  final String label;
  final String number;
  final String footer;
  final IconData icon;

  const HomeCard({
    super.key,
    required this.iconColor,
    required this.label,
    required this.number,
    required this.icon,
    required this.footer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColor.secondaryColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.white.withOpacity(.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconColor.withOpacity(.15),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: iconColor, size: 22),
          ),
          const Spacer(),
          Text(
            label,
            style: StyleManager.font11Weight600.copyWith(color: Colors.white70),
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                number,
                style: StyleManager.font23Weight700.copyWith(fontSize: 22),
              ),
              const SizedBox(width: 4),
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Text(
                  footer,
                  style: StyleManager.font11Weight600.copyWith(color: iconColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
