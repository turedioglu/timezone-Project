import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/constants/enums.dart';
import '../../../utils/settings/locator.dart';
import '../model/locations_detail_model.dart';
import '../services/api/home_service.dart';

class HomeDetailViewModel extends ChangeNotifier {
  // describe //

  final HomeService _homeService = getIt<HomeService>();

  ProviderState _loadingState = ProviderState.BUSY;

  String? _locations;

  DateTime? _time;

  String? _utcOffset;

  // getter & setter //

  ProviderState get loadingState => _loadingState;

  set loadingState(ProviderState loadingState) {
    if (loadingState != _loadingState) {
      _loadingState = loadingState;
      notifyListeners();
    }
  }

  String? get locations => _locations;

  set locations(String? locations) {
    if (locations != _locations) {
      _locations = locations;
      notifyListeners();
    }
  }

  DateTime? get time => _time;

  set time(DateTime? time) {
    if (time != _time) {
      _time = time;
      notifyListeners();
    }
  }

  String? get utcOffset => _utcOffset;

  set utcTime(String? utcOffset) {
    if (utcOffset != _utcOffset) {
      _utcOffset = utcOffset;
      notifyListeners();
    }
  }

  // functions //

  Future<void> getLocationDetail(String location) async {
    final LocationDetailModel _response =
        await _homeService.getLocationDetail(location);

    locations = _response.timezone.toString();
    time = _response.datetime;
    utcTime = _response.utcOffset;
  }

  // init Provider //

  initProvider() async {
    loadingState = ProviderState.BUSY;
    await Future.delayed(
      const Duration(seconds: 1),
    );
    loadingState = ProviderState.AVAILABLE;
  }
}
