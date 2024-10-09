import 'package:elevate_task/features/views/home_product.dart';
import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main(){

runApp(const ElevateTech());
}



class ElevateTech extends StatelessWidget {
  const ElevateTech({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
    designSize: const Size(360,960),
      minTextAdapt: true,
      builder: (context,child) {
        
        return MaterialApp(
        theme:   ThemeData(
          textTheme: GoogleFonts.acmeTextTheme(),
        ),
          debugShowCheckedModeBanner: false,
          home:const Homeproduct(),
        );
      }
    );
  }
}