import 'package:flutter/material.dart';
import 'package:flutter_catalogue/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalogue App"),
      ),
      drawer: MyDrawer(),
       body:Center(
 
       child: Container(
      child: Text("Welcome to 30days of flutter"),
    ),
    ));
  }
}