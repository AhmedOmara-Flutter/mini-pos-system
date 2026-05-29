import 'package:el_king_store/core/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/route_manager.dart';
import '../../../../core/utils/style_manager.dart';
import '../../../../generated/assets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.secondaryColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap:(){
                  Navigator.pushNamed(context, RouteManager.productDetails);
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: AppColor.blueGrey ,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      color: AppColor.lightGrey.withOpacity(0.2)
                    )
                  ),
                  child: Icon(Icons.edit,color: Colors.white,size: 17,),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 7,),
              Image.asset(
                Assets.images.airpods3.path,
                height: MediaQuery.sizeOf(context).height * 0.15,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Text("AirPods AirPprLo", style: StyleManager.font16Weight600),
              SizedBox(height: 10),
              Text(
                'الكميه: 24',
                style: StyleManager.font14Weight700.copyWith(color: Colors.green),
              ),
              SizedBox(height: 7),
              Text(
                '80.00 ج.م',
                style: StyleManager.font14Weight700.copyWith(color: AppColor.gold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppColor.gold,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Icon(Icons.add_circle_sharp,color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// import 'package:el_king_store/core/widgets/background_card.dart';
// import 'package:flutter/material.dart';
//
// import '../../../../core/utils/style_manager.dart';
// import '../../../../generated/assets.dart';
//
// class ProductCard extends StatelessWidget {
//   const ProductCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BackgroundCard(
//       child: Container(
//         padding: const EdgeInsets.all(14),
//         decoration: BoxDecoration(
//           color: const Color(0xff101826),
//           borderRadius: BorderRadius.circular(14),
//           border: Border.all(
//             color: const Color(0xff223248),
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(.18),
//               blurRadius: 10,
//               offset: const Offset(0, 4),
//             ),
//           ],
//         ),
//
//         child: Column(
//           children: [
//
//             /// top section
//             Row(
//               children: [
//
//                 /// image
//                 Container(
//                   width: 74,
//                   height: 74,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8),
//                     child: Image.asset(
//                       Assets.images.airPods.path,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),
//
//                 const SizedBox(width: 14),
//
//                 /// product info
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment:
//                     CrossAxisAlignment.start,
//                     children: [
//
//                       Text(
//                         "AirPods Pro2",
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                         style: StyleManager.font16Weight700.copyWith(
//                           color: Colors.white,
//                         ),
//                       ),
//
//                       const SizedBox(height: 6),
//
//                       Text(
//                         "الماركة : Apple",
//                         style: StyleManager.font12Weight600.copyWith(
//                           color: const Color(0xffA8B3C2),
//                         ),
//                       ),
//
//                       const SizedBox(height: 4),
//
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 10,
//                           vertical: 4,
//                         ),
//                         decoration: BoxDecoration(
//                           color: const Color(0xff1A2435),
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         child: Text(
//                           "أصلي",
//                           style:
//                           StyleManager.font11Weight600.copyWith(
//                             color: const Color(0xffE7A531),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//
//                 const SizedBox(width: 10),
//
//                 /// price
//                 Column(
//                   crossAxisAlignment:
//                   CrossAxisAlignment.end,
//                   children: [
//
//                     Text(
//                       "سعر الشراء",
//                       style:
//                       StyleManager.font11Weight600.copyWith(
//                         color: const Color(0xff8A94A6),
//                       ),
//                     ),
//
//                     const SizedBox(height: 4),
//
//                     Text(
//                       "250",
//                       style:
//                       StyleManager.font23Weight700.copyWith(
//                         color: Colors.white,
//                       ),
//                     ),
//
//                     Text(
//                       "ج.م",
//                       style:
//                       StyleManager.font11Weight600.copyWith(
//                         color: const Color(0xff8A94A6),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//
//             const SizedBox(height: 16),
//             Container(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 12,
//                 vertical: 10,
//               ),
//               decoration: BoxDecoration(
//                 color: const Color(0xff0C1421),
//                 borderRadius: BorderRadius.circular(12),
//               ),
//
//               child: Column(
//                 children: [
//
//                   Row(
//                     mainAxisAlignment:
//                     MainAxisAlignment.spaceBetween,
//                     children: [
//
//                       Text(
//                         "الكمية المتوفرة",
//                         style:
//                         StyleManager.font12Weight600.copyWith(
//                           color: const Color(0xffA8B3C2),
//                         ),
//                       ),
//
//                       RichText(
//                         text: TextSpan(
//                           children: [
//
//                             TextSpan(
//                               text: "25 ",
//                               style: StyleManager
//                                   .font23Weight700
//                                   .copyWith(
//                                 color:
//                                 const Color(0xff22C55E),
//                               ),
//                             ),
//
//                             TextSpan(
//                               text: "قطعة",
//                               style: StyleManager
//                                   .font12Weight600
//                                   .copyWith(
//                                 color: Colors.white70,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   const SizedBox(height: 10),
//
//                   /// progress
//                   Container(
//                     width: double.infinity,
//                     height: 7,
//                     decoration: BoxDecoration(
//                       color: Colors.white10,
//                       borderRadius:
//                       BorderRadius.circular(30),
//                     ),
//
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Container(
//                         width: 90,
//                         decoration: BoxDecoration(
//                           borderRadius:
//                           BorderRadius.circular(30),
//                           gradient: const LinearGradient(
//                             colors: [
//                               Color(0xff22C55E),
//                               Color(0xff16A34A),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//
//                   const SizedBox(height: 6),
//
//                   Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "19% متبقي بالمخزون",
//                       style:
//                       StyleManager.font11Weight600.copyWith(
//                         color: const Color(0xff7E8A9A),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 14),
//
//             /// button
//             SizedBox(
//               width: double.infinity,
//               height: 50,
//               child: ElevatedButton.icon(
//                 onPressed: () {},
//
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor:
//                   const Color(0xffE7A531),
//
//                   foregroundColor: Colors.black,
//
//                   elevation: 0,
//
//                   shape: RoundedRectangleBorder(
//                     borderRadius:
//                     BorderRadius.circular(12),
//                   ),
//                 ),
//
//                 icon: const Icon(
//                   Icons.add_circle_rounded,
//                   size: 22,
//                 ),
//
//                 label: Text(
//                   "إضافة إلى البيع",
//                   style:
//                   StyleManager.font13Weight700.copyWith(
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),

//   }
// }
