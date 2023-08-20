import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:linkia_ecommerce/translation/app_translations.dart';
import 'package:linkia_ecommerce/views/splash/SpalshScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'WidgetBuinding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Linkia E-commerce',
      debugShowCheckedModeBanner: false,
      initialBinding: ControllersBinding(),
      home: const SplashScreen(),
      translationsKeys: AppTranslation.translations,
      fallbackLocale: const Locale('en', 'US'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en'), Locale('ar')],
    );
  }
}
