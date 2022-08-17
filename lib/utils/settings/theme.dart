import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/settings/locator.dart';

import '../styles/app_colors.dart';

class AppThemes {
  final AppColors colors = getIt<AppColors>();

  ThemeData lightTheme = ThemeData(
    primaryColor: getIt<AppColors>().lightbg,
    primaryColorDark: getIt<AppColors>().white,
    cardColor: getIt<AppColors>().white,
    appBarTheme: AppBarTheme(
      color: getIt<AppColors>().strokeblue,
      iconTheme: IconThemeData(
        color: getIt<AppColors>().dark,
      ),
      foregroundColor: getIt<AppColors>().dark,
    ),
    scaffoldBackgroundColor: getIt<AppColors>().lightbg,
    iconTheme: IconThemeData(
      color: getIt<AppColors>().dark,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(color: getIt<AppColors>().dark),
      headline2: TextStyle(color: getIt<AppColors>().dark),
      bodyText2: TextStyle(color: getIt<AppColors>().dark),
      subtitle1: TextStyle(color: getIt<AppColors>().dark),
    ),
  );

  ThemeData darkTheme = ThemeData(
    primaryColorDark: getIt<AppColors>().dark,
    primaryColor: getIt<AppColors>().dark,
    cardColor: getIt<AppColors>().dark2,
    appBarTheme: AppBarTheme(
      color: getIt<AppColors>().dark2,
      elevation: 0,
      iconTheme: IconThemeData(
        color: getIt<AppColors>().lightbg,
      ),
    ),
    scaffoldBackgroundColor: getIt<AppColors>().dark,
    iconTheme: IconThemeData(
      color: getIt<AppColors>().white,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(color: getIt<AppColors>().white),
      headline2: TextStyle(color: getIt<AppColors>().white),
      bodyText2: TextStyle(color: getIt<AppColors>().white),
      subtitle1: TextStyle(color: getIt<AppColors>().white),
    ),
  );
}
