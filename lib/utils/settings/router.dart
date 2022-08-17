import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/widgets/app_widgets/main_text.dart';

import '../../screens/home_detail_screen/home_detail_screen.dart';
import '../../screens/home_screen/home_screen.dart';
import '../constants/route_constant.dart';
import '../styles/app_text_styles.dart';
import 'locator.dart';

class AppRouter {
  static Route<MaterialPageRoute> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.HOME:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      
        case RouteConstants.HOME_DETAIL:
        return MaterialPageRoute(
          builder: (_) => const HomeDetailScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
              body: Center(
                  child: MainText(text: 'HATALI SAYFA',
                      textStyle: getIt<AppTextStyles>().timeTextStyle))),
        );
    }
  }
}
