import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_internationalization/intl/intl_keys.dart';

import './widgets/app_drawer.dart';
import 'intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 1;
  var userName = 'John Doe';

  @override
  Widget build(BuildContext context) {
    final _textTheme = Get.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(IntlKeys.title.tr),
      ),
      drawer: const AppDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            child: Text(
              IntlKeys.hello.tr,
              style: _textTheme.headline4,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            IntlKeys.name.trParams({'name': userName}),
            style: _textTheme.bodyText1,
          ),
          const SizedBox(height: 40),
          Align(
            child: Text(
              '${IntlKeys.iHave.tr} $count ${IntlKeys.penSingular.trPlural(IntlKeys.penPlural, count)}',
              style: _textTheme.bodyText2,
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            onPressed: count  <= 0 ? null: () {
              if(count > 0) {
                setState(() {
                  count--;
                });
              }
            },
            backgroundColor: count  <= 0 ? Get.theme.disabledColor: null,
            disabledElevation: 0,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
