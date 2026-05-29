import 'package:el_king_store/core/utils/app_color.dart';
import 'package:el_king_store/core/utils/route_manager.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/style_manager.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Container(
          height: 88,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: const Color(0xff0B121C),
            borderRadius: BorderRadius.circular(32),
            border: Border.all(color: AppColor.gold.withOpacity(.20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.35),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            children: [
              _navItem(icon: Icons.home_rounded, label: 'الرئيسية', index: 0),
              _navItem(icon: Icons.layers_rounded, label: 'المخزون', index: 1),

              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RouteManager.addProductView);
                  },
                  child: Transform.translate(
                    offset: const Offset(0, -18),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color: AppColor.gold,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 34,
                      ),
                    ),
                  ),
                ),
              ),

              _navItem(
                icon: Icons.shopping_cart,
                label: 'تسجيل بيع',
                index: 2,
              ),     _navItem(
                icon: Icons.person,
                label: 'مزيد',
                index: 3,
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _navItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    final bool isSelected = currentIndex == index;

    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () => onTap(index),
        child: SizedBox(
          height: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedScale(
                duration: const Duration(milliseconds: 250),
                scale: isSelected ? 1.15 : 1,
                child: Icon(
                  icon,
                  size: 26,
                  color: isSelected ? AppColor.gold : AppColor.lightGrey,
                ),
              ),

              const SizedBox(height: 4),

              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 250),
                style: isSelected
                    ? StyleManager.font12Weight600.copyWith(
                        color: AppColor.gold,
                      )
                    : StyleManager.font11Weight600.copyWith(
                        color: AppColor.lightGrey,
                      ),
                child: Text(label),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
