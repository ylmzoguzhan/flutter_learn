import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Text("data"),
        drawer: const Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: 'a'),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp), label: 'b')
          ],
        ));
  }
}
