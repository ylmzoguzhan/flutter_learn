import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.only(top: 10),
        child: TextField(
          maxLength: 20,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.mail),
            border: OutlineInputBorder(),
            hintText: 'Mail',
            labelText: 'Mail',
            //fillColor: Colors.white,
            //filled: true
          ),
        ),
      ),
    );
  }
}
