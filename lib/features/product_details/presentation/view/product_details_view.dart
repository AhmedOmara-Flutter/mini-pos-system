import 'package:el_king_store/features/product_details/presentation/widgets/product_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ProductDetailsViewBody()),
    );
  }
}
