import 'package:flutter/material.dart';
import 'halaman_awal.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanAwal(),
    );
  }
}
