import 'package:flutter/material.dart';

class ResponsivenessLayoutBuilder extends StatefulWidget {
  const ResponsivenessLayoutBuilder({Key? key}) : super(key: key);

  @override
  _ResponsivenessLayoutBuilderState createState() =>
      _ResponsivenessLayoutBuilderState();
}

class _ResponsivenessLayoutBuilderState
    extends State<ResponsivenessLayoutBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Builder'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
        child: LayoutBuilder(
          builder: (context, constraint) {
            final width = constraint.maxWidth;
            final height = constraint.maxHeight;

            print('width: $width X height: $height');

            const smallSmartphoneWidth = 600;
            const largeSmartphoneAndTabletWidth = 960;

            if (width < smallSmartphoneWidth) {
              return const Text('Celulares');
            }
            if (width < largeSmartphoneAndTabletWidth) {
              return const Text('Celulares grandes e Tablets');
            }
            return const Text('Telas maiores');
          },
        ),
      ),
    );
  }
}
