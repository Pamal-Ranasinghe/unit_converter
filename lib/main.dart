import 'package:flutter/material.dart';
import 'package:unit_converter/HomePage.dart';

void main() {
  runApp(Convertor());
}

class Convertor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,home: HomePage());
  }


  
}
