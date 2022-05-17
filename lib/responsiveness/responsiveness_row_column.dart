import 'package:flutter/material.dart';

class ResponsivenessRowColumn extends StatelessWidget {
  const ResponsivenessRowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade Linha-Coluna'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
