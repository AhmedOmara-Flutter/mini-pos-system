import 'package:el_king_store/core/utils/app_color.dart';
import 'package:el_king_store/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  int qty1 = 1;
  int qty2 = 2;
  int qty3 = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          _cartBox(),
          const SizedBox(height: 15),
          _summaryBox(),
          const SizedBox(height: 15),
          const SizedBox(height: 15),
          _notesBox(),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check_circle, color: Colors.white),
                SizedBox(width: 10),
                Text('تاكيد', style: StyleManager.font14Weight700),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _cartBox() {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
      decoration: BoxDecoration(
        color: AppColor.secondaryColor,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: AppColor.lightGrey.withOpacity(0.2)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.shopping_cart, color: AppColor.gold),
              const SizedBox(width: 10),
              Text('سله البيع', style: StyleManager.font13Weight700),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: AppColor.lightGrey.withOpacity(0.2),
                  ),
                ),
                child: Image.asset(Assets.images.airpods3.path, height: 60),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'AirPods AIrPpLo',
                  style: StyleManager.font12Weight600,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add, color: Colors.white, size: 20),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.gold,
                      padding: EdgeInsets.zero,
                      minimumSize: Size(30, 30),
                    ),
                  ),
                  Text('1', style: StyleManager.font19Weight700),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove, color: Colors.white, size: 20),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.gold,
                      padding: EdgeInsets.zero,
                      minimumSize: Size(30, 30),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text('2,254.00 ', style: StyleManager.font13Weight700),
                      Text(
                        'ج.م',
                        style: StyleManager.font12Weight600.copyWith(
                          color: AppColor.lightGrey,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '(2,350.00)',
                    style: StyleManager.font12Weight600.copyWith(
                      color: AppColor.lightGrey,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete_outline),
                color: Colors.red,
              ),
            ],
          ),
          Divider(color: AppColor.lightGrey.withOpacity(0.2)),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: AppColor.lightGrey.withOpacity(0.2),
                  ),
                ),
                child: Image.asset(Assets.images.airpods3.path, height: 60),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'AirPods AIrPpLo',
                  style: StyleManager.font12Weight600,
                ),
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, color: Colors.white, size: 20),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.gold,
                        padding: EdgeInsets.zero,
                        minimumSize: Size(30, 30),
                      ),
                    ),
                    Text('1', style: StyleManager.font19Weight700),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove, color: Colors.white, size: 20),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.gold,
                        padding: EdgeInsets.zero,
                        minimumSize: Size(30, 30),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text('2,254.00 ', style: StyleManager.font13Weight700),
                      Text(
                        'ج.م',
                        style: StyleManager.font12Weight600.copyWith(
                          color: AppColor.lightGrey,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '(2,350.00)',
                    style: StyleManager.font12Weight600.copyWith(
                      color: AppColor.lightGrey,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete_outline),
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _summaryBox() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: AppColor.secondaryColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "عدد المنتجات",
                style: StyleManager.font13Weight700.copyWith(
                  color: AppColor.lightGrey,
                ),
              ),
              Text("3", style: StyleManager.font13Weight700),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "اجمالي الكميه",
                style: StyleManager.font13Weight700.copyWith(
                  color: AppColor.lightGrey,
                ),
              ),
              Text("2", style: StyleManager.font13Weight700),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "اجمالي المبلغ",
                style: StyleManager.font13Weight700.copyWith(
                  color: AppColor.lightGrey,
                ),
              ),
              Text(
                "2,254.00 ج.م",
                style: StyleManager.font16Weight700.copyWith(
                  color: AppColor.gold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _chip(String text, bool selected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? Colors.orange : Colors.white10,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }

  Widget _notesBox() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColor.secondaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.note_add, color: AppColor.gold),
              SizedBox(width: 10),
              Text('ملاحظات (اختياري)', style: StyleManager.font13Weight700),
            ],
          ),
          SizedBox(height: 10),
          TextFormField(
            maxLines: 2,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(hintText: "اكتب ملاحظة..."),
          ),
        ],
      ),
    );
  }
}
