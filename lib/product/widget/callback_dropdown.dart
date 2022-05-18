import 'package:flutter/material.dart';
import 'package:flutter_full_learn/303/call_back_learn.dart';

class CallbackDropdown extends StatefulWidget {
  const CallbackDropdown({Key? key, required this.onUserSelected})
      : super(key: key);

  final void Function(CallbackUser user) onUserSelected;

  @override
  State<CallbackDropdown> createState() => _CallbackDropdownState();
}

class _CallbackDropdownState extends State<CallbackDropdown> {
  void _updateUser(CallbackUser? user) {
    setState(() {
      _user = user;
    });
    if (_user != null) {
      widget.onUserSelected.call(_user!);
    }
  }

  CallbackUser? _user;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<CallbackUser>(
        value: _user,
        items: CallbackUser.dummyUsers().map((e) {
          return DropdownMenuItem(
            child: Text(e.name),
            value: e,
          );
        }).toList(),
        onChanged: (CallbackUser? callbackUser) {
          setState(() {
            _user = callbackUser;
          });
        });
  }
}
