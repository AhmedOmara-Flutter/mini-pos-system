import 'package:flutter/material.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style_manager.dart';
import '../widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Material(
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xff0C131D),
                  ),
                  child: Icon(Icons.menu, color: Colors.white, size: 20),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 20,),
            Icon(Icons.shopping_cart, color: AppColor.gold),
            SizedBox(width: 5),
            Text('تسجيل البيع', style: StyleManager.font13Weight700),
          ],
        ),
      ),
      body: CartViewBody(),
    );
  }
}
