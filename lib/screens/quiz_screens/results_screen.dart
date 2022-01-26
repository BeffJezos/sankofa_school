import 'package:sankofa_school/screens/quiz_screens/quizhome_screen.dart';
import 'package:flutter/material.dart';

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
  late String image;

  @override
  void initState() {
    if (marks < 50) {
      image = images[2];
      message = "Strenge dich beim nächsten Mal mehr an!\n" +
          "Dein Ergebnis: $marks Punkte!";
    } else if (marks < 70) {
      image = images[1];
      message = "Das war nicht schlecht, aber du kannst es besser!\n" +
          "Dein Ergebnis: $marks Punkte!";
    } else {
      image = images[0];
      message =
          "Du hast dich gut geschlagen!\n" + "Dein Ergebnis: $marks Punkte!";
    }
    super.initState();
  }

  int marks;

  _ResultpageState(this.marks);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ergebnis",
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Material(
              elevation: 10.0,
              child: Container(
                child: Expanded(
                  child: Column(
                    children: <Widget>[
                      Material(
                        child: Container(
                          color: Color.fromRGBO(255, 87, 87, 1),
                          width: 400.0,
                          height: 380.0,
                          child: ClipRect(
                            child: Image(
                              image: AssetImage(
                                image,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 15.0,
                          ),
                          child: Center(
                            child: Text(
                              message,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: "Roboto",
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => QuizHome(),
                    ));
                  },
                  child: Text(
                    "Weiter",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto",
                      fontSize: 16.0,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  borderSide: BorderSide(
                    width: 3.0,
                    color: Color.fromRGBO(255, 116, 112, 1),
                  ),
                  splashColor: Color.fromRGBO(255, 116, 112, 1),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
