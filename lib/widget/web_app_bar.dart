import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double width;
  final double height;

  const WebAppBar({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  PreferredSize build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(width, height),
      child: AppBar(
        title: Row(
          children: [
            const Text(
              'Ramona Store',
              style: TextStyle(
                fontFamily: 'Square',
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(child: Container()),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_rounded),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                primary: Colors.white,
              ),
              child: const Text(
                'Cadastrar',
              ),
            ),
            const SizedBox(width: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.orange,
                primary: Colors.white,
              ),
              child: const Text(
                'Entrar',
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(width, height);
}
