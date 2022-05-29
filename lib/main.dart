import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_internationalization/intl/intl.dart';
import 'package:getx_internationalization/intl/intl_keys.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);@override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: IntlKeys.title.tr,
      translations: Intl(),
      locale: Get.deviceLocale,
      fallbackLocale: Intl.localeEN_US,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomePage(),
    );
  }
}
