import 'package:flutter/material.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = 'Welcome Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actionsIconTheme: const IconThemeData(color: Colors.pink),
        //backgroundColor: Colors.black,
        leading: const Icon(Icons.chevron_left),
        toolbarTextStyle: const TextStyle(color: Colors.purple),
        centerTitle: true,
        automaticallyImplyLeading: false, // geri dön butonu iptal edilir
        actions: [
          // sağ tarafı kullanabiliriz
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          const Text('data')
        ],
      ),
    );
  }
}
