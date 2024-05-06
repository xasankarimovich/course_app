import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget widget;
  const MyAppBar({super.key, required this.title, required this.widget});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 70,
      leading: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget),
          );
        },
        icon: const Icon(CupertinoIcons.back),
        style: IconButton.styleFrom(
          side: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
      ),
      title: Text(title),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.ellipsis),
            style: IconButton.styleFrom(
              side: BorderSide(
                color: Colors.grey.shade400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
