import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/providers/home_view_model.dart';
import '../settings/locator.dart';
import 'app_colors.dart';

class AppTextStyles {
  final AppColors _appColors = getIt<AppColors>();
  final HomeViewModel model = getIt<HomeViewModel>();

  Color get background => _appColors.background;
  Color get dark => _appColors.dark;
  Color get white => _appColors.white;
  Color get dark2 => _appColors.dark2;
  Color get lightbg => _appColors.lightbg;
  Color get lightblue => _appColors.lightblue;
  Color get strokeblue => _appColors.strokeblue;

  TextStyle baseTextStyle({
    double fontSize = 15.0,
    FontWeight fontWeight = FontWeight.w600,
    TextDecoration? decoration,
    BuildContext? context,
  }) {
    return GoogleFonts.montserrat(
      fontWeight: fontWeight,
      fontSize: fontSize,
      decoration: decoration,
    );
  }

  TextStyle get homeTextStyle => baseTextStyle(
        fontSize: 16.0,
      );

  TextStyle get timeTextStyle => baseTextStyle(
        fontSize: 32.0,
      );

  TextStyle get locationsTextStyle => baseTextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w400,
      );

  TextStyle get searchBarTextStyle => baseTextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w300,
      );

  TextStyle get detailAppBarTextStyle =>
      baseTextStyle(fontSize: 23.0, fontWeight: FontWeight.w900);

  TextStyle get boxTextStyle => baseTextStyle(
        fontSize: 85,
        fontWeight: FontWeight.bold,
      );
}
