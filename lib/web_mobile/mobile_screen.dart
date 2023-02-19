import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:web_mobile_appilcation/auth/Signup.dart';
import 'package:web_mobile_appilcation/auth/login.dart';
import 'package:web_mobile_appilcation/widget/Input_Field.dart';

class mobile_screen extends StatefulWidget {
  const mobile_screen({super.key});

  @override
  State<mobile_screen> createState() => _mobile_screenState();
}

class _mobile_screenState extends State<mobile_screen> {
  @override
  Widget build(BuildContext context) {
    return sign_up();
  }
}
