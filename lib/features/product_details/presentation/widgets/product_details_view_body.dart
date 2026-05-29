import 'package:el_king_store/core/utils/style_manager.dart';
import 'package:el_king_store/core/widgets/background_card.dart';
import 'package:el_king_store/features/product_details/presentation/widgets/product_details_header.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../generated/assets.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          spacing: 10,
          children: [
            ProductDetailsHeader(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: AppColor.secondaryColor,
              ),
              child: Stack(
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(25),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.asset(
                        Assets.images.airPods.path,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.gold.withOpacity(0.2),
                      ),
                      child: Icon(
                        Icons.image_outlined,
                        color: AppColor.gold,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('سماعه AirPods Pro2', style: StyleManager.font16Weight700),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusGeometry.circular(7),
                    color: Color(0xff154233),
                  ),
                  child: Text(
                    'اصلي',
                    style: StyleManager.font13Weight600.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            BackgroundCard(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'التصنيف',
                        style: StyleManager.font13Weight600.copyWith(
                          color: AppColor.lightGrey,
                        ),
                      ),
                      Spacer(),
                      Text('سماعات', style: StyleManager.font13Weight600),
                      SizedBox(width: 5),
                      Icon(Icons.headphones, color: AppColor.lightGrey),
                    ],
                  ),
                  Container(
                    height: 1,
                    color: AppColor.lightGrey.withOpacity(0.3),
                    margin: EdgeInsets.symmetric(vertical: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'النوع',
                        style: StyleManager.font13Weight600.copyWith(
                          color: AppColor.lightGrey,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.circle, color: Colors.green, size: 7),
                      SizedBox(width: 5),
                      Text('اصلي', style: StyleManager.font13Weight600),
                    ],
                  ),
                  Container(
                    height: 1,
                    color: AppColor.lightGrey.withOpacity(0.3),
                    margin: EdgeInsets.symmetric(vertical: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'سعر الشراء',
                        style: StyleManager.font13Weight600.copyWith(
                          color: AppColor.lightGrey,
                        ),
                      ),
                      Text('250.00 ح.م', style: StyleManager.font13Weight600),
                    ],
                  ),
                  Container(
                    height: 1,
                    color: AppColor.lightGrey.withOpacity(0.3),
                    margin: EdgeInsets.symmetric(vertical: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'سعر البيع',
                        style: StyleManager.font13Weight600.copyWith(
                          color: AppColor.lightGrey,
                        ),
                      ),
                      Text('350.00 ح.م', style: StyleManager.font13Weight600),
                    ],
                  ),
                  Container(
                    height: 1,
                    color: AppColor.lightGrey.withOpacity(0.3),
                    margin: EdgeInsets.symmetric(vertical: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'الكميه الحاليه',
                        style: StyleManager.font13Weight600.copyWith(
                          color: AppColor.lightGrey,
                        ),
                      ),
                      Text('10 قطعه', style: StyleManager.font13Weight600),
                    ],
                  ),
                  Container(
                    height: 1,
                    color: AppColor.lightGrey.withOpacity(0.3),
                    margin: EdgeInsets.symmetric(vertical: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'الكميه الاقل تنبيه',
                        style: StyleManager.font13Weight600.copyWith(
                          color: AppColor.lightGrey,
                        ),
                      ),
                      Text('5 قطع', style: StyleManager.font13Weight600),
                    ],
                  ),
                ],
              ),
            ),
            BackgroundCard(
              child: Column(
                children: [
                  Text('تعديل الكميه', style: StyleManager.font13Weight600),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Material(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(0xff18202F),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text('10', style: StyleManager.font23Weight700),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Material(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(0xff18202F),
                              ),
                              child: Icon(
                                Icons.minimize_sharp,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Color(0xff441D25),
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Color(0xff5B2029)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_downward_sharp,
                                color: Colors.red,
                                size: 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'خصم كميه',
                                style: StyleManager.font13Weight700.copyWith(
                                  color: Color(0xffF99D90),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Color(0xff153D31),
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Colors.green.shade700),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_upward_outlined,
                                color: Colors.green,
                                size: 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'زياده كميه',
                                style: StyleManager.font13Weight700.copyWith(
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            BackgroundCard(
              child: Column(
                children: [
                  Text('معلومات اضافيه', style: StyleManager.font13Weight600),
                  Container(
                    height: 1,
                    color: AppColor.lightGrey.withOpacity(0.3),
                    margin: EdgeInsets.symmetric(vertical: 18),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'الماركه',
                        style: StyleManager.font13Weight600.copyWith(
                          color: AppColor.lightGrey,
                        ),
                      ),
                      Text('Apple', style: StyleManager.font13Weight600),
                    ],
                  ),
                  Container(
                    height: 1,
                    color: AppColor.lightGrey.withOpacity(0.3),
                    margin: EdgeInsets.symmetric(vertical: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'الضمان',
                        style: StyleManager.font13Weight600.copyWith(
                          color: AppColor.lightGrey,
                        ),
                      ),
                      Text('6 شهور', style: StyleManager.font13Weight600),
                    ],
                  ),
                  Container(
                    height: 1,
                    color: AppColor.lightGrey.withOpacity(0.3),
                    margin: EdgeInsets.symmetric(vertical: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'الوصف',
                        style: StyleManager.font13Weight600.copyWith(
                          color: AppColor.lightGrey,
                        ),
                      ),
                      Text(
                        'جوده صوت عاليه - عزل ضوضاء - شحن لاسلكي',
                        style: StyleManager.font13Weight600,
                      ),
                    ],
                  ),
                  Container(
                    height: 1,
                    color: AppColor.lightGrey.withOpacity(0.3),
                    margin: EdgeInsets.symmetric(vertical: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'تاريخ الاضافه',
                        style: StyleManager.font13Weight600.copyWith(
                          color: AppColor.lightGrey,
                        ),
                      ),
                      Text('2024/15/5', style: StyleManager.font13Weight600),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.save_outlined, color: Colors.white),
                  SizedBox(width: 10),
                  Text('حفظ المنتج', style: StyleManager.font12Weight600),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
