import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double width;
  final double height;

  const MobileAppBar({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  PreferredSize build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(width, height),
      child: AppBar(
        title: const Text(
          'Ramona Store',
          style: TextStyle(
            fontFamily: 'Square',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(width, height);
}
