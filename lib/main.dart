import 'package:flutter/material.dart';
import 'package:web_mobile_appilcation/web_mobile/mobile_screen.dart';
import 'package:web_mobile_appilcation/web_mobile/web_mobile.dart';
import 'package:web_mobile_appilcation/web_mobile/web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: responsive(
        mobilesecreen: mobile_screen(),
        webscreen: web_screen(),
      ),
    );
  }
}
