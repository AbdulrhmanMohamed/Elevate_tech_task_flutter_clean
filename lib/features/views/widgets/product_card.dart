
import 'package:elevate_task/features/views/widgets/product_card_image.dart';
import 'package:elevate_task/features/views/widgets/product_card_text.dart';
import 'package:flutter/material.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";
class ProductCard extends StatelessWidget {
  ProductCard({super.key});
  @override
  Widget build(BuildContext context) {
    
    return Container(
     
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(0, 3),
              blurRadius: 3,
              spreadRadius: 5,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Product_card_image(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ProductCardText(
              title: "Nice Aire Shoose",
              subTitle: "Nice Shoose for women",
              priceAfter: "Egp1200",
              priceBefore: "Egp2000",
              rating: 4.6,
            ),
          )
        ],
      ),
    );
  }
}
