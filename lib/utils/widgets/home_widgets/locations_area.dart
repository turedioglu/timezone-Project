import 'package:flutter/material.dart';

import 'package:timezone_by_area/utils/settings/locator.dart';

import 'package:timezone_by_area/utils/widgets/home_widgets/no_locations_area.dart';
import 'package:timezone_by_area/utils/widgets/home_widgets/search_locations_area.dart';

import '../../../core/providers/home_view_model.dart';
import 'all_locations_area.dart';

class LocationsArea extends StatelessWidget {
  LocationsArea({Key? key}) : super(key: key);

  final HomeViewModel model = getIt<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return model.locationListController.text.isNotEmpty
        ? model.searchLocations.isEmpty
            ? const NoLocationsArea()
            : SearchLocationsArea()
        : AllLocationsArea();
  }
}
