import 'package:flutter/material.dart';

class ResponsivenessMediaQuery extends StatefulWidget {
  const ResponsivenessMediaQuery({Key? key}) : super(key: key);

  @override
  _ResponsivenessMediaQueryState createState() =>
      _ResponsivenessMediaQueryState();
}

class _ResponsivenessMediaQueryState extends State<ResponsivenessMediaQuery> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    final appBarHeight = AppBar().preferredSize.height;
    final widthItem = width / 3;
    final heightItem = height - statusBarHeight - appBarHeight;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade'),
      ),
      body: Row(
        children: [
          Container(
            width: widthItem,
            height: heightItem,
            color: Colors.blue,
          ),
          Container(
            width: widthItem,
            height: heightItem,
            color: Colors.green,
          ),
          Container(
            width: widthItem,
            height: heightItem,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
