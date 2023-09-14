import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:linkia_ecommerce/utiles/SharedPreferences.dart';
import 'package:linkia_ecommerce/views/language/LanguageScreen.dart';
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
    return GetMaterialApp(
      title: 'Black Studio',
      debugShowCheckedModeBanner: false,
      initialBinding: ControllersBinding(),
      locale: language != null ? Locale(language!) : const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const LanguageSelectionScreen(),
    );
  }
}
