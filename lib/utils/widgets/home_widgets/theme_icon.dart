import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/settings/extension.dart';
import 'package:timezone_by_area/utils/settings/locator.dart';
import 'package:timezone_by_area/utils/widgets/home_widgets/theme_button.dart';

import '../../../core/providers/home_view_model.dart';

class ThemeIcon extends StatelessWidget {
  ThemeIcon({Key? key}) : super(key: key);
  final HomeViewModel model = getIt<HomeViewModel>();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        model.changeTheme();
      },
      child: Padding(
          padding: EdgeInsets.only(
              left: context.width * 0.25, bottom: context.height * 0.085),
          child: ThemeButton(
            icon: model.iconStatus ?Icons.wb_sunny :Icons.nights_stay ,
          )),
    );
  }
}
