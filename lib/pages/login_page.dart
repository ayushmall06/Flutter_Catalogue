import 'package:flutter/material.dart';
import 'package:flutter_catalogue/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Material(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/login_image.png",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 30),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter Username",
                              hintStyle: TextStyle(color: Colors.grey),
                              labelText: "UserName"),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter Password",
                              hintStyle: TextStyle(color: Colors.grey),
                              labelText: "Password"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, MyRoutes.homeRoute);
                          },
                          child: Text("Login"),
                          style:
                              TextButton.styleFrom(minimumSize: Size(150, 40)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
