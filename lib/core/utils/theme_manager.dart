import 'package:el_king_store/core/utils/app_color.dart';
import 'package:el_king_store/core/utils/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeManager {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: AppColor.mainColor,

    ///appBar
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.mainColor,
      scrolledUnderElevation: 0.0,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: StyleManager.font19Weight700,
      iconTheme: IconThemeData(color: Colors.black),
    //  toolbarHeight: 0.0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    ),

    ///elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20),
        backgroundColor: AppColor.gold,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)),
        minimumSize: const Size(double.infinity, 65),
      ),
    ),

      ///outlined button
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20),
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Color(0xffDDDFDF))
          ),
          minimumSize: const Size(double.infinity, 65),
        ),
    ),

      /// input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        filled: true,
        fillColor:AppColor.blueGrey,
        hintStyle: StyleManager.font11Weight600,
        suffixIconColor: Colors.grey,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:AppColor.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.grey),
          borderRadius: BorderRadius.circular(8),
        ),
      )
  );
}
