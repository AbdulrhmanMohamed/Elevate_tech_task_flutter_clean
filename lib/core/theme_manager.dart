import 'package:elevate_task/core/color_managaer.dart';
import 'package:flutter/material.dart';

ThemeData themeManager() {
  return ThemeData(
    scaffoldBackgroundColor:ColorManager.white ,
   
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0), // Set border radius
      ),
      elevation: 4, // Shadow effect
      color: Colors.white, // Card background color
      shadowColor: Colors.black.withOpacity(0.2), // Shadow color
    ),
    // Additional theme properties can be added here
  );
}
