import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:web_mobile_appilcation/const.dart';

class responsive extends StatefulWidget {
  final Widget mobilesecreen;
  final Widget webscreen;

  responsive({super.key, required this.mobilesecreen, required this.webscreen});
  @override
  State<responsive> createState() => _responsiveState();
}

class _responsiveState extends State<responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth < 900) {
        ismobile = true;
        isweb = false;
        return widget.mobilesecreen;
      } else {
        isweb = true;
        return widget.webscreen;
      }
    });
  }
}
