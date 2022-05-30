import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'translations/de.dart';
import 'translations/ha_NG.dart';
import 'translations/ko.dart';
import 'translations/tv_NG.dart';
import 'translations/en_US.dart';
import 'translations/yr_NG.dart';
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
        'ha_KR': ha_NG,
        'tv_KR': tv_NG,
        'yr_KR': yr_NG,
      };

  /*LOCALES*/
  static Locale get localeEN_US => const Locale('en_US');

  static Locale get localeDE => const Locale('de_DE');

  static Locale get localeFR => const Locale('fr_FR');

  static Locale get localeIG_NG => const Locale('ig_NG');

  static Locale get localeYR_NG => const Locale('yr_NG');

  static Locale get localeHA_NG => const Locale('ha_NG');

  static Locale get localeTV_NG => const Locale('tv_NG');

  static Locale get localeKO => const Locale('ko_KR');
}
