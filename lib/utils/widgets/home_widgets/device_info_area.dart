import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/settings/extension.dart';

import '../../settings/helpers.dart';
import '../../settings/locator.dart';
import '../../styles/app_text_styles.dart';
import '../app_widgets/main_text.dart';

class DeviceInfoArea extends StatelessWidget {
  const DeviceInfoArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: context.width * 0.05, top: context.height * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MainText(
            text: 'Günaydın, Özgür!',
          ),
          MainText(
            text: getIt<AppHelpers>().fetchCurrentTime,
            textStyle: getIt<AppTextStyles>().timeTextStyle,
          ),
          MainText(
            text: getIt<AppHelpers>().fetchCurrentDate,
          ),
        ],
      ),
    );
  }
}
