import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/settings/extension.dart';
import 'package:timezone_by_area/utils/widgets/home_widgets/theme_button.dart';

import '../../../core/providers/home_detail_view_model.dart';
import '../../../core/providers/home_view_model.dart';
import '../../constants/route_constant.dart';
import '../../settings/locator.dart';
import '../../styles/app_text_styles.dart';
import '../app_widgets/main_text.dart';

class SearchLocationsArea extends StatelessWidget {
  SearchLocationsArea({Key? key}) : super(key: key);
  final HomeViewModel model = getIt<HomeViewModel>();
  final HomeDetailViewModel _viewModel = getIt<HomeDetailViewModel>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.53,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: model.searchLocations.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () async {
                await _viewModel
                    .getLocationDetail(model.searchLocations[index])
                    .whenComplete(
                      () => Navigator.of(context).pushNamed(
                        RouteConstants.HOME_DETAIL,
                      ),
                    );
              },
              child: Stack(
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.1,
                          vertical: context.width * 0.01),
                      child: Container(
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).appBarTheme.backgroundColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: ListTile(
                              title: MainText(
                                  topPadding: 0,
                                  text: model.searchLocations[index]
                                      .replaceAll('/', ','),
                                  textStyle: getIt<AppTextStyles>()
                                      .locationsTextStyle)))),
                  Padding(
                    padding: EdgeInsets.only(
                        right: context.width * 0.05,
                        top: context.width * 0.034),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: ThemeButton(
                        insideCirclePadding: context.width * 0.02,
                        outsideCirclePadding: context.width * 0.009,
                        circleColor: Theme.of(context).primaryColor,
                        backgroundColor:
                            Theme.of(context).appBarTheme.backgroundColor,
                        iconColor: Theme.of(context).iconTheme.color,
                        iconSize: 15,
                        icon: Icons.arrow_forward_ios,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
