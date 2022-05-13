import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  MyCollectionsDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(
          imagePath: 'https://picsum.photos/200',
          title: 'Abstract art',
          price: 3.4),
      CollectionModel(
          imagePath: 'https://picsum.photos/200',
          title: 'Abstract art2',
          price: 3.4),
      CollectionModel(
          imagePath: 'https://picsum.photos/200',
          title: 'Abstract art3',
          price: 3.4)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _items.length,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemBuilder: (context, index) {
            return _CategoryCard(model: _items[index]);
          }),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(child: Image.network(_model.imagePath)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(_model.title), Text('${_model.price} eth')],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}
