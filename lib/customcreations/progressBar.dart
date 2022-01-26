import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ProgressBar extends StatefulWidget {
  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return GFProgressBar(
      percentage: 0.2,
      lineHeight: 4,
      backgroundColor: Colors.white12,
      progressBarColor: Colors.white,
      width: 30,
    );
  }
}
