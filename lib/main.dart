import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:linkia_ecommerce/utiles/SharedPreferences.dart';
import 'package:linkia_ecommerce/views/splash/SpalshScreen.dart';
import 'WidgetBuinding.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final language = await SharedData.getFromStorage('language', 'string');
  if (kDebugMode) {
    print('Language saved: $language');
  }
  runApp(MyApp(language: language));
}

class MyApp extends StatelessWidget {
  final String? language;

  const MyApp({Key? key, this.language}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final ThemeData englishTheme = ThemeData(fontFamily: '');
    final ThemeData arabicTheme = ThemeData(fontFamily: 'Avenir');


    final theme = language == 'ar' ? arabicTheme : englishTheme;
    return GetMaterialApp(
      title: 'Black Studio',
      theme: theme,
      debugShowCheckedModeBanner: false,
      initialBinding: ControllersBinding(),
      locale: language != null ? Locale(language!) : const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const SplashScreen(),
    );
  }
}
