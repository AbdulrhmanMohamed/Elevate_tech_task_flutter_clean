// ignore_for_file: prefer_const_constructors

import 'package:elevate_task/core/functions/setup_service_locator.dart';
import 'package:elevate_task/core/utils/color_managaer.dart';
import 'package:elevate_task/features/home/data/repos/home_repo_impl.dart';
import 'package:elevate_task/features/home/domain/usecases/get_home_product_usecase.dart';
import 'package:elevate_task/features/home/presentaion/manager/cubit/home_product_cubit.dart';
import 'package:elevate_task/features/home/presentaion/views/widgets/gridView_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homeproduct extends StatelessWidget {

  const Homeproduct({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeProductCubit(
        GetHomeProductUsecase(
          homeRepo: get_it.get<HomeRepoImpl>(),
        ),
      )..getHomeProduct(),
      child: Scaffold(
        backgroundColor: ColorManager.backgroundColor,
        body: SafeArea(
          child: GridviewProductCard(),
        ),
      ),
    );
  }
}
