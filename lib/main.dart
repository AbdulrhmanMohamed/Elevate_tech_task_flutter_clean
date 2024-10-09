import 'package:elevate_task/core/functions/setup_service_locator.dart';
import 'package:elevate_task/core/utils/simple_bloc_observer.dart';
import 'package:elevate_task/features/home/domain/entities/product_entity.dart';
import 'package:elevate_task/features/home/presentaion/views/home_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  setup_service_locator();
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(ProductEntityAdapter());
  await Hive.openBox<ProductEntity>('product_box');

  runApp(const ElevateTech());
}

class ElevateTech extends StatelessWidget {
  const ElevateTech({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 960),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              textTheme: GoogleFonts.acmeTextTheme(),
            ),
            debugShowCheckedModeBanner: false,
            home: const Homeproduct(),
          );
        });
  }
}
