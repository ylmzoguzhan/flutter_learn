import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieLearn extends StatefulWidget {
  LottieLearn({Key? key}) : super(key: key);

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

//https://assets2.lottiefiles.com/packages/lf20_ydo1amjm.json
class _LottieLearnState extends State<LottieLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Lottie.network(
          'https://assets2.lottiefiles.com/packages/lf20_ydo1amjm.json'),
    );
  }
}
