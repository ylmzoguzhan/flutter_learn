import 'package:flutter/material.dart';
import 'package:flutter_full_learn/303/reqrest_resource/model/resourceModel.dart';
import 'package:flutter_full_learn/303/reqrest_resource/service/reqres_service.dart';
import 'package:flutter_full_learn/303/reqrest_resource/viewModel/reqres_provider.dart';
import 'package:flutter_full_learn/303/reqrest_resource/viewModel/reqres_view_model.dart';
import 'package:flutter_full_learn/product/extension/string_extension.dart';
import 'package:flutter_full_learn/product/global/resource_context.dart';
import 'package:flutter_full_learn/product/global/theme_notifier.dart';
import 'package:flutter_full_learn/product/service/project_dio.dart';
import 'package:provider/provider.dart';

class ReqresView extends StatefulWidget {
  ReqresView({Key? key}) : super(key: key);

  @override
  State<ReqresView> createState() => _ReqresViewState();
}
//class _ReqresViewState extends ReqresViewModel

class _ReqresViewState extends State<ReqresView> with ProjectDioMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ReqresProvider(ReqresService(service)),
        builder: (context, child) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                context.read<ThemeNotifier>().changeTema();
              },
            ),
            appBar: AppBar(
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        context
                            .read<ReqresProvider>()
                            .saveToLocale(context.read<ResourceContext>());
                      },
                      child: Icon(Icons.ac_unit))
                ],
                title: context.read<ReqresProvider>().isLoading
                    ? CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : null),
            body: Column(
              children: [
                Selector<ReqresProvider, bool>(
                    builder: (context, value, child) {
                  return value ? const Placeholder() : const Text('data');
                }, selector: (context, provider) {
                  return provider.isLoading;
                }),
                Expanded(
                  child: _resourceListView(
                      context, context.watch<ReqresProvider>().resources),
                ),
              ],
            ),
          );
        });
  }

  ListView _resourceListView(BuildContext context, List<Data> items) {
    return ListView.builder(
        itemCount: context.watch<ReqresProvider>().resources.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              color: Color(items[index].color?.colorValue ?? 0),
              child: Text(items[index].name ?? ''));
        });
  }
}
