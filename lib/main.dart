import 'package:flutter/material.dart';
import 'package:flutter_catalogue/pages/Home_Page.dart';
import 'package:flutter_catalogue/pages/login_page.dart';
import 'package:flutter_catalogue/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system, 
      theme: ThemeData(primarySwatch: Colors.blue,
       fontFamily: GoogleFonts.lato().fontFamily),
       debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage()
      },
      
    );
  }
}