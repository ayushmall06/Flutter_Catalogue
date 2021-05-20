import 'package:flutter/material.dart';
import 'package:flutter_catalogue/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changedButton = false;
  String name = "";

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState.validate())
    {
      setState(() {
      changedButton = true;
    });
    await Future.delayed(Duration(milliseconds: 1000));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changedButton = false;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Material(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/login_image1.png",
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
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter Username",
                                labelText: "UserName"),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Username cannot be empty";
                              }
                              return null;
                            },
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
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Password cannot be empty";
                              } else if (value.length < 6) {
                                return "Password length should be at least 6";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Material(
                              color: changedButton ? Colors.green : Colors.blue,
                              borderRadius:
                                  BorderRadius.circular(changedButton ? 25 : 8),
                              child: InkWell(
                                  splashColor: Colors.green,
                                  onTap: () => moveToHome(context),
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
                                  )))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
