import 'package:flutter/material.dart';
import 'package:timezone_by_area/utils/constants/enums.dart';
import '../model/locations_model.dart';

class HomeViewModel extends ChangeNotifier {
  // describes //

  ProviderState _loadingState = ProviderState.BUSY;

  List<String>? _allLocations;

  bool _iconStatus = false;

  TextEditingController locationListController = TextEditingController();

  List<String> searchLocations = [];

  // getter & setter //

  ProviderState get loadingState => _loadingState;

  set loadingState(ProviderState loadingState) {
    if (loadingState != _loadingState) {
      _loadingState = loadingState;
      notifyListeners();
    }
  }

  List<String>? get allLocations => _allLocations;

  set allLocations(List<String>? allLocations) {
    if (allLocations != null) {
      _allLocations = allLocations;
    }
  }

  bool get iconStatus => _iconStatus;

  set iconStatus(bool iconStatus) {
    _iconStatus = iconStatus;
    notifyListeners();
  }

  // functions //

  void changeTheme() {
    iconStatus = !iconStatus;
    notifyListeners();
  }

  void search(String text) {
    searchLocations.clear();
    notifyListeners();
    if (text.isEmpty) {
      notifyListeners();
      return;
    }
    for (var element in allLocations!) {
      if (element.toLowerCase().contains(text.toLowerCase())) {
        searchLocations.add(element);
      }
      notifyListeners();
    }
  }
  // init Provider //

  initProvider() async {
    loadingState = ProviderState.BUSY;
    await Future.delayed(
      const Duration(seconds: 1),
    );
    allLocations = locations;
    loadingState = ProviderState.AVAILABLE;
  }
}
