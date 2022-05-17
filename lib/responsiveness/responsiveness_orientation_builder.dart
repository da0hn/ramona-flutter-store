import 'package:flutter/material.dart';

class ResponsivenessOrientationBuilder extends StatefulWidget {
  const ResponsivenessOrientationBuilder({Key? key}) : super(key: key);

  @override
  _ResponsivenessOrientationBuilderState createState() =>
      _ResponsivenessOrientationBuilderState();
}

class _ResponsivenessOrientationBuilderState
    extends State<ResponsivenessOrientationBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Orientação'),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
              children: [
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.purple,
                ),
                Container(
                  color: Colors.amberAccent,
                ),
                Container(
                  color: Colors.cyan,
                ),
              ],
            );
          },
        ));
  }
}
