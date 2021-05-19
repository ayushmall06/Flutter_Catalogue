import 'package:flutter/material.dart';
import 'package:flutter_catalogue/Home_Page.dart';

void main() {
  runApp(MyApp());
  
}



class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: HomePage()
       ); 
  }
}