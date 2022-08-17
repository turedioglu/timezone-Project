import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../core/providers/home_detail_view_model.dart';
import '../../utils/constants/enums.dart';
import '../../utils/settings/helpers.dart';
import '../../utils/settings/locator.dart';
import '../../utils/styles/app_text_styles.dart';
import '../../utils/widgets/app_widgets/loading_widget.dart';
import '../../utils/widgets/home_detail_widgets/app_bar.dart';
import '../../utils/widgets/home_detail_widgets/detail_text_area.dart';
import '../../utils/widgets/home_detail_widgets/time_area.dart';

class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      disposeViewModel: false,
      viewModelBuilder: () => getIt<HomeDetailViewModel>(),
      onModelReady: (HomeDetailViewModel model) async =>
          await model.initProvider(),
      builder: (context, HomeDetailViewModel model, child) =>
          _buildPageContent(model, context),
    );
  }

  Widget _buildPageContent(HomeDetailViewModel model, BuildContext context) {
    return model.loadingState == ProviderState.BUSY
        ? const Center(child: LoadingWidget())
        : Scaffold(
            appBar: const DetailAppBar(),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TimeArea(),
                  DetailTextArea(text: model.locations.toString()),
                  DetailTextArea(
                    text: getIt<AppHelpers>().fetchDetailDateName +
                        ', GMT ' +
                        model.utcOffset.toString(),
                    topPadding: 0,
                    textStyle: getIt<AppTextStyles>().locationsTextStyle,
                  ),
                  DetailTextArea(
                    text: getIt<AppHelpers>().fetchDetailMonthName +
                        ' ' +
                        getIt<AppHelpers>().fetchDetailDateNumber +
                        ' , ' +
                        getIt<AppHelpers>().fetchDetailDateYear,
                    topPadding: 0,
                    textStyle: getIt<AppTextStyles>().locationsTextStyle,
                  ),
                ]));
  }
}
