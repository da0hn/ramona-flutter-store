import 'package:flutter/material.dart';
import 'package:ramona_store/pages/ramona.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Ramona Store',
      debugShowCheckedModeBanner: false,
      home: Ramona(),
    ),
  );
}
