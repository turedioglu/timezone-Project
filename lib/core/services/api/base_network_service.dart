import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../utils/constants/service_constants.dart';
import '../../../utils/settings/locator.dart';
import '../../model/base_model.dart';

class BaseNetworkService {

  final ServiceConstants _serviceConstants = getIt<ServiceConstants>();

  // Get method
  Future fetchData<T extends BaseModel>(
    String endPoint,
    T model,
  ) async {
    try {
      final http.Response _response = await http.get(
        Uri.parse(_serviceConstants.baseUrl + endPoint),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      );

      print('Result: ${_response.body}');

      return model.fromJson(jsonDecode(_response.body));
    } catch (err) {
      return err;
    }
  }
}
