import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  final imageUrl = 'https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const RandomImage(),
              dense: true,
              onTap: () {},
              subtitle: const Text('How do you use card'),
              leading: const Icon(Icons.money),
              trailing: ElevatedButton(
                  onPressed: () {}, child: const Icon(Icons.chevron_right)),
            ),
          )
        ],
      ),
    );
  }
}
