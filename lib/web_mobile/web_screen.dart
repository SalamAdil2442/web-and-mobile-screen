import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:web_mobile_appilcation/auth/Signup.dart';
import 'package:web_mobile_appilcation/auth/login.dart';

class web_screen extends StatefulWidget {
  const web_screen({super.key});

  @override
  State<web_screen> createState() => _web_screenState();
}

class _web_screenState extends State<web_screen> {
  @override
  Widget build(BuildContext context) {
    return sign_up();
  }
}
