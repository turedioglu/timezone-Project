import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/widgets/app_widgets/main_text.dart';

import '../../settings/locator.dart';
import '../../styles/app_text_styles.dart';


class DetailAppBar extends StatefulWidget implements PreferredSizeWidget {
    const DetailAppBar({Key? key}) : preferredSize = const Size.fromHeight(kToolbarHeight), super(key: key);

    @override
    final Size preferredSize;

    @override
    _DetailAppBarState createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar>{

    @override
    Widget build(BuildContext context) {
        return AppBar(
      title: MainText(
          topPadding: 0,
          text: 'WORLD TIME',
          textStyle: getIt<AppTextStyles>().detailAppBarTextStyle
          ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(25),
        ),
      ));
    }
}