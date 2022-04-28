import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              width: 300,
              height: 200,
              child: Text('a' * 600),
            ),
            SizedBox.square(
              dimension: 50,
              child: Text('b' * 50),
            ),
            Container(
              height: 50,
              child: Text('aa' * 100),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.green,
                        offset: Offset(0.1, 1),
                        blurRadius: 12)
                  ],
                  //color: Colors.red,
                  gradient:
                      const LinearGradient(colors: [Colors.red, Colors.black]),
                  border: Border.all(width: 10, color: Colors.white12)),
            )
          ],
        ));
  }
}
