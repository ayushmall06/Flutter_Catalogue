import 'package:flutter/material.dart';
import 'package:flutter_catalogue/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changedButton = false;
  String name = "";
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
                    "Welcome $name",
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
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter Password",
                              hintStyle: TextStyle(color: Colors.grey),
                              labelText: "Password"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () async {
                            setState(() {
                              changedButton = true;
                            });
                            await Future.delayed(Duration(milliseconds: 500));
                            Navigator.pushNamed(context, MyRoutes.homeRoute);
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            width: changedButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changedButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100),
                                  ),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(
                                    changedButton ? 25 : 0)),
                          ),
                        )

                        /*  ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, MyRoutes.homeRoute);
                          },
                          child: Text("Login"),
                          style:
                              TextButton.styleFrom(minimumSize: Size(150, 40)),
                        ) */
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
