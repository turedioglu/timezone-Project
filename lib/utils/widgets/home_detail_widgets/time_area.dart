import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/settings/helpers.dart';
import 'package:timezone_by_area/utils/widgets/home_detail_widgets/time_container.dart';

import '../../settings/locator.dart';
import '../../styles/app_text_styles.dart';
import '../app_widgets/main_text.dart';

class TimeArea extends StatelessWidget {
  const TimeArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TimeContainer(
            text: getIt<AppHelpers>()
                .fetchDetailTime
                .substring(0, getIt<AppHelpers>().fetchDetailTime.length - 3),
          ),
          MainText(text: ':', textStyle: getIt<AppTextStyles>().boxTextStyle),
          TimeContainer(
            text: getIt<AppHelpers>().fetchDetailTime.substring(3),
          ),
        ]);
  }
}
