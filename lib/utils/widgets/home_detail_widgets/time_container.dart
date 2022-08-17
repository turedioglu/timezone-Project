import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/settings/extension.dart';

import '../../settings/locator.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';

class TimeContainer extends StatelessWidget {
  final String? text;
  const TimeContainer({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: context.height * 0.15,
        width: context.width * 0.35,
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border.all(
              color: getIt<AppColors>().dark,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(14.0))),
        child: Text(text!,
            textAlign: TextAlign.center,
            style: getIt<AppTextStyles>().boxTextStyle));
  }
}
