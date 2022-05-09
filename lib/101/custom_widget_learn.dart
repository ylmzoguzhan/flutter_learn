import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget with ColorsUtility {
  CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
              child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CustomFoodButton(
              title: title,
              onPressed: () {},
            ),
          )),
          const SizedBox(
            height: 100,
          ),
          CustomFoodButton(title: title, onPressed: () {})
        ],
      ),
    );
  }
}

class ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
}

class CustomFoodButton extends StatelessWidget
    with ColorsUtility, PaddingUtility {
  CustomFoodButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: whiteColor, shape: const StadiumBorder()),
        onPressed: onPressed,
        child: Padding(
          padding: normalPadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: redColor, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
