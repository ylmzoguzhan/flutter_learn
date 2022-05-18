import 'package:flutter/material.dart';

class AnimatedLearn extends StatefulWidget {
  AnimatedLearn({Key? key}) : super(key: key);

  @override
  State<AnimatedLearn> createState() => _AnimatedLearnState();
}

class _AnimatedLearnState extends State<AnimatedLearn>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool _isVisible = false;
  bool _isOpacity = false;
  void changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(onPressed: () {
          changeVisible();
          controller.animateTo(1);
        }),
        body: Column(
          children: [
            ListTile(
              title: AnimatedOpacity(
                  duration: _DurationItems.durationLow,
                  opacity: _isOpacity ? 1 : 0,
                  child: Text('data')),
              trailing: IconButton(
                  onPressed: () {
                    changeOpacity();
                  },
                  icon: Icon(Icons.precision_manufacturing_rounded)),
            ),
            AnimatedDefaultTextStyle(
                child: Text('data'),
                style: (_isVisible
                        ? context.textTheme().headline1
                        : context.textTheme().subtitle1) ??
                    TextStyle(),
                duration: _DurationItems.durationLow),
            AnimatedIcon(icon: AnimatedIcons.menu_close, progress: controller)
          ],
        ));
  }
}

class _placeHolderWidget extends StatelessWidget {
  const _placeHolderWidget({
    Key? key,
    required bool isVisible,
  })  : _isVisible = isVisible,
        super(key: key);

  final bool _isVisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: Placeholder(),
      secondChild: SizedBox.shrink(),
      duration: _DurationItems.durationLow,
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
}
