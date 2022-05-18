part of './part_of_learn.dart';

class _PartofAppBar extends StatelessWidget with PreferredSizeWidget {
  const _PartofAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text('data'), actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.account_box_rounded),
      )
    ]);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
