import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/settings/extension.dart';

import '../../settings/locator.dart';
import '../../styles/app_colors.dart';

class ThemeButton extends StatelessWidget {
  final Color? circleColor;
  final Color? backgroundColor;
  final IconData? icon;
  final double? outsideCirclePadding;
  final double? insideCirclePadding;
  final double? iconSize;
  final Color? iconColor;
  const ThemeButton(
      {Key? key,
      this.circleColor,
      this.backgroundColor,
      this.icon,
      this.outsideCirclePadding,
      this.insideCirclePadding,
      this.iconSize, 
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: circleColor ?? getIt<AppColors>().darkopacity,
        shape: BoxShape.circle,
      ),
      padding: EdgeInsets.all(outsideCirclePadding ?? context.width * 0.006),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor ??  Theme.of(context).iconTheme.color,
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.all(insideCirclePadding ?? context.width * 0.03),
        child: Icon(icon,
            size: iconSize ?? 19, color: iconColor ??  Theme.of(context).primaryColor),
      ),
    );
  }
}
