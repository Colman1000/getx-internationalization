import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_internationalization/intl/intl_keys.dart';

import '../settings_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Get.theme;

    return Drawer(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            //gradient
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    _theme.primaryColor,
                    _theme.primaryColorDark,
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(IntlKeys.account.tr),
            leading: const Icon(Icons.person_pin),
          ),
          ListTile(
            title: Text(IntlKeys.settings.tr),
            leading: const Icon(Icons.settings),
            onTap: () {
              //go to settings page
              Get.back();
              Get.to(() => const SettingsPage());
            },
          ),
        ],
      ),
    );
  }
}
