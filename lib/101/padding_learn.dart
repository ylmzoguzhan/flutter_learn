import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingHorizantal,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(color: Colors.white, height: 100),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(color: Colors.white, height: 100),
            ),
            const Padding(
              padding: ProjectPadding.pagePaddingTopOnly,
              child: Text('data'),
            )
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingHorizantal = EdgeInsets.symmetric(horizontal: 30);
  static const pagePaddingTopOnly = EdgeInsets.only(top: 30);
}
