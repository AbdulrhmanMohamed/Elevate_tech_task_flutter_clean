// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProductCardText extends StatelessWidget {
  final String title;
  final String subTitle;
  final String priceBefore;
  final String priceAfter;
  final double rating;
  const ProductCardText({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.priceBefore,
    required this.priceAfter,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 2,
          style: TextStyle(
            fontFamily: "AfacadFlux",
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xff004087),
            
          ),
        ),
        Text(
          subTitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Color(0xff004087), fontSize: 12),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Egp${double.parse(priceBefore)+100}"),
            SizedBox(
              width: 20,
            ),
            Text(
              "Egp"+priceAfter,
              style: TextStyle(
                  decoration: TextDecoration.lineThrough, color: Colors.blue),
            ),
          ],
        ),
        Container(
          child: Row(
            children: [
              Text(
                "Review(${rating})",
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Spacer(),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.add_circle,
                  color: Color(0xff004087),
                ),
                iconSize: 30,
                alignment: Alignment.topRight,
              )
            ],
          ),
        )
      ],
    );
  }
}
