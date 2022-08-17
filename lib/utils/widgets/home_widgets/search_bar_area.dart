import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/settings/extension.dart';

import '../../../core/providers/home_view_model.dart';
import '../../settings/locator.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';

class SearchBarArea extends StatelessWidget {
  SearchBarArea({Key? key}) : super(key: key);
  final HomeViewModel model = getIt<HomeViewModel>();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          top: context.height * 0.31,
          right: context.width * 0.15,
          left: context.width * 0.15,
          bottom: context.height * 0.02,
        ),
        child: TextField(
          controller: model.locationListController,
          onChanged: (text) {
            model.search(text);
          },
          style: Theme.of(context).textTheme.bodyLarge,
          cursorColor: getIt<AppColors>().white,
          decoration: InputDecoration(
            filled: true,
            prefixIcon:
                Icon(Icons.search, color: getIt<AppColors>().dark, size: 20),
            hintText: 'Arama',
            hintStyle: getIt<AppTextStyles>().searchBarTextStyle,
            fillColor: getIt<AppColors>().white,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: getIt<AppColors>().strokeblue,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: getIt<AppColors>().strokeblue),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ));
  }
}
