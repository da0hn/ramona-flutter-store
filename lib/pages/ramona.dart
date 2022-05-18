import 'package:flutter/material.dart';
import 'package:ramona_store/widget/mobile_app_bar.dart';
import 'package:ramona_store/widget/web_app_bar.dart';

class Ramona extends StatefulWidget {
  const Ramona({Key? key}) : super(key: key);

  @override
  _RamonaState createState() => _RamonaState();
}

class _RamonaState extends State<Ramona> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      final width = constraint.maxWidth;
      final height = constraint.maxHeight;
      final appBarHeight = AppBar().preferredSize.height;

      return Scaffold(
        appBar: _appBar(width, appBarHeight),
        body: Container(),
      );
    });
  }

  _appBar(double width, double height) {
    return width < 600
        ? MobileAppBar(width: width, height: height)
        : WebAppBar(width: width, height: height);
  }
}
