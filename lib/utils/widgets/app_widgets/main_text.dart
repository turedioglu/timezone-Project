import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/settings/extension.dart';
import 'package:timezone_by_area/utils/styles/app_text_styles.dart';

import '../../settings/locator.dart';

class MainText extends StatelessWidget {
  final double? topPadding;
  final String? text;
  final TextStyle? textStyle;
  const MainText({Key? key, this.topPadding, this.text, this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding ?? context.height * 0.02),
      child:
          Text(text!, style: textStyle ?? getIt<AppTextStyles>().homeTextStyle),
    );

  }
}
