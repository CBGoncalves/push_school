import 'package:flutter/material.dart';
import 'package:pushschool/constants/text_consts.dart';

class _PreferredAppBarSize extends Size {
  _PreferredAppBarSize(this.toolbarHeight, this.bottomHeight)
      : super.fromHeight(
            (toolbarHeight ?? kToolbarHeight) + (bottomHeight ?? 0));

  final double? toolbarHeight;
  final double? bottomHeight;
}

class TopBar extends StatefulWidget implements PreferredSizeWidget {
  final String? pageTitle;
  const TopBar({
    this.pageTitle,
    super.key,
  });
  @override
  Size get preferredSize => _PreferredAppBarSize(30, 30);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.pageTitle ?? 'Olá, Carlos',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: TextConsts.appBarTitle,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.message))
      ],
    );
  }
}
