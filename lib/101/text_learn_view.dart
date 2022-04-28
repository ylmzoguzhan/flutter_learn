import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key}) : super(key: key);
  final String name = "Oğuzhan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Oğuzhan $name ${name.length}',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.right,
          style: const TextStyle(
              wordSpacing: 2,
              letterSpacing: 2,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              color: Colors.lime,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
