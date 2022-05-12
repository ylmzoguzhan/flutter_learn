import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.red,
                  width: 200,
                ),
                Container(
                  color: Colors.blue,
                  width: 200,
                ),
                Container(
                  color: Colors.black,
                  width: 200,
                ),
                Container(
                  color: Colors.purple,
                  width: 200,
                ),
                Container(
                  color: Colors.pink,
                  width: 200,
                )
              ],
            ),
          ),
          Container(
            color: Colors.green,
            height: 300,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.close))
        ],
      ),
    );
  }
}
