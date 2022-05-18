import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/state_manage/state_manage_learn.view.dart';

abstract class StateLearnViewModel extends State<StateManageLearnView> {
  bool isVisible = false;
  bool isOpacity = false;
  void changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      isOpacity = !isOpacity;
    });
  }
}
