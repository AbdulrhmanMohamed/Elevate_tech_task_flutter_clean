// ignore_for_file: prefer_const_constructors

import 'package:elevate_task/features/home/presentaion/views/widgets/gridView_product_card.dart';
import 'package:elevate_task/features/home/presentaion/views/widgets/product_card.dart';
import 'package:flutter/material.dart';

class Homeproduct extends StatelessWidget {
  const Homeproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f3),
      body: SafeArea(
        child: GridviewProductCard(),
      ),
    );
  }
}
