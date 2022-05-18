import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/cache/shared_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearn extends StatefulWidget {
  SharedLearn({Key? key}) : super(key: key);

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStateful<SharedLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentValue.toString()),
        actions: [
          isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [_saveValueButton(), _removeValueButton()],
      ),
      body: TextField(
        onChanged: (value) {
          onChangeValue(value);
        },
      ),
    );
  }
}

abstract class LoadingStateful<T extends StatefulWidget> extends State<T> {
  int currentValue = 0;
  bool isLoading = false;
  late final SharedManager _manager;

  @override
  void initState() {
    super.initState();
    _manager = SharedManager();
    _manager.init();
    getDefaultValues();
  }

  FloatingActionButton _removeValueButton() {
    return FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: () async {
          await _manager.removeItem(SharedKeys.counter);
        });
  }

  FloatingActionButton _saveValueButton() {
    return FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () async {
          await _manager.saveString(
              SharedKeys.counter, currentValue.toString());
        });
  }

  void getDefaultValues() {
    //final prefs = await SharedPreferences.getInstance();

    //final int? counter = prefs.getInt('counter');
    onChangeValue(_manager.getString(SharedKeys.counter) ?? '');
  }

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  void onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        currentValue = _value;
      });
    }
  }
}
