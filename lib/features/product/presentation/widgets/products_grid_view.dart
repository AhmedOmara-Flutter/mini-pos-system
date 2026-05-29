import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/utils/app_color.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key,});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return ProductItem();
      },
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {},
      child: Container(
        decoration: ShapeDecoration(
          color: AppColor.lightGrey,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                onPressed: () {
               },
                icon:  const Icon(Icons.favorite, color: Color(0xffEB5757))
              ),
            ),
            Positioned.fill(
              top: 25,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Flexible(
                    child: CachedNetworkImage(
                      imageUrl: '',
                      placeholder: (context, url) =>
                          const Center(child: Skeletonizer(child: SizedBox())),
                      errorWidget: (context, url, error) => Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey.shade200,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.image_not_supported_outlined,
                              size: 50,
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ),
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ListTile(
                    dense: true,
                    title: Text(
                     'ruficmkld,x',
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    subtitle: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'bunfcl,xvkmfcجنية / ',
                            style: Theme.of(context).textTheme.labelLarge!
                                .copyWith(color: Color(0xffF4A91F)),
                          ),
                          TextSpan(
                            text: 'كيلو',
                            style: Theme.of(context).textTheme.titleMedium!
                                .copyWith(color: Color(0xffF4A91F)),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.right,
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                      },
                      child: CircleAvatar(
                        backgroundColor: AppColor.mainColor,
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
