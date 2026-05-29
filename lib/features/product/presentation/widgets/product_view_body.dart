import 'package:el_king_store/core/utils/app_color.dart';
import 'package:el_king_store/core/utils/route_manager.dart';
import 'package:el_king_store/core/utils/style_manager.dart';
import 'package:el_king_store/features/product/presentation/widgets/product_analytics_card.dart';
import 'package:el_king_store/features/product/presentation/widgets/product_card.dart';
import 'package:el_king_store/features/product/presentation/widgets/product_search_field.dart';
import 'package:flutter/material.dart';

class ProductViewBody extends StatefulWidget {
  const ProductViewBody({super.key});

  @override
  State<ProductViewBody> createState() => _ProductViewBodyState();
}

class _ProductViewBodyState extends State<ProductViewBody> {
  final PageController _pageController = PageController();

  final categories = ['اسكرينات', 'شواحن', 'كابلات', 'برفانات', 'تنوعات'];

  int selectedIndex = 0;

  void _onCategoryTap(int index) {
    setState(() {
      selectedIndex = index;
    });

    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const ProductSearchField(),
          SliverPersistentHeader(
            pinned: false,
            delegate: _CategoryHeaderDelegate(
              minHeight: 60,
              maxHeight: 60,
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    final isSelected = selectedIndex == index;
                    return GestureDetector(
                      onTap: () => _onCategoryTap(index),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColor.gold
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          categories[index],
                          style: StyleManager.font13Weight700.copyWith(
                            color: isSelected ? Colors.white : Colors.grey,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const ProductAnalyticsCard(),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 10,right: 15,bottom: 10,top: 5),
              child: Text(categories[selectedIndex], style: StyleManager.font13Weight700),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: PageView.builder(
              controller: _pageController,
              itemCount: categories.length,
              physics: const BouncingScrollPhysics(),
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.60,
                  ),
                  itemBuilder: (context, index) {
                    return const ProductCard();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  final double minHeight;
  final double maxHeight;

  _CategoryHeaderDelegate({
    required this.child,
    required this.minHeight,
    required this.maxHeight,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(covariant _CategoryHeaderDelegate oldDelegate) {
    return oldDelegate.child != child;
  }
}
