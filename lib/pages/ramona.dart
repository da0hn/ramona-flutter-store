import 'package:flutter/material.dart';
import 'package:ramona_store/widget/mobile_app_bar.dart';
import 'package:ramona_store/widget/product_item.dart';
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
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: _crossAxisCount(width),
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: const [
              ProductItem(
                description: 'Microondas',
                price: 5500.00,
                image: 'p1.jpg',
              ),
              ProductItem(
                description: 'Smartphone 1',
                price: 2500.00,
                image: 'p3.jpg',
              ),
              ProductItem(
                description: 'Smartphone 2',
                price: 1500.00,
                image: 'p4.jpg',
              ),
              ProductItem(
                description: 'Pneu',
                price: 350.00,
                image: 'p2.jpg',
              ),
              ProductItem(
                description: 'Smartphone 1',
                price: 2500.00,
                image: 'p3.jpg',
              ),
              ProductItem(
                description: 'Smartphone 2',
                price: 1500.00,
                image: 'p4.jpg',
              ),
              ProductItem(
                description: 'Smartphone 3',
                price: 1200.00,
                image: 'p5.jpg',
              ),
              ProductItem(
                description: 'Smartphone 4',
                price: 800.00,
                image: 'p6.jpg',
              ),
              ProductItem(
                description: 'Smartphone 1',
                price: 2500.00,
                image: 'p3.jpg',
              ),
              ProductItem(
                description: 'Smartphone 2',
                price: 1500.00,
                image: 'p4.jpg',
              ),
            ],
          ),
        ),
      );
    });
  }

  _appBar(double width, double height) {
    return width < 600
        ? MobileAppBar(width: width, height: height)
        : WebAppBar(width: width, height: height);
  }

  _crossAxisCount(double width) {
    if (width <= 412) return 1;
    if (width <= 768) return 2;
    if (width <= 1180) return 4;
    return 6;
  }
}
