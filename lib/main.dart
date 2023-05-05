import 'package:flutter/material.dart';
import 'package:flutter_application/warna_gradient.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: WarnaGradien(
          Color.fromARGB(255, 157, 38, 177),
          Color.fromARGB(255, 152, 76, 165),
        ),
      ),
    ),
  );
}
