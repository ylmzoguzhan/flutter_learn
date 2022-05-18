import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  AlertLearn({Key? key}) : super(key: key);

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAboutDialog(
              context: context,
              applicationName: 'TİTLE',
              children: [Text('data')]);
        },
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(child: Text('data'));
                  });
            },
            child: Icon(Icons.accessible_outlined),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Updated'),
                      actions: [
                        ElevatedButton(onPressed: () {}, child: Text('data'))
                      ],
                    );
                  });
            },
            child: Icon(Icons.accessible_outlined),
          )
        ],
      ),
    );
  }
}
