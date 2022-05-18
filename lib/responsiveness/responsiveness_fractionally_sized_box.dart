import 'package:flutter/material.dart';

class ResponsivenessFractionallySizedBox extends StatefulWidget {
  const ResponsivenessFractionallySizedBox({Key? key}) : super(key: key);

  @override
  State<ResponsivenessFractionallySizedBox> createState() =>
      _ResponsivenessFractionallySizedBoxState();
}

class _ResponsivenessFractionallySizedBoxState
    extends State<ResponsivenessFractionallySizedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tamanhos proporcionais'),
      ),
      body: Container(
        color: Colors.orange,
        child: const FractionallySizedBox(
          widthFactor: 0.50,
          heightFactor: 0.50,
          alignment: Alignment.topLeft,
          child: Text('Tamanho proporcional'),
        ),
      ),
    );
  }
}
