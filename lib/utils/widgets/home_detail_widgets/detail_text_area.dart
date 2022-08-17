import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/settings/extension.dart';
import 'package:timezone_by_area/utils/styles/app_text_styles.dart';

import '../../settings/locator.dart';
import '../app_widgets/main_text.dart';

class DetailTextArea extends StatelessWidget {
  final double? topPadding;
  final String? text;
  final TextStyle? textStyle;
  const DetailTextArea({Key? key, this.topPadding, this.text, this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: topPadding ?? context.height * 0.04,
          bottom: context.height * 0.03),
      child: MainText(
          topPadding: 0,
          text: text!,
          textStyle: textStyle ?? getIt<AppTextStyles>().homeTextStyle),
    );
  }
}
