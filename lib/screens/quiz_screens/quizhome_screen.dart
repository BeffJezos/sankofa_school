import 'package:sankofa_school/screens/main.dart';
import 'quizpage_screen.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class QuizHome extends StatefulWidget {
  static const String id = 'quizhome_screen';

  @override
  _QuizHomeState createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  List<String> images = [
    "assets/images/icons/alphabeticon.png",
    "assets/images/icons/greetingsicon.png",
    "assets/images/icons/shoppingicon.png",
    "assets/images/icons/coloursicon.png",
    "assets/images/icons/interrogativesicon.png",
    "assets/images/icons/conversationicon.png",
    "assets/images/icons/foodsicon.png",
    "assets/images/icons/directionsicon.png",
    "assets/images/icons/animalsicon.png",
    "assets/images/icons/aboutmeicon.png",
    "assets/images/icons/directionsicon.png",
    "assets/images/icons/weekdaysicon.png",
    "assets/images/icons/numbersicon.png",
    "assets/images/icons/timesicon.png",
  ];

  List<String> des = [
    "Ein Quiz über alle in der App behandelten Themen.",
    "Ein Quiz über die üblichen Begrüßungen.",
    "Ein Quiz über die wichtigsten Worte beim Einkaufen.",
    "Ein Quiz über die Twi-Farben.",
    "Ein Quiz über die Fragenwörter der Sprache Twi.",
    "Ein Quiz über die wichtigsten Sprachgebrauche.",
    "Ein Quiz über die Lebensmittel der Sprache Twi.",
    "Ein Quit über die wichtigsten Richtungsangaben.",
    "Ein Quiz über die Tiere der Sprache Twi.",
    "Ein Quiz über über das sich Vorstellen.",
    "EIn Quiz über die gängigen Wegweisungen.",
    "Ein Quiz über die Wochentage der Sprache Twi.",
    "Ein Quiz über die Zahlen der Sprache Twi.",
    "Ein Quiz über die Zeitangaben der Sprache Twi.",
  ];

  List<Color> colours1 = [
    Color.fromRGBO(250, 139, 134, 1),
    Color.fromRGBO(108, 127, 227, 1),
    Color.fromRGBO(252, 137, 173, 1),
  ];
  List<Color> colours2 = [
    Color.fromRGBO(253, 156, 141, 1),
    Color.fromRGBO(104, 118, 226, 1),
    Color.fromRGBO(253, 129, 168, 1),
  ];
  List<Color> colours3 = [
    Color.fromRGBO(253, 161, 143, 1),
    Color.fromRGBO(97, 105, 222, 1),
    Color.fromRGBO(255, 122, 163, 1),
  ];
  List<Color> colours4 = [
    Color.fromRGBO(255, 171, 147, 1),
    Color.fromRGBO(92, 96, 222, 1),
    Color.fromRGBO(255, 88, 141, 1),
  ];

  @override
  Widget quizcard(String langname, String image, String des, Color colours1,
      Color colours2, Color colours3, Color colours4) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            // in changelog 1 we will pass the langname name to the other widget class
            // this name will be used to open a particular JSON file
            // for a particular language
            builder: (context) => Getjson(langname),
          ));
        },
        child: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 190,
                    width: 170,
                    child: Container(
                      height: 190,
                      width: 170,
                      margin: EdgeInsets.all(4),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: SafeArea(
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(image),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: SafeArea(
                                child: AutoSizeText(
                                  langname,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  minFontSize: 16,
                                  maxFontSize: 16,
                                  maxLines: 2,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(24, 0, 16, 8),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: SafeArea(
                                child: AutoSizeText(
                                  des,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  minFontSize: 14,
                                  maxFontSize: 16,
                                  maxLines: 3,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            colours1,
                            colours2,
                            colours3,
                            colours4,
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage.id);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  AutoSizeText(
                    "Quiz",
                    minFontSize: 34,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(width: 60),
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: SizedBox(
                height: 680,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: <Widget>[
                      Row(
                        children: [
                          quizcard(
                            "Alle Themen",
                            images[0],
                            des[0],
                            colours1[0],
                            colours2[0],
                            colours3[0],
                            colours4[0],
                          ),
                          quizcard(
                            "Begrüßungen",
                            images[1],
                            des[1],
                            colours1[1],
                            colours2[1],
                            colours3[1],
                            colours4[1],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          quizcard(
                            "Einkaufen",
                            images[2],
                            des[2],
                            colours1[2],
                            colours2[2],
                            colours3[2],
                            colours4[2],
                          ),
                          quizcard(
                            "Farben",
                            images[3],
                            des[3],
                            colours1[0],
                            colours2[0],
                            colours3[0],
                            colours4[0],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          quizcard(
                            "Fragewörter",
                            images[4],
                            des[4],
                            colours1[1],
                            colours2[1],
                            colours3[1],
                            colours4[1],
                          ),
                          quizcard(
                            "Konversation",
                            images[5],
                            des[5],
                            colours1[2],
                            colours2[2],
                            colours3[2],
                            colours4[2],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          quizcard(
                            "Lebensmittel",
                            images[6],
                            des[6],
                            colours1[0],
                            colours2[0],
                            colours3[0],
                            colours4[0],
                          ),
                          quizcard(
                            "Richtungen",
                            images[7],
                            des[7],
                            colours1[1],
                            colours2[1],
                            colours3[1],
                            colours4[1],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          quizcard(
                            "Tiere",
                            images[8],
                            des[8],
                            colours1[2],
                            colours2[2],
                            colours3[2],
                            colours4[2],
                          ),
                          quizcard(
                            "Über mich",
                            images[9],
                            des[9],
                            colours1[0],
                            colours2[0],
                            colours3[0],
                            colours4[0],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          quizcard(
                            "Wegweisung",
                            images[10],
                            des[10],
                            colours1[1],
                            colours2[1],
                            colours3[1],
                            colours4[1],
                          ),
                          quizcard(
                            "Wochentage",
                            images[11],
                            des[11],
                            colours1[2],
                            colours2[2],
                            colours3[2],
                            colours4[2],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          quizcard(
                            "Zahlen",
                            images[12],
                            des[12],
                            colours1[0],
                            colours2[0],
                            colours3[0],
                            colours4[0],
                          ),
                          quizcard(
                            "Zeitangaben",
                            images[13],
                            des[13],
                            colours1[1],
                            colours2[1],
                            colours3[1],
                            colours4[1],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
