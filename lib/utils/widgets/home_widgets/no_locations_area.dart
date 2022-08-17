import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/styles/app_text_styles.dart';
import 'package:timezone_by_area/utils/widgets/app_widgets/main_text.dart';

import '../../settings/locator.dart';

class NoLocationsArea extends StatelessWidget {
  const NoLocationsArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MainText(text: 'Lokasyon Bulunamadı!',
            textStyle: getIt<AppTextStyles>().homeTextStyle),
      ],
    );
  }
}
