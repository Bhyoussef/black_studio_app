

import 'package:linkia_ecommerce/translation/ar_AR/ar_translations.dart';
import 'package:linkia_ecommerce/translation/en_US/en_translations.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'en_US': en,
    'ar_AR': ar,
  };
}
