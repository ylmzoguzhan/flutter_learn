import 'package:flutter/material.dart';

import 'package:flutter_full_learn/202/theme/light_theme.dart';
import 'package:flutter_full_learn/product/global/resource_context.dart';
import 'package:flutter_full_learn/product/global/theme_notifier.dart';
import 'package:provider/provider.dart';

import '303/reqrest_resource/view/reqres_view.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider(create: (_) => ResourceContext()),
      ChangeNotifierProvider<ThemeNotifier>(
          create: (context) => ThemeNotifier())
    ],
    builder: (context, child) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: context.watch<ThemeNotifier>().currentTheme,
        //ThemeData.dark().copyWith(
        //progressIndicatorTheme:
        //const ProgressIndicatorThemeData(color: Colors.blue),
        //appBarTheme: const AppBarTheme(
        //centerTitle: true, color: Colors.transparent)),
        home: ReqresView());
  }
}
