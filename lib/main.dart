import 'package:flutter/material.dart';
import 'package:flutter_counter/data/services/setting_service.dart';
import 'package:flutter_counter/data/services/sunnah_service.dart';
import 'package:flutter_counter/config/router/router.dart';
import 'package:flutter_counter/config/themes/app_themes.dart';
import 'package:flutter_counter/shared/widgets/loading_animation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

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
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final setting = context.watch<SettingService>().setting;

    if (setting == null) {
      return LoadingAnimation();
    }

    return MaterialApp.router(
      builder: FToastBuilder(),
      routerConfig: router,
      theme: AppTheme.light(scheme: setting.colorScheme),
      darkTheme: AppTheme.dark(scheme: setting.colorScheme),
      themeMode: setting.themeMode,
    );
  }
}
