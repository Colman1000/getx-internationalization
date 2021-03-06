import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_internationalization/intl/intl.dart';
import 'package:getx_internationalization/intl/intl_keys.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Get.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(IntlKeys.settings.tr),
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                IntlKeys.selectLanguage.tr,
                style: _textTheme.headline6,
              ),
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            title: const Text('English'),
            dense: true,
            onTap: () {
              final _locale = Intl.localeEN_US;

              Get.updateLocale(_locale);
            },
          ),
          ListTile(
            title: const Text('Tiv'),
            dense: true,
            onTap: () {
              final _locale = Intl.localeTV_NG;

              Get.updateLocale(_locale);
            },
          ),
          ListTile(
            title: const Text('Igbo'),
            dense: true,
            onTap: () {
              final _locale = Intl.localeIG_NG;

              Get.updateLocale(_locale);
            },
          ),
          ListTile(
            title: const Text('Yoruba'),
            dense: true,
            onTap: () {
              final _locale = Intl.localeYR_NG;

              Get.updateLocale(_locale);
            },
          ),
          ListTile(
            title: const Text('Hausa'),
            dense: true,
            onTap: () {
              final _locale = Intl.localeHA_NG;

              Get.updateLocale(_locale);
            },
          ),
          ListTile(
            title: const Text('Yoruba'),
            dense: true,
            onTap: () {
              final _locale = Intl.localeYR_NG;

              Get.updateLocale(_locale);
            },
          ),
          ListTile(
            title: const Text('Deutsch'),
            dense: true,
            onTap: () {
              final _locale = Intl.localeDE;

              Get.updateLocale(_locale);
            },
          ),
          ListTile(
            title: const Text('?????????'),
            dense: true,
            onTap: () {
              final _locale = Intl.localeKO;

              Get.updateLocale(_locale);
            },
          ),
          ListTile(
            title: const Text('Fran??ais'),
            dense: true,
            onTap: () {
              final _locale = Intl.localeFR;

              Get.updateLocale(_locale);
            },
          ),
          const Divider(endIndent: 30, indent: 30),
          ListTile(
            title: Text(IntlKeys.defaultText.tr),
            dense: true,
            onTap: () {
              final _locale = Get.deviceLocale ?? Intl.localeEN_US;

              Get.updateLocale(_locale);
            },
          ),
        ],
      ),
    );
  }
}
