import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sankofa_school/customcreations/progressBar.dart';

class obereswidget extends StatefulWidget {
  const obereswidget({Key? key}) : super(key: key);

  @override
  _obereswidgetState createState() => _obereswidgetState();
}

class _obereswidgetState extends State<obereswidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        height: 200,
        width: 360,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(60),
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 8,
                offset: Offset(0, 1),
              )
            ]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: GradientText(
                  'Deine Auswahl',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  colors: [
                    Color.fromRGBO(250, 139, 134, 1),
                    Color.fromRGBO(253, 156, 141, 1),
                    Color.fromRGBO(253, 161, 143, 1),
                    Color.fromRGBO(255, 171, 147, 1),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: AutoSizeText(
                  'Das Alphabet (Nsemfua)',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  minFontSize: 26,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: ProgressBar(),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: FlatButton(
                child: Container(
                  height: 35,
                  width: 80,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color.fromRGBO(250, 139, 134, 1),
                        Color.fromRGBO(253, 156, 141, 1),
                        Color.fromRGBO(253, 161, 143, 1),
                        Color.fromRGBO(255, 171, 147, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                    child: AutoSizeText(
                      'Weiter',
                      style: TextStyle(
                          color: Color(0xFFf1faee),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, QuizHome.id);
                },
              ),
            ),
          ],
        ),
      ),
    ),
  }
}
