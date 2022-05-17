import 'package:flutter/material.dart';
import 'package:ramona_store/responsiveness_wrap.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Ramona Store',
      debugShowCheckedModeBanner: false,
      home: ResponsivenessWrap(),
    ),
  );
}
