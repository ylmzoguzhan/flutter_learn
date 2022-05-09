import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.purple,
                )),
            Expanded(flex: 4, child: Container(color: Colors.pink)),
          ],
        ));
  }
}
