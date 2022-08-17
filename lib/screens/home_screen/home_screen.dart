import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:timezone_by_area/utils/constants/enums.dart';
import 'package:timezone_by_area/utils/widgets/home_widgets/locations_area.dart';
import '../../core/providers/home_view_model.dart';
import '../../utils/settings/locator.dart';
import '../../utils/widgets/app_widgets/loading_widget.dart';
import '../../utils/widgets/home_widgets/appbar_area.dart';
import '../../utils/widgets/home_widgets/search_bar_area.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      disposeViewModel: false,
      viewModelBuilder: () => getIt<HomeViewModel>(),
      onModelReady: (HomeViewModel model) async => await model.initProvider(),
      builder: (context, HomeViewModel model, child) =>
          _buildPageContent(model, context),
    );
  }

  Widget _buildPageContent(HomeViewModel model, BuildContext context) {
    return model.loadingState == ProviderState.BUSY
        ? const Center(child: LoadingWidget())
        : Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      AppBarArea(),
                      SearchBarArea(),
                    ],
                  ),
                  LocationsArea(),
                ],
              ),
            ),
          );
  }
}
