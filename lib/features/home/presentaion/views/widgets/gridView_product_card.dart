import 'dart:developer';

import 'package:elevate_task/features/home/presentaion/manager/cubit/home_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'product_card.dart';

class GridviewProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeProductCubit, HomeProductCubitState>(
      builder: (context, state) {

        if(state is HomeProductCubitSuccess){
            log("should see the state data \n${state.products[0]}");
           return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 16, // Horizontal spacing between cards
                mainAxisSpacing: 16, // Vertical spacing between cards
                childAspectRatio:
                    3 / 4.3, // Adjust for card's height and width ratio
              ),
              itemCount: 20, // Number of items in the grid
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(product: state.products[index],); // Build each card
              },
            ),
          ),
        );

        }
        else if(state is HomeProductCubitFailure){
          return Center(child: Text(state.errorMessage));
        } else {
          return Center(child: CircularProgressIndicator(),);
        }
             },
    );
  }
}
