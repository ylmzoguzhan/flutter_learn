import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/app_bar._learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            appBarTheme:
                const AppBarTheme(centerTitle: true, color: Colors.red)),
        home: const AppBarLearnView());
  }
}
