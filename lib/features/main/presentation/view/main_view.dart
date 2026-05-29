import 'package:el_king_store/features/home/presentation/view/home_view.dart';
import 'package:el_king_store/features/main/presentation/widgets/custom_bottom_nav_bar.dart';
import 'package:el_king_store/features/profile/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../cart/presentation/view/cart_view.dart';
import '../../../product/presentation/view/product_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  final List<Widget> pages = [HomeView(), ProductView(),CartView(),ProfileView()];

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: currentIndex,
        onTap: (int value) {
          changeIndex(value);
        },
      ),
      body:  PopScope(
          canPop: false,
          onPopInvoked: (didPop) {

            if (currentIndex != 0) {
              changeIndex(0);
            } else {
              SystemNavigator.pop();
            }
          },
          child:pages[currentIndex]
      ),
    );
  }
}
