import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/settings/extension.dart';
import 'package:timezone_by_area/utils/widgets/home_widgets/device_info_area.dart';
import 'package:timezone_by_area/utils/widgets/home_widgets/theme_icon.dart';

class AppBarArea extends StatelessWidget {
  const AppBarArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: [
           const DeviceInfoArea(),
            ThemeIcon(),
          ],
        ),
        height: context.height * 0.35,
        width: context.width,
        decoration: BoxDecoration(
            color: Theme.of(context).appBarTheme.backgroundColor,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))));
  }
}
