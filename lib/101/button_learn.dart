import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.all(10),
                  shape: const CircleBorder()),
              onPressed: () {},
              child:
                  Text('data', style: Theme.of(context).textTheme.subtitle1)),
          const ElevatedButton(onPressed: null, child: Text('data')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_business)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('data'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.purple;
            })),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 200,
              child: const Text('data'),
              decoration: const BoxDecoration(color: Colors.blueAccent),
            ),
          )
        ],
      ),
    );
  }
}
