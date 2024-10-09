import 'package:flutter/material.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";

class Product_card_image extends StatelessWidget {
  const Product_card_image({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Container(
          height: 200.h,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg"),
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
