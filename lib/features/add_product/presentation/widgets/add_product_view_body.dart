import 'package:el_king_store/core/utils/app_color.dart';
import 'package:el_king_store/core/utils/style_manager.dart';
import 'package:el_king_store/features/add_product/presentation/widgets/product_info.dart';
import 'package:el_king_store/features/add_product/presentation/widgets/product_text.dart';
import 'package:el_king_store/features/add_product/presentation/widgets/radio_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/background_card.dart';
import '../../../../core/widgets/build_text_form_field.dart';
import 'build_card_header.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  List<DropdownMenuItem<String>> productCategories = [
    DropdownMenuItem(
      value: 'اسكرينات',
      child: Text('اسكرينات', style: StyleManager.font11Weight600),
    ),
    DropdownMenuItem(
      value: 'شواحن',
      child: Text('شواحن', style: StyleManager.font11Weight600),
    ),
    DropdownMenuItem(
      value: 'كابلات',
      child: Text('كابلات', style: StyleManager.font11Weight600),
    ),
    DropdownMenuItem(
      value: 'برفانات',
      child: Text('برفانات', style: StyleManager.font11Weight600),
    ),
    DropdownMenuItem(
      value: 'تنوعات',
      child: Text('تنوعات', style: StyleManager.font11Weight600),
    ),
  ];
  String? selectedCategory;
  List<DropdownMenuItem<String>> unitItems = [
    DropdownMenuItem(
      value: 'قطعة',
      child: Text('قطعة', style: StyleManager.font11Weight600),
    ),
    DropdownMenuItem(
      value: 'كرتونة',
      child: Text('كرتونة', style: StyleManager.font11Weight600),
    ),
    DropdownMenuItem(
      value: 'حبة',
      child: Text('حبة', style: StyleManager.font11Weight600),
    ),
  ];
  String? selectedUnit;
  String? selectedType;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 10,
          top: 10,
        ),
        child: Column(
          children: [
            ProductInfo(),
            SizedBox(height: 10),
            BackgroundCard(
              child: Column(
                children: [
                  BuildCardHeader(
                    text: 'التصنيف ونوع المنتج',
                    icon: Icons.inventory_2_outlined,
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      ProductText(label: 'التصنيف'),
                      SizedBox(height: 12),
                      DropdownButtonFormField<String>(
                        initialValue: selectedCategory,
                        dropdownColor: AppColor.secondaryColor,
                        hint: Text(
                          'اختر التصنيف',
                          style: StyleManager.font11Weight600,
                        ),
                        items: productCategories,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColor.grey),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            selectedCategory = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'برجاء اختيار التصنيف';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          selectedCategory = value;
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ProductText(label: 'النوع'),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedType = 'اصلي';
                            });
                          },
                          child: RadioItem(
                            text: 'اصلي',
                            isSelected: selectedType == 'اصلي',
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedType = 'شعبي';
                            });
                          },
                          child: RadioItem(
                            text: 'شعبي',
                            isSelected: selectedType == 'شعبي',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            BackgroundCard(
              child: Column(
                children: [
                  BuildCardHeader(
                    text: 'الاسعار والمخزون',
                    icon: Icons.local_offer_outlined,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: BuildTextFormField(
                          hintText: 'اكتب اسم المنتج',
                          label: 'سعر الشراء (ج.م)',
                          suffixIcon: Icons.file_download_outlined,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: BuildTextFormField(
                          hintText: 'اكتب اسم المنتج',
                          label: 'سعر البيع (ج.م)',
                          suffixIcon: Icons.file_upload_outlined,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: BuildTextFormField(
                          label: 'الكميه الحاليه',
                          hintText: '0',
                          suffixIcon: Icons.production_quantity_limits,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: BuildTextFormField(
                          label: 'الحد الادني للمخزون',
                          hintText: '0',
                          suffixIcon: Icons.warning_amber,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  BuildTextFormField(
                    hintText: 'اكتب الكميه ',
                    label: 'الكميه',
                    suffixIcon: Icons.countertops_outlined,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            BackgroundCard(
              child: Column(
                children: [
                  BuildCardHeader(text: 'معلومات اضافيه', icon: Icons.list_alt),
                  SizedBox(height: 20),
                  BuildTextFormField(label: 'المورد', hintText: 'اسم المورد'),
                ],
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.save_outlined, color: Colors.white),
                  SizedBox(width: 10),
                  Text('حفظ المنتج', style: StyleManager.font14Weight700),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
