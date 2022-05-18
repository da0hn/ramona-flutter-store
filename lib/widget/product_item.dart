import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String description;
  final double price;
  final String image;

  const ProductItem({
    Key? key,
    required this.description,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Image.asset('assets/$image', fit: BoxFit.contain),
          ),
          Expanded(
            flex: 1,
            child: Text(description),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'R\$ $price',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
