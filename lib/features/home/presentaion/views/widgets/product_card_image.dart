import 'package:flutter/material.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";

class Product_card_image extends StatelessWidget {
final String image;
  const Product_card_image({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Container(
          height: 150.h,
          decoration: BoxDecoration(
          
            image: DecorationImage(
                image: NetworkImage(
                    image),
                fit: BoxFit.contain,),
          ),
        ),
       
        Positioned(
          child: Icon(
            Icons.favorite_border_outlined,
            color: Colors.blue,
          ),
          top: 5,
          right: 5,
        ),
      ],
    );
  }
}
