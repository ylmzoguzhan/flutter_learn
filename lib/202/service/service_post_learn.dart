import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  ServicePostLearn({Key? key}) : super(key: key);

  @override
  State<ServicePostLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServicePostLearn> {
  bool _isLoading = false;
  late final Dio _networkManager;
  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();
  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  void initState() {
    super.initState();
    _networkManager =
        Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));
  }

  void _addItemToService(PostModel model) {
    _changeLoading();
    _networkManager.post('posts', data: model);
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _isLoading
              ? const CircularProgressIndicator.adaptive()
              : const SizedBox.shrink()
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: _bodyController,
            decoration: const InputDecoration(labelText: 'Body'),
          ),
          TextField(
            controller: _userIdController,
            decoration: const InputDecoration(labelText: 'UserId'),
          ),
          TextButton(
              onPressed: () {
                if (_titleController.text.isNotEmpty &&
                    _bodyController.text.isNotEmpty &&
                    _userIdController.text.isNotEmpty) {
                  final model = PostModel(
                      body: _bodyController.text,
                      title: _titleController.text,
                      userId: int.tryParse(_userIdController.text));
                  _addItemToService(model);
                }
              },
              child: const Text('Send'))
        ],
      ),
    );
  }
}
