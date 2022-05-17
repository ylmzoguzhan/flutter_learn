import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isSecure = true;
  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isSecure,
      decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          hintText: 'Password',
          suffix: IconButton(
              onPressed: () {
                _changeLoading();
              },
              icon: Icon(_isSecure ? Icons.visibility : Icons.visibility_off))),
    );
  }
}
