import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:web_mobile_appilcation/auth/Signup.dart';
import 'package:web_mobile_appilcation/const.dart';
import 'package:web_mobile_appilcation/widget/Input_Field.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  final TextEditingController _emailcontrolar = TextEditingController();
  final TextEditingController _passwordcontrolar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Login ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: SizedBox(
            width: isweb ? width / 4 : width / 1.3,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      input_Field(
                        hint: "Email",
                        controller: _emailcontrolar,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      input_Field(
                        hint: "Password",
                        controller: _passwordcontrolar,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Login")),
                      SizedBox(
                        height: 12,
                      ),
                      Column(
                        children: [
                          Text("Already Have An Account?"),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacement<void, void>(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        sign_up(),
                                  ),
                                );
                              },
                              child: Text("Sign up"))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
