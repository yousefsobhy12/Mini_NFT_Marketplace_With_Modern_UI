import 'package:flutter/material.dart';
import '../resources/colors_manager.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(color: ColorsManager.kScaffoldBackgroundColor),
    scaffoldBackgroundColor: ColorsManager.kScaffoldBackgroundColor,
    tabBarTheme: TabBarThemeData(
      labelColor: ColorsManager.white,
      unselectedLabelColor: Colors.grey,
      dividerColor: Color(0xff432369),
      tabAlignment: TabAlignment.fill,
      indicator: UnderlineTabIndicator(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        borderSide: BorderSide(color: Color(0xff9068FF), width: 4),
      ),
      indicatorSize: TabBarIndicatorSize.label,
      splashBorderRadius: BorderRadius.circular(16),
    ),
  );
}
