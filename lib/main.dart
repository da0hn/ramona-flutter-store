import 'package:flutter/material.dart';
import 'package:ramona_store/responsiveness_layout_builder.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Ramona Store',
      debugShowCheckedModeBanner: false,
      home: ResponsivenessLayoutBuilder(),
    ),
  );
}
