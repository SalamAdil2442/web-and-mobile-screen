import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:web_mobile_appilcation/widget/Input_Field.dart';

import '../const.dart';
import 'login.dart';

class sign_up extends StatefulWidget {
  sign_up({super.key});

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  final TextEditingController _emailcontrolar = TextEditingController();
  final TextEditingController _passwordcontrolar = TextEditingController();
  final TextEditingController _usernamecontrolar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Sign Up",
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
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      input_Field(
                        hint: "Username",
                        controller: _usernamecontrolar,
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
                      ElevatedButton(onPressed: () {}, child: Text("Sign Up")),
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
                                        const login_screen(),
                                  ),
                                );
                              },
                              child: Text("Login"))
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
