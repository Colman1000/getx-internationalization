import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_internationalization/intl/translations/de.dart';
import 'package:getx_internationalization/intl/translations/ko.dart';

import 'translations/en_US.dart';
import 'translations/fr.dart';
import 'translations/ig_NG.dart';

class Intl extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'de_DE': de,
        'fr_FR': fr,
        'ig_NG': ig_NG,
        'ko_KR': ko,
      };

  /*LOCALES*/
  static Locale get localeEN_US => const Locale('en_US');

  static Locale get localeDE => const Locale('de_DE');

  static Locale get localeFR => const Locale('fr_FR');

  static Locale get localeIG_NG => const Locale('ig_NG');

  static Locale get localeKO => const Locale('ko_KR');

  /*METHODS*/
  static List<Locale> get supportedLocales => [
        localeEN_US,
        localeIG_NG,
        localeDE,
        localeFR,
        localeKO, // Add other languages here
      ];
}
