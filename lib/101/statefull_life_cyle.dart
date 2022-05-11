import 'package:flutter/material.dart';

class StatefullLifeCyleLearn extends StatefulWidget {
  const StatefullLifeCyleLearn({Key? key, required this.message})
      : super(key: key);
  final String message;
  @override
  State<StatefullLifeCyleLearn> createState() => _StatefullLifeCyleLearnState();
}

class _StatefullLifeCyleLearnState extends State<StatefullLifeCyleLearn> {
  late final bool _isOdd;
  String _message = '';

  @override
  void didChangeDependencies() {
    // ÇİZİMDEN ÖNCE ÇALIŞIR
    super.didChangeDependencies();
    print('c');
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCyleLearn oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('b');
  }

  @override
  void initState() {
    print('a');
    // builden önce çalışır
    super.initState();
    _isOdd = widget.message.length.isOdd;
    _message = widget.message;
    _computedName();
  }

  @override
  void dispose() {
    // sayfadan çıkıldığı zaman çalışır
    super.dispose();
  }

  void _computedName() {
    if (_isOdd) {
      _message += "Cift";
    } else {
      _message += "Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_message)),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
