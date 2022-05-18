import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class ResponsivenessText extends StatefulWidget {
  const ResponsivenessText({Key? key}) : super(key: key);

  @override
  State<ResponsivenessText> createState() => _ResponsivenessTextState();
}

class _ResponsivenessTextState extends State<ResponsivenessText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Texto responsivo'),
      ),
      body: Column(
        children: const [
          Text(
            'Audi ministers mitsubishi catalyst ingredients bored textiles, '
            'characterization mastercard websites picked assumed sync desire, bowl breathing minutes accessed suggestion.',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 50),
          AutoSizeText(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed '
            'do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
            ' Ut enim ad minim veniam, quis nostrud exercitation ullamco '
            'laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
            ' Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: TextStyle(fontSize: 30),
            maxLines: 3,
            presetFontSizes: [30, 22, 15, 10],
            // minFontSize: 10,
            // overflow: TextOverflow.ellipsis,
            // stepGranularity: 10,
          ),
        ],
      ),
    );
  }
}
