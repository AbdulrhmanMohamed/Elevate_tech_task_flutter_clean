
import 'package:elevate_task/features/home/domain/entities/product_entity.dart';
import 'package:elevate_task/features/home/presentaion/views/widgets/product_card_image.dart';
import 'package:elevate_task/features/home/presentaion/views/widgets/product_card_text.dart';
import 'package:flutter/material.dart';
class ProductCard extends StatelessWidget {
final ProductEntity product;
  ProductCard({super.key, required this.product, });
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
          Product_card_image(image:product.image!),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ProductCardText(
              title: product.title!,
              subTitle: product.description!,
              priceAfter: product.price.toString(),
              priceBefore: product.price.toString(),
              rating:product.rate
            ),
          )
        ],
      ),
    );
  }
}
