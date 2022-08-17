import 'package:get_it/get_it.dart';
import 'package:timezone_by_area/utils/settings/theme.dart';

import '../../core/providers/home_detail_view_model.dart';
import '../../core/providers/home_view_model.dart';
import '../../core/services/api/base_network_service.dart';
import '../../core/services/api/home_service.dart';
import '../constants/service_constants.dart';
import '../styles/app_colors.dart';
import '../styles/app_text_styles.dart';
import 'helpers.dart';

final GetIt _getIt = GetIt.instance;
GetIt get getIt => _getIt;

void setupLocator() {
  getIt.registerLazySingleton(() => AppHelpers());
  getIt.registerLazySingleton(() => HomeViewModel());
  getIt.registerLazySingleton(() => AppColors());
  getIt.registerLazySingleton(() => AppTextStyles());
  getIt.registerLazySingleton(() => ServiceConstants());
  getIt.registerLazySingleton(() => HomeService());
  getIt.registerLazySingleton(() => BaseNetworkService());
  getIt.registerLazySingleton(() => HomeDetailViewModel());
  getIt.registerLazySingleton(() => AppThemes());
}
