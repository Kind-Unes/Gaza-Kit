import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

class AppTheme {
  static Map<int, Color> primaryLightColor = {
    50: const Color.fromRGBO(26, 161, 200, .1),
    100: const Color.fromRGBO(26, 161, 200, .2),
    200: const Color.fromRGBO(26, 161, 200, .3),
    300: const Color.fromRGBO(26, 161, 200, .4),
    400: const Color.fromRGBO(26, 161, 200, .5),
    500: const Color.fromRGBO(26, 161, 200, .6),
    600: const Color.fromRGBO(26, 161, 200, .7),
    700: const Color.fromRGBO(26, 161, 200, .8),
    000: const Color.fromRGBO(26, 161, 200, .9),
    900: const Color.fromRGBO(26, 161, 200, 1),
  };

  static TextTheme lightTextTheme = const TextTheme(
    bodySmall: TextStyle(
      color: Colors.grey,
      fontSize: 8,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    bodyMedium: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  );

  // static ThemeData dark() {
  //   return ThemeData(
  //       brightness: Brightness.light,
  //       useMaterial3: false,
  //       textTheme: AppTheme.lightTextTheme,
  //       primaryColor: AppColors.kPrimaryColor,
  //       shadowColor: Colors.black.withOpacity(0.05),
  //       primarySwatch: MaterialColor(
  //         AppColors.kPrimaryColor.value,
  //         AppTheme.primaryLightColor,
  //       ),
  //       bottomAppBarTheme: const BottomAppBarTheme(
  //         color: Colors.transparent,
  //         elevation: 0,
  //       ),
  //         appBarTheme: AppBarTheme(
  //         backgroundColor: Colors.transparent,
  //         elevation: 0,
  //         systemOverlayStyle: const SystemUiOverlayStyle(
  //           statusBarColor: Colors.transparent,
  //           statusBarIconBrightness: Brightness.dark,
  //           statusBarBrightness: Brightness.dark,
  //         ),
  //         centerTitle: false,
  //         titleTextStyle: AppTheme.lightTextTheme.displaySmall,
  //         toolbarHeight: 70,
  //         iconTheme: const IconThemeData(
  //           size: 24,
  //           color: Colors.black,
  //         ),
  //       ),
  //       inputDecorationTheme: const InputDecorationTheme());
  // }

  static ThemeData light() {
    return ThemeData(
      
      brightness: Brightness.light,
      useMaterial3: false,
      fontFamily: "product_sans",
      textTheme: AppTheme.lightTextTheme,
      primaryColor: AppColors.kPrimaryColor,
      shadowColor: Colors.black.withOpacity(0.05),
      primarySwatch: MaterialColor(
        AppColors.kPrimaryColor.value,
        AppTheme.primaryLightColor,
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.transparent,
        elevation: 0,
      ),
      scaffoldBackgroundColor: AppColors.kPrimaryColor,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        centerTitle: false,
        titleTextStyle: AppTheme.lightTextTheme.displaySmall,
        toolbarHeight: 70,
        iconTheme: const IconThemeData(
          size: 24,
          color: Colors.black,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 3, strokeAlign: 5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 3, strokeAlign: 5),
        ),
      ),
    );
  }

  static Color getSoftText(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!.color!.withOpacity(0.7);

  static Color getTextColorOnBackground(Brightness brightness) =>
      brightness == Brightness.light ? Colors.white : Colors.white;
}
