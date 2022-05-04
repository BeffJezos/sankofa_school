import 'package:flutter/cupertino.dart';
import 'package:sankofa_school/screens/quiz_screens/quizhome_screen.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Resultpage extends StatefulWidget {
  int marks;

  Resultpage({
    required this.marks,
  });

  @override
  _ResultpageState createState() => _ResultpageState(marks);
}

class _ResultpageState extends State<Resultpage> {
  List<String> images = [
    "assets/images/SankofaNeuesBild4.jfif",
    "assets/images/SankofaNeuesBild2.jfif",
    "assets/images/SankofaNeuesBild6.jfif",
  ];

  late String message;
  late String message2;
  late String image;


  @override
  void initState() {
    if (marks < 50) {
      image = images[2];
      message = "Strenge dich beim nächsten Mal mehr an\n";
      message2 = "$marks Punkte";
    } else if (marks < 70) {
      image = images[1];
      message = "Das war nicht schlecht, aber du kannst es besser\n";
      message2 = "$marks Punkte";
    } else {
      image = images[0];
      message = "Du hast dich gut geschlagen\n";
      message2 = "$marks Punkte";
    }
    super.initState();
  }

  int marks;

  _ResultpageState(this.marks);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 60,
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: SafeArea(
                  child: Container(
                    height: 260,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color.fromRGBO(250, 139, 134, 1),
                        width: 5,
                      ),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 200,
            width: 360,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: AutoSizeText(
                  '$message',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                  minFontSize: 30,
                  maxFontSize: 32,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            width: 360,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: AutoSizeText(
                  '$message2',
                  style: TextStyle(
                      color: Color.fromRGBO(108, 127, 227, 1), fontWeight: FontWeight.w500),
                  minFontSize: 38,
                  maxFontSize: 40,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: FlatButton(
              child: Container(
                height: 50,
                width: 140,
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
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Center(
                  child: AutoSizeText(
                    'Weiter',
                    style: TextStyle(
                        color: Color(0xFFf1faee), fontWeight: FontWeight.w600),
                    minFontSize: 28,
                    maxFontSize: 30,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, QuizHome.id);
              },
            ),
          )
        ],
      ),
    );
  }
}
