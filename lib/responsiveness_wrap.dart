import 'package:flutter/material.dart';

class ResponsivenessWrap extends StatelessWidget {
  const ResponsivenessWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = 200;
    double height = 100;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade com Wrap'),
      ),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 15,
          spacing: 15,
          children: [
            Container(
              width: width,
              height: height,
              color: Colors.orange,
            ),
            Container(
              width: width,
              height: height,
              color: Colors.blue,
            ),
            Container(
              width: width,
              height: height,
              color: Colors.green,
            ),
            Container(
              width: width,
              height: height,
              color: Colors.greenAccent,
            ),
            Container(
              width: width,
              height: height,
              color: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
