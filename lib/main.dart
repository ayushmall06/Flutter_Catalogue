import 'package:flutter/material.dart';
import 'package:flutter_catalogue/pages/Home_Page.dart';
import 'package:flutter_catalogue/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(primarySwatch: Colors.yellow),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/home",
      routes: {
        "/":(context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login":(context) => LoginPage()
      },
    );
  }
}
