import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter/database/services/setting_service.dart';
import 'package:flutter_counter/database/services/sunnah_service.dart';
import 'package:flutter_counter/modules/home/home_page.dart';
import 'package:flutter_counter/modules/settings/settings_page.dart';
import 'package:flutter_counter/shared/services/bottom_navigation_service.dart';
import 'package:flutter_counter/shared/themes/app_themes.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

// TODO: add loading animation with lottie
// TODO: remove getx, use goroute instead for routing
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top],
  );

  await SunnahService.initialize();
  await SettingService.initialize();

  runApp(MultiProvider(providers: [
    Provider(create: (context) => SunnahService()),
    ChangeNotifierProvider(create: (context) => SettingService()),
    ChangeNotifierProvider(create: (context) => BottomNavigationService()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: FToastBuilder(),
      navigatorKey: navigatorKey,
      initialRoute: "/home",
      getPages: [
        GetPage(
          name: "/home",
          page: () => HomePage(),
        ),
        GetPage(
          name: "/settings",
          page: () => SettingsPage(),
        ),
      ],
      theme: AppTheme.light(
          scheme: context.watch<SettingService>().setting?.colorScheme ??
              FlexScheme.material),
      darkTheme: AppTheme.dark(
          scheme: context.watch<SettingService>().setting?.colorScheme ??
              FlexScheme.material),
      themeMode: context.watch<SettingService>().setting?.themeMode ??
          ThemeMode.system,
    );
  }
}
