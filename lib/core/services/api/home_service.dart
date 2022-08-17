import 'package:timezone_by_area/core/model/locations_detail_model.dart';
import '../../../utils/settings/locator.dart';
import 'base_network_service.dart';

class HomeService {
  final BaseNetworkService _networkService = getIt<BaseNetworkService>();

  Future<LocationDetailModel> getLocationDetail(String location) async {
    return await _networkService.fetchData(
      location,
      LocationDetailModel(),
    );
  }
}
