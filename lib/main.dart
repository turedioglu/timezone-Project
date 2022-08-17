import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:timezone_by_area/core/providers/home_view_model.dart';
import 'package:timezone_by_area/utils/constants/app_constants.dart';
import 'package:timezone_by_area/utils/settings/helpers.dart';
import 'package:timezone_by_area/utils/settings/locator.dart';
import 'package:timezone_by_area/utils/settings/router.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:timezone_by_area/utils/settings/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Orientation setup
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  // Locator setup
  setupLocator();

  // Translator setup
  await translator.init(
    localeType: LocalizationDefaultType.asDefined,
    language: AppConstants.CURRENT_LANGUAGE,
    languagesList: AppConstants.SUPPORTED_LANG_LIST,
    assetsDirectory: AppConstants.ASSETS_DIR,
  );

  runApp(LocalizedApp(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      disposeViewModel: false,
      viewModelBuilder: () => getIt<HomeViewModel>(),
      onModelReady: (HomeViewModel model) async => await model.initProvider(),
      builder: (context, HomeViewModel model, child) =>
          _buildMaterialApp(context, model),
    );
  }

  Widget _buildMaterialApp(BuildContext context, HomeViewModel model) {
    return AdaptiveTheme(
      light: getIt<AppThemes>().lightTheme,
      dark: getIt<AppThemes>().darkTheme,
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) => MaterialApp(
        title: AppConstants.APP_NAME,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: translator.delegates,
        locale: translator.activeLocale,
        supportedLocales: translator.locals(),
        theme: model.iconStatus
            ? getIt<AppThemes>().darkTheme
            : getIt<AppThemes>().lightTheme,
        onGenerateRoute: (settings) => AppRouter.generateRoute(settings),
        navigatorKey: getIt<AppHelpers>().globalKey,
      ),
    );
  }
}
