import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/package/loading_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PackageLearn extends StatefulWidget {
  PackageLearn({Key? key}) : super(key: key);

  @override
  State<PackageLearn> createState() => _PackageLearnState();
}

class _PackageLearnState extends State<PackageLearn>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SpinKitSquareCircle(
              color: Colors.white,
              size: 50.0,
              controller: AnimationController(
                  vsync: this, duration: const Duration(milliseconds: 1200)),
            ),
            SpinKitFadingCircle(
              itemBuilder: (BuildContext context, int index) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    color: index.isEven ? Colors.red : Colors.green,
                  ),
                );
              },
            ),
            const LoadingBar(),
          ],
        ),
      ),
    );
  }
}
