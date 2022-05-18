import 'package:flutter/material.dart';

class SheetLearn extends StatefulWidget {
  SheetLearn({Key? key}) : super(key: key);

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> {
  Color _backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
              context: context,
              backgroundColor: Colors.red,
              barrierColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              builder: (context) {
                return _SheetExample(backgroundColor: _backgroundColor);
              });
          if (result is bool) {
            setState(() {
              _backgroundColor = Colors.cyan;
            });
          }
        },
        child: Icon(Icons.share),
      ),
    );
  }
}

class _SheetExample extends StatefulWidget {
  const _SheetExample({
    Key? key,
    required Color backgroundColor,
  }) : super(key: key);

  @override
  State<_SheetExample> createState() => _SheetExampleState();
}

class _SheetExampleState extends State<_SheetExample> {
  Color _backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: _backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                const Divider(
                  color: Colors.black26,
                  thickness: 3,
                ),
                Positioned(
                    right: 0,
                    height: 10,
                    child:
                        IconButton(onPressed: () {}, icon: Icon(Icons.close)))
              ],
            ),
            const Text('data'),
            Image.network(
              'https://picsum.photos/200',
              height: 200,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _backgroundColor = Colors.amber;
                  });
                  Navigator.of(context).pop<bool>(true);
                },
                child: const Text('DATA'))
          ],
        ),
      ),
    );
  }
}
