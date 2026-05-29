
import 'package:el_king_store/features/credit_sales/presentation/view/credit_sales_view.dart';
import 'package:el_king_store/features/main/presentation/view/main_view.dart';
import 'package:el_king_store/features/profile/presentation/view/profit_view.dart';
import 'package:flutter/material.dart';

import '../../features/add_product/presentation/view/add_product_view.dart';
import '../../features/home/presentation/view/suppliers_view.dart';
import '../../features/product_details/presentation/view/product_details_view.dart';
import '../../features/splash/view/splash_view.dart';

class RouteManager {
  static const String splash = '/splashView';
  static const String main = '/mainView';
  static const String addProductView = '/addProductView';
  static const String productDetails = '/product_details';
  static const String profit = '/profit';
  static const String suppliers = '/suppliers';
  static const String creditSales = '/credit_sales';

}

class GenerateRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteManager.main:
        return pageRouteBuilder(const MainView()) ;
      case RouteManager.addProductView:
        return MaterialPageRoute(builder: (_) => const AddProductView());
      case RouteManager.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case RouteManager.productDetails:
        return MaterialPageRoute(builder: (_) => const ProductDetailsView());
      case RouteManager.profit:
        return MaterialPageRoute(builder: (_) => const ProfitView());
      case RouteManager.suppliers:
        return MaterialPageRoute(builder: (_) => const SuppliersView());
      case RouteManager.creditSales:
        return MaterialPageRoute(builder: (_) => const CreditSalesView());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text('Error')),
          body: Center(child: Text('Something went wrong!')),
        );
      },
    );
  }

  static Route pageRouteBuilder(Widget screen){
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionDuration: Duration(milliseconds: 350),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: Curves.easeOutQuart,
            ),
            child: child,
          ),
    );
  }
}
