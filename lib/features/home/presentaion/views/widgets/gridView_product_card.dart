import 'package:flutter/material.dart';
import 'product_card.dart';
class GridviewProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 16, // Horizontal spacing between cards
            mainAxisSpacing: 16, // Vertical spacing between cards
            childAspectRatio: 3/4.5, // Adjust for card's height and width ratio
          ),
          itemCount: 20, // Number of items in the grid
          itemBuilder: (BuildContext context, int index) {
            return ProductCard(); // Build each card
          },
        ),
      ),
    );
  }
}

