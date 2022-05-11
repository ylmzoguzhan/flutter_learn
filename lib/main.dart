import 'package:flutter/material.dart';
import '101/page_view_learn.dart';

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
            progressIndicatorTheme:
                const ProgressIndicatorThemeData(color: Colors.blue),
            appBarTheme:
                const AppBarTheme(centerTitle: true, color: Colors.blueGrey)),
        home: const PageViewLearn());
  }
}
